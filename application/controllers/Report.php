<?php
error_reporting(0);
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends CI_Controller {

	function __construct(){
        parent::__construct();
        $this->load->helper(array('form', 'url'));
        $this->load->library('session');
        date_default_timezone_set("Asia/Manila");
        $this->load->model('super_model');
        function arrayToObject($array){
            if(!is_array($array)) { return $array; }
            $object = new stdClass();
            if (is_array($array) && count($array) > 0) {
                foreach ($array as $name=>$value) {
                    $name = strtolower(trim($name));
                    if (!empty($name)) { $object->$name = arrayToObject($value); }
                }
                return $object;
            } 
            else {
                return false;
            }
        }
    }

    public function fullescape($in) { 
      $out = ''; 
      for ($i=0;$i<strlen($in);$i++) 
      { 
        $hex = dechex(ord($in[$i])); 
        if ($hex=='') 
           $out = $out.urlencode($in[$i]); 
        else 
           $out = $out .'%'.((strlen($hex)==1) ? ('0'.strtoupper($hex)):(strtoupper($hex))); 
      } 
      $out = str_replace('+','%20',$out); 
      $out = str_replace('_','%5F',$out); 
      $out = str_replace('.','%2E',$out); 
      $out = str_replace('-','%2D',$out); 
      return $out; 
    }



    public function inv_rep(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $data['subcat1']=$this->super_model->select_all_order_by("subcategory","subcat_name","ASC");
        $subcat=$this->uri->segment(3);
        $data['subcatid']=$subcat;
        $sql="";
        $filter = " ";
        if($subcat!='null'){
            $sql.= " et_head.subcat_id = '$subcat' AND";
            $subcat12 = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= "Sub Category - ".$subcat12.", ";
        }

        $query=substr($sql,0,-3);
        $filter=substr($filter, 0, -2);
        $data['filts'] = $filter;
        $count=$this->super_model->select_join_where("et_head", "subcategory", $query, "subcat_id");
        if($count!=0){
            foreach($this->super_model->select_join_where("et_head", "subcategory", $query, "subcat_id") AS $ss){
                $count = $this->super_model->count_rows_where('et_head','subcat_id',$ss->subcat_id);
                $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $ss->subcat_id);
                $data['sub'][]= array(
                    'subcat_id'=>$ss->subcat_id,
                    'subcat'=>$subcat,
                    'count'=>$count
                );
            }
        }

        if(empty($subcat)){
            $row=$this->super_model->count_rows("subcategory");
            if($row!=0){
                foreach($this->super_model->select_all_order_by("subcategory","subcat_name","ASC") AS $ss){
                    $count = $this->super_model->count_rows_where('et_head','subcat_id',$ss->subcat_id);
                    $data['sub'][]= array(
                        'subcat_id'=>$ss->subcat_id,
                        'subcat'=>$ss->subcat_name,
                        'count'=>$count
                    );
                }
            }else {
                $data['sub'] = array();
            }
        }
        $this->load->view('report/inv_rep',$data);
        $this->load->view('template/scripts');
    }

    public function generateSubcat(){
        if(!empty($this->input->post('subcat'))){
            $subcat = $this->input->post('subcat');
        } else {
            $subcat = "null";
        }

        ?>
       <script>
        window.location.href ='<?php echo base_url(); ?>index.php/report/inv_rep/<?php echo $subcat; ?>'</script> <?php
    }

    public function inv_rep_det(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $subcat=$this->uri->segment(3);
        $row = $this->super_model->count_rows_where("et_head","subcat_id",$subcat);
        $data['subcat_name'] = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);                     
        $data['count'] = $this->super_model->count_rows_where('et_head','subcat_id',$subcat);
        if($row!=0){
            foreach($this->super_model->select_row_where("et_head","subcat_id",$subcat) AS $t){
                $employee = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $t->accountability_id);                     
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $t->et_id);                     
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $t->et_id);                     
                $data['item'][]=array(
                    'item'=>$t->et_desc,
                    'damaged'=>$damaged,
                    'borrowed'=>$borrowed,
                    'accountability'=>$employee,
                    'accountability_id'=>$t->accountability_id,
                    'qty'=>$t->qty,
                );
            }
        }else {
            $data['item']=array();
        }
        $this->load->view('report/inv_rep_det',$data);
        $this->load->view('template/scripts');
    }

    public function report_main(){  
    	$this->load->view('template/header');
    	$this->load->view('template/sidebar');
        $row=$this->super_model->count_custom_where("et_head", "accountability_id!=0");
        $row_avail=$this->super_model->count_custom_where("et_head", "accountability_id=0");
        /*foreach($this->super_model->select_custom_where("et_head", "accountability_id=0") AS $check){
            $data['available_qty']=$this->super_model->count_custom_where("et_details", "damage='0'");           
        }*/
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        /*$data['available_qty']=$this->super_model->select_sum("et_head", "qty", "accountability_id", "0");*/
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');

        /*$from=$this->uri->segment(3);
        $data['from']=$this->uri->segment(3);
        $to=$this->uri->segment(4);
        $data['to']=$this->uri->segment(4);
        $category=$this->uri->segment(5);
        $data['category']=$this->uri->segment(5);
        $subcat=$this->uri->segment(6);
        $data['subcat']=$this->uri->segment(6);
        $department=str_replace("%20"," ",$this->uri->segment(7));
        $data['department']=str_replace("%20"," ",$this->uri->segment(7));
        $item=str_replace("%20"," ",$this->uri->segment(8));
        $data['item']=str_replace("%20"," ",$this->uri->segment(8));
        $brand=str_replace("%20"," ",$this->uri->segment(9));
        $data['brand']=str_replace("%20"," ",$this->uri->segment(9));
        $model=str_replace("%20"," ",$this->uri->segment(10));
        $data['model']=str_replace("%20"," ",$this->uri->segment(10));
        $type=str_replace("%20"," ",$this->uri->segment(11));
        $data['type']=str_replace("%20"," ",$this->uri->segment(11));
        $serial=str_replace("%20"," ",$this->uri->segment(12));
        $data['serial']=str_replace("%20"," ",$this->uri->segment(12));
        $damage=$this->uri->segment(13);
        $data['damage']=$this->uri->segment(13);
        $sql="";
        $filter = " ";

        if($from!='null' && $to!='null'){
           $sql.= " et_details.acquisition_date BETWEEN '$from' AND '$to' AND";
           $filter .= "Acquisition Date - ".$from.' <strong>To</strong> '.$to.", ";
        }

        if($category!='null'){
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= "Category - ".$cat.", ";
        }

        if($subcat!='null'){
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= "Sub Category - ".$subcat.", ";
        }

        if($department!='null'){
            $sql.=" et_head.department LIKE '%$department%' AND";
            $filter .= "Department - ".$department.", ";
        }

        if($item!='null'){
            $sql.=" et_head.et_desc LIKE '%$item%' AND";

            $filter .= "Item Desc - ".$item.", ";
        }

        if($brand!='null'){
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= "Brand - ".$brand.", ";
        }

        if($model!='null'){
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= "Model - ".$model.", ";
        }

        if($type!='null'){
            $sql.=" et_details.type LIKE '%$type%' AND";
            $filter .= "Type - ".$type.", ";
        }

        if($serial!='null'){
            $sql.=" et_details.serial_no LIKE '%$serial%' AND";
            $filter .= "Serial No. - ".$serial.", ";
        }

        if($damage!='null'){
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= "Damage Items, ";
        }
        $array = array($from,$to);
        $query=substr($sql, 0, -3);
        $filter=substr($filter, 0, -2);
        $data['filt'] = $filter;
        $count=$this->super_model->select_join_where("et_head", "et_details", $query, "et_id"); 
        if($count!=0){
            foreach ($this->super_model->select_join_where("et_head", "et_details", $query, "et_id") AS $et){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $asset_control_no =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);
                $damage =$this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $ed_id =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $et->et_id);
                $empid =$this->super_model->select_column_where("employees", "employee_id", "employee_id", $et->accountability_id);
                $date_issued =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $et->et_id);
                $data['main'][] = array(
                    'et_id'=>$et->et_id,
                    'ed_id'=>$ed_id,
                    'cat'=>$category,
                    'subcat'=>$subcat,
                    'department'=>$et->department,
                    'unit'=>$unit,
                    'damage'=>$damage,
                    'acquisition_date'=>$acquisition_date,
                    'et_desc'=>$et->et_desc,
                    'qty'=>$et->qty,
                    'accountability'=>$accountability,
                    'empid'=>$empid
                );
            }
            foreach($this->super_model->select_all_order_by("employees", "employee_name", "ASC") AS $emp){
                $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id'");
                $data['employees'][] = array(
                    'employee_id'=>$emp->employee_id,
                    'employee'=>$emp->employee_name,
                    'count'=>$count
                );
            }
        }

        if($from!='null' && $to!='null' && $category!='null' && $subcat!='null' && $department!='null' && $item!='null' && $brand!='null' && $model!='null' && $type!='null' && $serial!='null' && $damage!='null'){*/
            if($row!=0){
                foreach($this->super_model->select_custom_where('et_head', 'accountability_id!=0') AS $et){
                    $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                    $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                    $empid =$this->super_model->select_column_where("employees", "employee_id", "employee_id", $et->accountability_id);
                    $department =$et->department;
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                    $ed_id =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $et->et_id);
                    $data['main'][] = array(
                        'et_id'=>$et->et_id,
                        'ed_id'=>$ed_id,
                        'cat'=>$category,
                        'subcat'=>$subcat,
                        'unit'=>$unit,
                        'department'=>$department,
                        'et_desc'=>$et->et_desc,
                        'qty'=>$et->qty,
                        'accountability'=>$accountability,
                        'empid'=>$empid,
                    );
                }
                foreach($this->super_model->select_all_order_by("employees", "employee_name", "ASC") AS $emp){
                    $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id'");
                    $data['employees'][] = array(
                        'employee_id'=>$emp->employee_id,
                        'employee'=>$emp->employee_name,
                        'count'=>$count
                    );
                }
            }else {
                $data['main'] = array();
            }
        //}
        $this->load->view('report/report_main',$data);
        $this->load->view('template/scripts');
    }

    public function report_print(){  
        $this->load->view('template/header_report');
        $from=$this->uri->segment(3);
        $to=$this->uri->segment(4);
        $category=$this->uri->segment(5);
        $subcat=$this->uri->segment(6);
        $department=str_replace("%20"," ",$this->uri->segment(7));
        $item=str_replace("%20"," ",$this->uri->segment(8));
        $brand=str_replace("%20"," ",$this->uri->segment(9));
        $model=str_replace("%20"," ",$this->uri->segment(10));
        $type=str_replace("%20"," ",$this->uri->segment(11));
        $serial=str_replace("%20"," ",$this->uri->segment(12));
        $damage=$this->uri->segment(13);
        $sql="";
        $filter = " ";

        if($from!='null' && $to!='null'){
           $sql.= " et_details.acquisition_date BETWEEN '$from' AND '$to' AND";
           $filter .= "Acquisition Date - ".$from.' <strong>To</strong> '.$to.", ";
        }

        if($category!='null'){
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= "Category - ".$cat.", ";
        }

        if($subcat!='null'){
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= "Sub Category - ".$subcat.", ";
        }

        if($department!='null'){
            $sql.=" et_head.department LIKE '%$department%' AND";
            $filter .= "Department - ".$department.", ";
        }

        if($item!='null'){
            $sql.=" et_head.et_desc LIKE '%$item%' AND";

            $filter .= "Item Desc - ".$item.", ";
        }

        if($brand!='null'){
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= "Brand - ".$brand.", ";
        }

        if($model!='null'){
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= "Model - ".$model.", ";
        }

        if($type!='null'){
            $sql.=" et_details.type LIKE '%$type%' AND";
            $filter .= "Type - ".$type.", ";
        }

        if($serial!='null'){
            $sql.=" et_details.serial_no LIKE '%$serial%' AND";
            $filter .= "Serial No. - ".$serial.", ";
        }

        if($damage!='null'){
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= "Damage Items, ";
        }
        $array = array($from,$to);
        $query=substr($sql, 0, -3);

        if($from!='' && $to!='' && $category!='' && $subcat!='' && $department!='' && $item!='' && $brand!='' && $model!='' && $type!='' && $serial!='' && $damage!=''){
            foreach ($this->super_model->select_join_where("et_head", "et_details", $query, "et_id") AS $et){
                $data['user_id'] =$this->super_model->select_column_where("users", "fullname", "user_id", $et->user_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $empid =$this->super_model->select_column_where("employees", "employee_id", "employee_id", $et->accountability_id);
                $department =$et->department;
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $asset_control_no =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);
                $date_issued =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $et->et_id);
                $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $et->et_id);
                $currency_id =$this->super_model->select_column_where("et_details", "currency_id", "et_id", $et->et_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $currency_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $data['report'][]=array(
                    'item'=>$et->et_desc,
                    'qty'=>$et->qty,
                    'unit'=>$unit,
                    'accountability'=>$accountability,
                    'department'=>$department,
                    'category'=>$category,
                    'subcat'=>$subcat,
                    'asset_control_no'=>$asset_control_no,
                    'acquisition_date'=>$acquisition_date,
                    'date_issued'=>$date_issued,
                    'unit_price'=>$unit_price,
                    'currency'=>$currency,
                    'brand'=>$brand,
                    'remarks'=>$remarks,
                    'total'=>$total,
                    'serial_no'=>$serial_no,
                    'model'=>$model,
                    'employee'=>$employee,
                    'borrowed'=>$borrowed,
                    'damaged'=>$damaged,
                );
            }
        }else {
            foreach($this->super_model->select_custom_where('et_head', 'accountability_id!=0') AS $et){
                $data['user_id'] =$this->super_model->select_column_where("users", "fullname", "user_id", $et->user_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $empid =$this->super_model->select_column_where("employees", "employee_id", "employee_id", $et->accountability_id);
                $department =$et->department;
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $asset_control_no =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);
                $date_issued =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $et->et_id);
                $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $et->et_id);
                /*$currency =$this->super_model->select_column_where("et_details", "currency", "et_id", $et->et_id);*/
                $currency_id =$this->super_model->select_column_where("et_details", "currency_id", "et_id", $et->et_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $currency_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $data['report'][]=array(
                    'item'=>$et->et_desc,
                    'qty'=>$et->qty,
                    'unit'=>$unit,
                    'accountability'=>$accountability,
                    'accountability_id'=>$et->accountability_id,
                    'department'=>$department,
                    'category'=>$category,
                    'subcat'=>$subcat,
                    'asset_control_no'=>$asset_control_no,
                    'acquisition_date'=>$acquisition_date,
                    'date_issued'=>$date_issued,
                    'unit_price'=>$unit_price,
                    'currency'=>$currency,
                    'brand'=>$brand,
                    'remarks'=>$remarks,
                    'total'=>$total,
                    'serial_no'=>$serial_no,
                    'model'=>$model,
                    'employee'=>$employee,
                    'borrowed'=>$borrowed,
                    'damaged'=>$damaged,
                );
            }
        }
        $this->load->view('report/report_print',$data);
        $this->load->view('template/scripts');
    }

    public function edit_encode(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar'); 
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);  
        $data['edid']=$this->uri->segment(4);
        $edid=$this->uri->segment(4); 
        $data['qty'] = $this->super_model->select_column_where("et_head", "qty", "et_id", $id);
        $data['currency'] = $this->super_model->select_all_order_by('currency', 'currency_name', 'ASC');
        $x=1;
        foreach($this->super_model->select_row_where("et_head","et_id",$id) AS $nxt){
            $category = $this->super_model->select_column_where("category", "category_name", "category_id", $nxt->category_id);
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $nxt->subcat_id);
            $employee_name = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $nxt->accountability_id);
            $department = $this->super_model->select_column_where("employees", "department", "employee_id", $nxt->accountability_id);
            $unit = $this->super_model->select_column_where("unit", "unit_name", "unit_id", $nxt->unit_id);
            $subcat_prefix= $this->super_model->select_column_where('subcategory', 'subcat_prefix', 'subcat_id', $nxt->subcat_id);
            $rows=$this->super_model->count_custom_where("asset_series","subcat_prefix = '$subcat_prefix'");
            if(empty($rows)){
                $next = '1001';
                $asset_no= $subcat_prefix."-".$next;
            } else {
                $series = $this->super_model->get_max_where("asset_series", "series","subcat_prefix = '$subcat_prefix'");
                $next=$series+1;
                $asset_no = $subcat_prefix."-".$next;
            }

            $data['prefix'] = $subcat_prefix;
            $data['asset_no'] = $next;

            $data['head'][] = array(
                'et_id'=>$nxt->et_id,
                'item'=>$nxt->et_desc,
                'cat'=>$category,
                'subcat'=>$subcat,
                'asset_no'=>$asset_no,
                'unit'=>$unit,
                'accountability'=>$employee_name,
                'department'=>$department
            );

            foreach($this->super_model->select_row_where('et_details','et_id',$nxt->et_id) AS $det){
                $data['details'][] = array(
                    'et_id'=>$det->et_id,
                    'ed_id'=>$det->ed_id,
                    'date'=>$det->acquisition_date,
                    'date_issued'=>$det->date_issued,
                    'serial'=>$det->serial_no,
                    'brand'=>$det->brand,
                    'model'=>$det->model,
                    'type'=>$det->type,
                    'price'=>$det->unit_price,
                    'currency'=>$det->currency_id,
                    'acquired_by'=>$det->acquired_by,
                    'remarks'=>$det->remarks,
                    'picture1'=>$det->picture1,
                    'picture2'=>$det->picture2,
                    'picture3'=>$det->picture3,
                );
            }
        }
        $this->load->view('report/edit_encode',$data);
        $this->load->view('template/scripts_report');
    }

    public function update_encode(){
        $id = $this->input->post('et_id');
        $qty = $this->super_model->select_column_where("et_head", "qty", "et_id", $id);
        /*$serial = array();*/
        for($x=0;$x<$qty;$x++){
            $edid = $this->input->post('ed_id['.$x.']');
            $serial = $this->input->post('sn['.$x.']');
            /*$itemname=$test;*/
            $error_ext=0;
            $dest= realpath(APPPATH . '../uploads/');
            //$count = count($_FILES['pic']['name']);
           // $z=1;
           // for($y=0;$y<$count;$y++){
                if(!empty($_FILES['pic1']['name'][$x])){
                     $img1= basename($_FILES['pic1']['name'][$x]);
                     $img1=explode('.',$img1);
                     $ext1=$img1[1];
                    
                    if($ext1=='php' || ($ext1!='png' && $ext1 != 'jpg' && $ext1!='jpeg')){
                        $error_ext++;
                    } else {
                        $filename1=$serial.'-1.'.$ext1;
                        move_uploaded_file($_FILES['pic1']['tmp_name'][$x], $dest.'\/'.$filename1);
                        $data_pic1 = array(
                            'picture1'=>$filename1
                        );
                        $this->super_model->update_where("et_details", $data_pic1, "ed_id", $edid);
                    }
                } 
            
            
                if(!empty($_FILES['pic2']['name'][$x])){
                     $img2= basename($_FILES['pic2']['name'][$x]);
                     $img2=explode('.',$img2);
                     $ext2=$img2[1];
                     
                    if($ext2=='php' || ($ext2!='png' && $ext2 != 'jpg' && $ext2!='jpeg')){
                        $error_ext++;
                    } else {
                        $filename2=$serial.'-2.'.$ext2;
                        move_uploaded_file($_FILES["pic2"]['tmp_name'][$x], $dest.'\/'.$filename2);
                        $data_pic2 = array(
                            'picture2'=>$filename2
                        );
                        $this->super_model->update_where("et_details", $data_pic2, "ed_id", $edid);
                    }
                }

                if(!empty($_FILES['pic3']['name'][$x])){
                     $img3= basename($_FILES['pic3']['name'][$x]);
                     $img3=explode('.',$img3);
                     $ext3=$img3[1];
                    
                    if($ext3=='php' || ($ext3!='png' && $ext3 != 'jpg' && $ext3!='jpeg')){
                        $error_ext++;
                    } else {
                        $filename3=$serial.'-3.'.$ext3;
                        move_uploaded_file($_FILES["pic3"]['tmp_name'][$x], $dest.'\/'.$filename3);
                        $data_pic3 = array(
                            'picture3'=>$filename3
                        );
                        $this->super_model->update_where("et_details", $data_pic3, "ed_id", $edid);
                    }
                }

            
            $data = array(
                'et_id'=>$this->input->post('et_id'),
                'acquisition_date'=>$this->input->post('acq_date['.$x.']'),
                'date_issued'=>$this->input->post('date_issued['.$x.']'),
                'serial_no'=>$this->input->post('sn['.$x.']'),
                'brand'=>$this->input->post('brand['.$x.']'),
                'model'=>$this->input->post('model['.$x.']'),
                'type'=>$this->input->post('type['.$x.']'),
                'unit_price'=>$this->input->post('price['.$x.']'),
                'acquired_by'=>$this->input->post('acquired_by['.$x.']'),
                'remarks'=>$this->input->post('remarks['.$x.']'),
                'currency_id'=>$this->input->post('cur['.$x.']'),
            );
        
            if($this->super_model->update_where("et_details", $data, "ed_id", $edid)){
                /*$assetdetails=explode("-", $this->input->post('acn['.$x.']'));
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
                $series = $assetdetails[2];
                $asset_data= array(
                    'subcat_prefix'=>$subcat_prefix,
                    'series'=>$series
                );
                $this->super_model->insert_into("asset_series", $asset_data);*/

                echo "<script>alert('Equipment/Tool successfully Updated!'); 
                    window.location ='".base_url()."index.php/report/report_main'; </script>";
            }
        }
    }

    public function report_main_hist(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        /*foreach($this->super_model->select_custom_where("et_head", "accountability_id=0") AS $check){
            $data['available_qty']=$this->super_model->count_custom_where("et_details", "damage='0'");           
        }*/
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        /*$data['available_qty']=$this->super_model->select_sum("et_head", "qty", "accountability_id", "0");*/
        $row=$this->super_model->count_rows("et_head");
        if($row!=0){
            foreach($this->super_model->select_all_order_by('et_head', 'et_desc', 'ASC') AS $itm){
                $data['item'][] = array(
                    'et_id'=>$itm->et_id,
                    'item'=>$itm->et_desc
                );
                foreach($this->super_model->select_row_where('et_details', 'et_id',$itm->et_id) AS $det){
                    $data['details'][] = array(
                        'et_id'=>$det->et_id,
                        'ed_id'=>$det->ed_id,
                        'brand'=>$det->brand,
                        'model'=>$det->model,
                        'serial'=>$det->serial_no
                    );
                }
            }
        } else {
            $data['item']=array();
        }
        $this->load->view('report/report_main_hist',$data);
        $this->load->view('template/scripts');
    }

    public function history_view(){  
        $id=$this->uri->segment(3);
        $this->load->view('template/header');
        $this->load->view('template/sidebar');   
        foreach($this->super_model->select_row_where('et_details', 'ed_id', $id) AS $cur){
            $data['item'] =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $cur->et_id);
            $data['brand'] =$this->super_model->select_column_where("et_details", "brand", "ed_id", $cur->ed_id);
            $data['model'] =$this->super_model->select_column_where("et_details", "model", "ed_id", $cur->ed_id);
            $data['sn'] =$this->super_model->select_column_where("et_details", "serial_no", "ed_id", $cur->ed_id);
            $data['damage'] =$this->super_model->select_column_where("et_details", "damage", "ed_id", $cur->ed_id);
            $date_issued =$this->super_model->select_column_where("et_details", "date_issued", "ed_id", $cur->ed_id);
            foreach($this->super_model->select_row_where('et_head', 'et_id', $cur->et_id) AS $head){
                //$qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $head->et_id);
                $qty=1;
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $head->accountability_id);
                $data['ids'] =$head->accountability_id;
                $ids =$head->accountability_id;
            }
            $data['current'][] = array(
                "id"=>$ids,
                "employee"=>$employee,
                "date_issued"=>$date_issued,
                "qty"=>$qty
            );
        }

        $row_return=$this->super_model->count_rows_where("return_details", "ed_id",$id);
        if($row_return!=0){
            /*foreach($this->super_model->custom_query("SELECT rh.accountability_id, rh.return_date, rh.received_by, rd.et_id FROM return_head rh INNER JOIN return_details rd ON rd.return_id = rh.return_id WHERE rd.ed_id = '$id' GROUP BY rd.return_id") AS $ret){*/
            foreach($this->super_model->select_row_where('return_details', 'ed_id', $id) AS $d){
           /* foreach($this->super_model->select_all('return_head') AS $ret){*/
                /*foreach($this->super_model->select_row_where('return_details', 'return_id', $ret->return_id) AS $d){
                    $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $d->et_id);
                }*/
                $row_return=$this->super_model->count_rows_where("return_details", "return_id",$d->return_id);
                if($row_return!=0){
                    foreach($this->super_model->select_row_where('return_head', 'return_id', $d->return_id) AS $ret){
                        $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ret->accountability_id);
                        $received =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ret->received_by);
                    }
                    $data['head'][] = array(
                        "return_id"=>$ret->return_id,
                        "employee"=>$employee,
                        "received"=>$received,
                        "return_date"=>$ret->return_date,
                        "qty"=>1,
                    );
                }else {
                    $data['head']=array();
                }
            //}
            }
            
        } else {
            $data['head']=array();
        }

        $row_borrow=$this->super_model->count_rows_where("borrow_details", "ed_id",$id);
        if($row_borrow!=0){
            foreach($this->super_model->select_row_where('borrow_details', 'ed_id', $id) AS $d){
                $returned_by =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $d->returned_by);
                $row_borrow=$this->super_model->count_rows_where("borrow_details", "bh_id",$d->bh_id);
                if($row_borrow!=0){
                    foreach($this->super_model->select_row_where('borrow_head', 'bh_id', $d->bh_id) AS $ret){
                        $borrowed_by =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ret->borrowed_by);
                        $borrowed_date =$ret->borrowed_date;
                    }
                        $data['borrow'][] = array(
                            "bh_id"=>$ret->bh_id,
                            "borrowed_by"=>$borrowed_by,
                            "return_date"=>$d->returned_date,
                            "borrowed_date"=>$borrowed_date,
                            "returned_by"=>$returned_by,
                            "qty"=>1,
                        );
                    
                }else {
                    $data['borrow']=array();
                }
            //}
            }
            
        } else {
            $data['borrow']=array();
        }

        $row_repair=$this->super_model->count_rows_where("repair_details", "ed_id",$id);
        if($row_repair!=0){
            foreach($this->super_model->select_row_where('repair_details', 'ed_id', $id) AS $d){
                $receive_by =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $d->received_by);
                $row_repair=$this->super_model->count_rows_where("repair_details", "ed_id",$d->ed_id);
                if($row_repair!=0){
                    /*foreach($this->super_model->select_row_where('et_details', 'ed_id', $d->ed_id) AS $ret){
                        $borrowed_by =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ret->borrowed_by);
                        $borrowed_date =$ret->borrowed_date;
                    }*/
                        $data['repair'][] = array(
                            "repair_id"=>$d->repair_id,
                            "receive_by"=>$receive_by,
                            "repair_date"=>$d->repair_date,
                            "qty"=>1,
                        );
                    
                }else {
                    $data['repair']=array();
                }
            //}
            }
            
        } else {
            $data['repair']=array();
        }

        /*$row_turnover=$this->super_model->count_rows_where("transfer_details", "ed_id",$id);
        if($row_turnover!=0){
            foreach($this->super_model->custom_query("SELECT th.accountability_id, th.transfer_date, th.transfer_to, td.et_id FROM transfer_head th INNER JOIN transfer_details td ON th.transfer_id = td.transfer_id WHERE td.ed_id = '$id' GROUP BY td.transfer_id") AS $to){
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $to->accountability_id);
                $turnover_to =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $to->transfer_to);
                $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $to->et_id);
                $data['turnover'][] = array(
                    "employee"=>$employee,
                    "turnover_to"=>$turnover_to,
                    "turnover_date"=>$to->transfer_date,
                    "qty"=>$qty
                );
            }
        } else {
            $data['turnover']=array();
        }*/

        $this->load->view('report/history_view',$data);
        $this->load->view('template/scripts');
    }

    public function report_main_avail(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $row=$this->super_model->count_custom_where("et_head", "accountability_id!=0");
        $row_avail=$this->super_model->count_custom_where("et_head", "accountability_id=0");
        /*foreach($this->super_model->select_custom_where("et_head", "accountability_id='0'") AS $check){
            $data['available_qty']=$this->super_model->count_custom_where("et_details", "damage='0'");           
        }*/
        /*$data['available_qty']=$this->super_model->count_join_where('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');*/
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        if($row_avail!=0){
            foreach($this->super_model->select_custom_where('et_head', 'accountability_id=0') AS $et){
                /*foreach($this->super_model->select_custom_where("et_details", "damage='0' AND et_id ='$et->et_id'") AS $det){*/
                $damage =$this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $et->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $et->et_id);
                $empid =$this->super_model->select_column_where("et_head", "accountability_id", "et_id", $et->et_id);
                /*$brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $serial =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $acn =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);*/
                $ed_id =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $et->et_id);
                if($damage==0){
                    $data['avail'][] = array(
                        'et_id'=>$et->et_id,
                        'ed_id'=>$ed_id,
                        'empid'=>$empid,
                        'unit'=>$unit,
                        'damaged'=>$damage,
                        'department'=>$et->department,
                        'et_desc'=>$et->et_desc,
                        'category'=>$category,
                        'subcat'=>$subcat,
                        'qty'=>$qty,
                        /*'serial_no'=>$serial,
                        'asset_control'=>$acn,
                        'acquisition_date'=>$acquisition_date,
                        'brand'=>$brand
                        'model'=>$model,*/
                    );
                }
                //}
            }
        }else {
            $data['avail'] = array();
        }

        $this->load->view('report/report_main_avail',$data);
        $this->load->view('template/scripts');
    }

    public function report_main_emp(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        /*foreach($this->super_model->select_custom_where("et_head", "accountability_id=0") AS $check){
            $data['available_qty']=$this->super_model->count_custom_where("et_details", "damage='0'");           
        }*/
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        /*$data['available_qty']=$this->super_model->select_sum("et_head", "qty", "accountability_id", "0");*/
        $data['location'] = $this->super_model->select_all_order_by('location', 'location_name', 'ASC');
        foreach($this->super_model->select_all_order_by("employees", "employee_name", "ASC") AS $emp){
            /*$count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id'");*/
            $count = $this->super_model->select_sum("et_head", "qty", "accountability_id",$emp->employee_id);
            if($count!=0){
                $count = $count;
            }else {
                $count = '0';
            }
            $data['employees'][] = array(
                'employee_id'=>$emp->employee_id,
                'employee'=>$emp->employee_name,
                'count'=>$count
            );
        }
        $this->load->view('report/report_main_emp',$data);
        $this->load->view('template/scripts');
    }

    public function search_employee(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');

        $sql="SELECT * FROM employees WHERE location_id!='0' AND";
        $filter = " ";
        if(!empty($_POST['location'])){
            $sql.=" location_id = '$_POST[location]' AND";
            $location = $this->super_model->select_column_where("location", "location_name", "location_id", $_POST['location']);
            $filter .= "Location - ".$location.", ";
        }

        $query=substr($sql, 0, -3);
        $data['filt']=substr($filter, 0, -2);
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        /*$data['available_qty']=$this->super_model->select_sum("et_head", "qty", "accountability_id", "0");*/
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $data['location'] = $this->super_model->select_all_order_by('location', 'location_name', 'ASC');
        foreach($this->super_model->custom_query($query) AS $emp){
            $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id'");
            if($count!=0){
                $count = $count;
            }else {
                $count = '0';
            }
            $data['employees'][] = array(
                'employee_id'=>$emp->employee_id,
                'employee'=>$emp->employee_name,
                'count'=>$count
            );
        }
        $this->load->view('report/report_main_emp',$data);
        $this->load->view('template/scripts');
    }

    /*public function generateReport(){

            if(!empty($this->input->post('from'))){
                $from = $this->input->post('from');
           } else {
                $from = "null";
           }

           if(!empty($this->input->post('to'))){
                $to = $this->input->post('to');
           } else {
                $to = "null";
           }

           if(!empty($this->input->post('category'))){
                $category = $this->input->post('category');
           } else {
                $category = "null";
           }

           if(!empty($this->input->post('subcat'))){
                $subcat = $this->input->post('subcat');
           } else {
                $subcat = "null";
           }

           if(!empty($this->input->post('department'))){
                $department = $this->input->post('department');
           } else {
                $department = "null";
           }

           if(!empty($this->input->post('item'))){
                $item = $this->input->post('item');
           } else {
                $item = "null";
           } 

            if(!empty($this->input->post('brand'))){
                $brand = $this->input->post('brand');
           } else {
                $brand = "null";
           } 

           if(!empty($this->input->post('item_type'))){
                $item_type = $this->input->post('item_type');
           } else {
                $item_type = "null";
           } 

           if(!empty($this->input->post('model'))){
                $model = $this->input->post('model');
           } else {
                $model = "null";
           } 

           if(!empty($this->input->post('serial_no'))){
                $serial_no = $this->input->post('serial_no');
           } else {
                $serial_no = "null";
           } 

           if(!empty($this->input->post('damage'))){
                $damage = $this->input->post('damage');
           } else {
                $damage = "null";
           } 
           ?>
           <script>
            window.location.href ='<?php echo base_url(); ?>index.php/report/report_main/<?php echo $from; ?>/<?php echo $to; ?>/<?php echo $category; ?>/<?php echo $subcat; ?>/<?php echo $department; ?>/<?php echo $item; ?>/<?php echo $brand; ?>/<?php echo $model; ?>/<?php echo $item_type; ?>/<?php echo $serial_no; ?>/<?php echo $damage; ?>'</script> <?php
    }*/

    /*public function search_report(){ 
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $category=$this->uri->segment(3);
        $subcat=$this->uri->segment(4);
        $department=$this->uri->segment(5);
        $item=$this->uri->segment(6);
        $brand=$this->uri->segment(7);
        $model=$this->uri->segment(8);
        $type=$this->uri->segment(9);
        $serial=$this->uri->segment(10);
        $damage=$this->uri->segment(11);
        $data['available_qty']=$this->super_model->select_sum("et_head", "qty", "accountability_id", "0");
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $sql="";
        $filter = " ";
        if($category!='null'){
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= "Category - ".$cat.", ";
        }

        if($subcat!='null'){
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= "Sub Category - ".$subcat.", ";
        }

        if($department!='null'){
            $sql.=" et_head.department LIKE '%$department1%' AND";
            $filter .= "Department - ".$department1.", ";
        }

        if($item!='null'){
            $sql.=" et_head.et_desc LIKE '%$item%' AND";

            $filter .= "Item Desc - ".$item.", ";
        }

        if($brand!='null'){
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= "Brand - ".$brand.", ";
        }

        if($model!='null'){
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= "Model - ".$model.", ";
        }

        if($type!='null'){
            $sql.=" et_details.type LIKE '%$type%' AND";
            $filter .= "Type - ".$type.", ";
        }

        if($serial!='null'){
            $sql.=" et_details.serial_no LIKE '%$serial%' AND";
            $filter .= "Serial No. - ".$serial.", ";
        }

        if($damage!='null'){
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= "Damage Items, ";
        }

        $query=substr($sql, 0, -3);
        $data['filt']=substr($filter, 0, -2);
            foreach ($this->super_model->select_join_where("et_head", "et_details", $query, "et_id") AS $et){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $asset_control_no =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);
                $damage =$this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $date_issued =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $et->et_id);
                $data['main'][] = array(
                    'et_id'=>$et->et_id,
                    'cat'=>$category,
                    'subcat'=>$subcat,
                    'department'=>$et->department,
                    'unit'=>$unit,
                    'damaged'=>$damage,
                    'asset_control'=>$asset_control_no,
                    'acquisition_date'=>$acquisition_date,
                    'date_issued'=>$date_issued,
                    'et_desc'=>$et->et_desc,
                    'qty'=>$et->qty,
                    'accountability'=>$accountability,
                    'employee_id'=>$et->accountability_id
                );
            }
            foreach($this->super_model->select_all_order_by("employees", "employee_name", "ASC") AS $emp){
                $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id'");
                $data['employees'][] = array(
                    'employee_id'=>$emp->employee_id,
                    'employee'=>$emp->employee_name,
                    'count'=>$count
                );
            }
        $this->load->view('report/search_report',$data);
        $this->load->view('template/scripts');
    }*/


    public function search_report(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        /*$category = $_POST['category'];*/
        //$sql="SELECT * FROM et_head eh INNER JOIN et_details et ON eh.et_id = et.et_id WHERE eh.accountability_id!='0' AND";

        if(!empty($this->input->post('from'))){
            $data['from'] = $this->input->post('from');
        } else {
            $data['from']= "null";
        }

        if(!empty($this->input->post('to'))){
            $data['to'] = $this->input->post('to');
        } else {
            $data['to']= "null";
        }

        if(!empty($this->input->post('category'))){
            $data['category'] = $this->input->post('category');
        } else {
            $data['category'] = "null";
        }

        if(!empty($this->input->post('subcat'))){
            $data['subcat'] = $this->input->post('subcat');
        } else {
            $data['subcat'] = "null";
        }

        if(!empty($this->input->post('department'))){
            $data['department'] = $this->input->post('department');
        } else {
            $data['department'] = "null";
        }

        if(!empty($this->input->post('item'))){
            $data['item'] = $this->input->post('item');
        } else {
            $data['item'] = "null";
        } 

        if(!empty($this->input->post('brand'))){
            $data['brand'] = $this->input->post('brand');
        } else {
            $data['brand'] = "null";
        } 

        if(!empty($this->input->post('item_type'))){
            $data['item_type'] = $this->input->post('item_type');
        } else {
            $data['item_type'] = "null";
        } 

        if(!empty($this->input->post('model'))){
            $data['model'] = $this->input->post('model');
        } else {
            $data['model'] = "null";
        } 

        if(!empty($this->input->post('serial_no'))){
            $data['serial_no'] = $this->input->post('serial_no');
        } else {
            $data['serial_no'] = "null";
        } 

        if(!empty($this->input->post('damage'))){
            $data['damage'] = $this->input->post('damage');
        } else {
            $data['damage'] = "null";
        } 


        $sql="";
        $filter = " ";
        if(!empty($this->input->post('from')) && !empty($this->input->post('to'))){
            $from = $this->input->post('from');
            $to = $this->input->post('to');
            $sql.= " et_details.acquisition_date BETWEEN '$from' AND '$to' AND";
            $filter .= "Acquisition Date - ".$from.' <strong>To</strong> '.$to.", ";
        }

        if(!empty($this->input->post('category'))){
            $category = $this->input->post('category');
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= "Category - ".$cat.", ";
        }

        if(!empty($this->input->post('subcat'))){
            $subcat = $this->input->post('subcat');
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat1 = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= "Sub Category - ".$subcat1.", ";
        }

        if(!empty($this->input->post('department'))){
            $department = $this->input->post('department');
            $sql.=" et_head.department LIKE '%$department%' AND";
            $filter .= "Department - ".$department.", ";
        }

        /*if(!empty($_POST['from']) && !empty($_POST['to'])){
           $sql.= " et_details.acquisition_date BETWEEN '$_POST[from]' AND '$_POST[to]' AND";
        }*/

        if(!empty($this->input->post('item'))){
            $item = $this->input->post('item');
            $sql.=" et_head.et_desc LIKE '%$item%' AND";
            $filter .= "Item Description - ".$item.", ";
        }

        if(!empty($this->input->post('brand'))){
            $brand = $this->input->post('brand');
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= "Brand - ".$brand.", ";
        }

        if(!empty($this->input->post('model'))){
            $model = $this->input->post('model');
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= "Model - ".$model.", ";
        }

        if(!empty($this->input->post('item_type'))){
            $item_type = $this->input->post('item_type');
            $sql.=" et_details.type LIKE '%$item_type%' AND";
            $filter .= "Type - ".$item_type.", ";
        }

        if(!empty($this->input->post('serial_no'))){
            $serial_no = $this->input->post('serial_no');
            $sql.=" et_details.serial_no LIKE '%$serial_no%' AND";
            $filter .= "Serial No. - ".$serial_no.", ";
        }

        if(!empty($this->input->post('damage'))){
            $damage = $this->input->post('damage');
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= "Damage Items, ";
        }

        $query=substr($sql, 0, -3);
        $data['filt']=substr($filter, 0, -2);
       
        /*$data['available_qty']=$this->super_model->select_sum("et_head", "qty", "accountability_id", "0");*/
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        //foreach($this->super_model->custom_query($query) AS $et){
        foreach ($this->super_model->select_join_where("et_head", "et_details", $query, "et_id") AS $et){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $asset_control_no =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);
                $damage =$this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $date_issued =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $et->et_id);
                $data['main'][] = array(
                    'et_id'=>$et->et_id,
                    'cat'=>$category,
                    'subcat'=>$subcat,
                    'department'=>$et->department,
                    'unit'=>$unit,
                    'damaged'=>$damage,
                    'asset_control'=>$asset_control_no,
                    'acquisition_date'=>$acquisition_date,
                    'date_issued'=>$date_issued,
                    'et_desc'=>$et->et_desc,
                    'qty'=>$et->qty,
                    'accountability'=>$accountability,
                    'employee_id'=>$et->accountability_id
                );
        }
        foreach($this->super_model->select_all_order_by("employees", "employee_name", "ASC") AS $emp){
            $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id'");
            $data['employees'][] = array(
                'employee_id'=>$emp->employee_id,
                'employee'=>$emp->employee_name,
                'count'=>$count
            );
        }
        $this->load->view('report/report_main',$data);
        $this->load->view('template/scripts');
    }

    public function report_sub(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        /*$data['id'] =$this->super_model->select_column_where("employees", "employee_id", "employee_id", $id);*/
        $row=$this->super_model->count_custom_where("et_head","accountability_id = '$id'");
        if($row!=0){
            foreach($this->super_model->select_row_where('et_head', 'accountability_id', $id) AS $sub){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                /*$department =$this->super_model->select_column_where("department", "department", "employee_id", $sub->accountability_id);*/
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $sub->et_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $sub->et_id);
                $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                /*$set_name = $this->super_model->select_column_custom_where('et_set', 'set_name', "set_id = '$set_id' GROUP BY set_id");*/
                /*$set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $sub->et_id);
                $data['count_set'] = $this->super_model->count_rows_where("et_details","set_id",$set_id);*/
                $data['sub'][] = array(
                    'et_id'=>$sub->et_id,
                    'ed_id'=>$edid,
                    'set_id'=>$set_id,
                    'set_name'=>$set_name,
                    'cat'=>$category,
                    'subcat'=>$subcat,
                    'unit'=>$unit,
                    'department'=>$sub->department,
                    'et_desc'=>$sub->et_desc,
                    'qty'=>$sub->qty,
                    'accountability'=>$accountability
                );
            }
        }else {
            $data['sub'] = array();
        }
        $this->load->view('report/report_sub',$data);
        $this->load->view('template/scripts');
    }

    public function create_set(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        /*$data['id'] =$this->super_model->select_column_where("employees", "employee_id", "employee_id", $id);*/
        $row=$this->super_model->count_custom_where("et_head","accountability_id = '$id'");
        if($row!=0){
            foreach($this->super_model->select_row_where('et_head', 'accountability_id', $id) AS $sub){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                /*$department =$this->super_model->select_column_where("department", "department", "employee_id", $sub->accountability_id);*/
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $sub->et_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $sub->et_id);
                $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                $data['sub'][] = array(
                    'set_id'=>$set_id,
                    'et_id'=>$sub->et_id,
                    'ed_id'=>$edid,
                    'set_name'=>$set_name,
                    'cat'=>$category,
                    'subcat'=>$subcat,
                    'unit'=>$unit,
                    'department'=>$sub->department,
                    'et_desc'=>$sub->et_desc,
                    'qty'=>$sub->qty,
                    'accountability'=>$accountability
                );
            }
        }else {
            $data['sub'] = array();
        }
        $this->load->view('report/create_set',$data);
        $this->load->view('template/scripts');
    }

    /*public function add_set_pop(){  
        $this->load->view('template/header');
        $data['id']= $this->input->post('id');
        for($x=0;$x<$checked;$x++){
            $data['id']=$this->input->post('id');
        }
        $id=$this->input->post('id');
        $data['subcat'] = $this->super_model->select_row_where('subcategory', 'subcat_id', $id);
        $this->load->view('report/add_set_pop');
    }*/

    public function insert_set(){
        /*$etid = $this->input->post('etid');*/
        $id=$this->input->post('id');
        $count = $this->input->post('count');
        $edid = $this->input->post('edid');
        $name = $this->input->post('name');
        $price = $this->input->post('price');
        $checked =count($edid);
        $rows_et=$this->super_model->count_rows("et_set");
        if($rows_et==0){
            $set_id= 1;
        } else {
            $series = $this->super_model->get_max("et_set", "set_id");
            $set_id = $series+1;
        }
        $set_data = array(
            'set_id'=>$set_id,
            'set_name'=>$name,
            'set_price'=>$price,
        );
        $this->super_model->insert_into("et_set", $set_data);

        for($x=0;$x<$checked;$x++){
            $det_data = array(
                'set_id'=>$set_id
            ); 
            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
        }
        ?>
        <script>alert("Successfully Set!"); window.location.href ='<?php echo base_url(); ?>index.php/report/report_sub/<?php echo $id; ?>'</script>
        <?php
    }

    /*public function add_set_modal(){  
        $this->load->view('template/header');
        $edid = $this->input->post('edid');
        $checked = count($edid);
        $count = $this->input->post('count');
        $data['id']= $this->input->post('id');
        for($x=0;$x<$checked;$x++){
            $data['id']=$this->input->post('id');
        }
        $id=$this->input->post('id');
        $data['subcat'] = $this->super_model->select_row_where('subcategory', 'subcat_id', $id);
        $this->load->view('report/add_set_modal',$data);
    }*/

    public function view_more(){  
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $row=$this->super_model->count_rows("et_head");
        if($row!=0){
            foreach($this->super_model->select_row_where('et_head', 'et_id', $id) AS $view){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $view->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $view->accountability_id);
                /*$department =$this->super_model->select_column_where("employees", "department", "employee_id", $view->accountability_id);*/
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $view->category_id);
                $data['damage'] =$this->super_model->select_column_where("et_details", "damage", "et_id", $view->et_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $view->subcat_id);
                $data['view'][] = array(
                    'et_id'=>$view->et_id,
                    'et_desc'=>$view->et_desc,
                    'qty'=>$view->qty,
                    'unit'=>$unit,
                    'accountability'=>$accountability,
                    'department'=>$view->department,
                    'category'=>$category,
                    'subcat'=>$subcat,
                );
                foreach($this->super_model->select_row_where('et_details', 'et_id', $view->et_id) AS $det){
                    $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $det->currency_id);
                    $data['details'][] = array(
                        'set_id'=>$det->set_id,
                        'et_id'=>$det->et_id,
                        'acquisition_date'=>$det->acquisition_date,
                        'asset_control_no'=>$det->asset_control_no,
                        'brand'=>$det->brand,
                        'model'=>$det->model,
                        'type'=>$det->type,
                        'serial_no'=>$det->serial_no,
                        'acquired_by'=>$det->acquired_by,
                        'remarks'=>$det->remarks,
                        'damage'=>$det->damage,
                        'date_issued'=>$det->date_issued,
                        'unit_price'=>$det->unit_price,
                        'currency'=>$currency,
                        'picture1'=>$det->picture1,
                        'picture2'=>$det->picture2,
                        'picture3'=>$det->picture3,

                    );
                }
            }
        }else {
            $data['view'] = array();
        }
        $this->load->view('report/view_more',$data);
        $this->load->view('template/scripts');
    }

    public function return_view(){  
        $this->load->view('template/header');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $et_id =$this->uri->segment(4);
        $data['et_id'] =$this->uri->segment(4);
        $data['quantity'] = $this->super_model->select_column_custom_where('et_head', 'qty', "accountability_id = '$id' AND et_id = '$et_id'");
        $row=$this->super_model->count_rows_where("et_head","accountability_id",$id);
        if($row!=0){
            foreach($this->super_model->select_row_where("et_head", "et_id", $et_id) AS $head){
                $data['head'][] = array(
                    'et_id'=>$head->et_id,
                );
                foreach($this->super_model->select_row_where("et_details", "et_id", $head->et_id) AS $det){
                    $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                    $data['details'][] = array(
                        'ed_id'=>$det->ed_id,
                        'et_id'=>$det->et_id,
                        'serial_no'=>$det->serial_no,
                        'item'=>$item,
                        'asset_control_no'=>$det->asset_control_no,
                        'brand'=>$det->brand,
                        'model'=>$det->model,
                        'type'=>$det->type
                    );
                }  
            }
        }else {
            $data['head'] = array();
        }
        $this->load->view('report/return_view',$data);
        $this->load->view('template/scripts');
    }


    public function insert_return(){
        $count = $this->input->post('count');
        $id = $this->input->post('id');
        $et_id = $this->input->post('et_id');
        $edid = $this->input->post('edid');
        $checked =count($edid);
        $date = $this->input->post('date');
        $remarks = $this->input->post('remarks');
        $ars_no = $this->input->post('ars_no');
        $received_by = $this->input->post('rec_id');
        $head_rows = $this->super_model->count_rows("return_head");
        if($head_rows==0){
            $return_id=1;
        } else {
            $maxid=$this->super_model->get_max("return_head", "return_id");
            $return_id=$maxid+1;
        }

        $atf_format = date("Y");
        $prefix= $this->super_model->select_column_custom_where("return_head", "atf_no", "return_date LIKE '$atf_format%'");
        $rows=$this->super_model->count_custom_where("return_head","atf_no = '$prefix'");
        if($rows==0){
            $atf_no= $atf_format."-1001";
        } else {
            $series = $this->super_model->get_max("atf_series", "series","atf_prefix = '$prefix'");
            $next=$series+1;
            $atf_no = $atf_format."-".$next;
        }

        $atfdetails=explode("-", $atf_no);
        $atf_prefix=$atfdetails[0];
        $series = $atfdetails[1];

        $atf_data= array(
            'atf_prefix'=>$atf_prefix,
            'series'=>$series
        );
        $this->super_model->insert_into("atf_series", $atf_data);

        $returnhead_data = array(
            'return_id'=> $return_id,
            /*'et_id'=>$et_id,*/
            /*'quantity'=>$checked,*/
            'accountability_id'=> $id,
            'received_by'=> $received_by,
            'return_date'=> $date,
            'create_date'=>date("Y-m-d H:i:s"),
            'atf_no'=> $atf_no,
            'ars_no'=> $ars_no,
            'return_remarks'=>$remarks
        );
        if($this->super_model->insert_into("return_head", $returnhead_data)){
            $ars = $this->input->post('ars_no');
            $assetdetails=explode("-", $ars);
            $subcat_prefix1=$assetdetails[0];
            $subcat_prefix2=$assetdetails[1];
            $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
            $series = $assetdetails[2];
            $ars_data= array(
                'prefix'=>$subcat_prefix,
                'series'=>$series
            );
            $this->super_model->insert_into("returned_series", $ars_data);
        }
      
        foreach($this->super_model->select_row_where('et_head', 'et_id', $et_id) AS $ret){
            if($checked < $ret->qty){
               
                $rows_et=$this->super_model->count_rows("et_head");
                if($rows_et==0){
                    $new_etid= 1;
                } else {
                    $series = $this->super_model->get_max("et_head", "et_id");
                    $new_etid = $series+1;
                }
                $et_data = array(
                    'et_id'=>$new_etid,
                    'user_id'=>$this->input->post('user_id'),
                    'et_desc'=>$ret->et_desc,
                    'unit_id'=>$ret->unit_id,
                    'qty'=>$checked,
                    'accountability_id'=>0,
                    'department'=>$ret->department,
                    'category_id'=>$ret->category_id,
                    'subcat_id'=>$ret->subcat_id,
                    'create_date'=>date("Y-m-d H:i:s"),
                );
                if($this->super_model->insert_into("et_head", $et_data)){
                    
                    for($x=0;$x<$checked;$x++){
                        $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);
                        foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                            $det_data = array(
                                'et_id'=>$new_etid,
                                'date_issued'=>''
                            ); 
                            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                        }

                        $returndet_data = array(
                            'ed_id'=>$edid[$x],
                            'et_id'=>$et_id,
                            'return_id'=>$return_id,
                            'date_issued'=>$date_issued
                        );
                        $this->super_model->insert_into("return_details", $returndet_data);
                    }
                   
                    $new_qty = $count-$checked;
                  
                    $qty_data = array(
                        'qty'=>$new_qty,
                    );
                    $this->super_model->update_where('et_head', $qty_data, 'et_id', $et_id);

                  
                    echo "<script>alert('Successfully Returned!'); window.close(); window.opener.location.href = '".base_url()."index.php/report/ars_report/$return_id';</script>";
                }
            }else if($checked == $ret->qty){
                $data = array(
                    'accountability_id'=>0,
                );

                if($this->super_model->update_where('et_head', $data, 'et_id', $et_id)){
                    for($x=0;$x<$checked;$x++){
                        $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);
                        foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                            $det_data = array(
                                'date_issued'=>''
                            ); 
                            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                        }

                        $returndet_data = array(
                            'ed_id'=>$edid[$x],
                            'et_id'=>$et_id,
                            'return_id'=>$return_id,
                            'date_issued'=>$date_issued
                        );
                        $this->super_model->insert_into("return_details", $returndet_data);
                    }
                    echo "<script>alert('Successfully Returned!'); window.close(); window.opener.location.href = '".base_url()."index.php/report/ars_report/$return_id';</script>";
                }
            }
        }
        
    }

     public function assign_view(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');       
        $this->load->view('report/assign_view');
        $this->load->view('template/scripts');
    }

    public function checked_list(){
        $checked=$this->input->post('checked');
        $id=$this->input->post('id');
        
        $rows=$this->super_model->count_custom_where("employees","employee_name LIKE '%$checked%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "employee_name LIKE '%$checked%'") AS $acct){ 
                    ?>
                   <li onClick="selectChk('<?php echo $acct->employee_id; ?>','<?php echo $acct->employee_name; ?>','<?php echo $id; ?>')"><?php echo $acct->employee_name; ?></li>
                <?php 
            }
             echo "<ul>";
        }
    }

    public function submitted_list(){
        $submitted=$this->input->post('submitted');
        $id=$this->input->post('id');
        
        $rows=$this->super_model->count_custom_where("employees","employee_name LIKE '%$submitted%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "employee_name LIKE '%$submitted%'") AS $acct){ 
                    ?>
                   <li onClick="selectSbmt('<?php echo $acct->employee_id; ?>','<?php echo $acct->employee_name; ?>','<?php echo $id; ?>')"><?php echo $acct->employee_name; ?></li>
                <?php 
            }
             echo "<ul>";
        }
    }

    public function noted_list(){
        $noted=$this->input->post('noted');
        $id=$this->input->post('id');
        
        $rows=$this->super_model->count_custom_where("employees","employee_name LIKE '%$noted%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "employee_name LIKE '%$noted%'") AS $acct){ 
                    ?>
                   <li onClick="selectNtd('<?php echo $acct->employee_id; ?>','<?php echo $acct->employee_name; ?>','<?php echo $id; ?>')"><?php echo $acct->employee_name; ?></li>
                <?php 
            }
             echo "<ul>";
        }
    }

    public function rec_list(){
        $rec=$this->input->post('rec');
        $rows=$this->super_model->count_custom_where("employees","employee_name LIKE '%$rec%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "employee_name LIKE '%$rec%'") AS $acct){ 
                   
                    ?>
                   <li onClick="selectRec('<?php echo $acct->employee_id; ?>','<?php echo $acct->employee_name; ?>')"><?php echo $acct->employee_name; ?></li>
                <?php 
            }
             echo "<ul>";
        }
    }

    public function getArs(){
        $date = $this->input->post('date');

        $date_format = date("Y-m",strtotime($date));
        $prefix= $this->super_model->select_column_custom_where("return_head", "ars_no", "return_date LIKE '$date_format%'");
        //secho $prefix;
        $rows=$this->super_model->count_custom_where("return_head","ars_no = '$prefix'");
        if($rows==0){
            $ars_no= $date_format."-1001";
        } else {
            $series = $this->super_model->get_max("returned_series", "series","prefix = '$prefix'");
            $next=$series+1;
            $ars_no = $date_format."-".$next;
        }
        echo '<option value="'. $ars_no .'">'. $ars_no .'</option>';
    }

    public function getEtdr(){
        $date = $this->input->post('date');
        $date_format = date("Y-m",strtotime($date));
        $prefix= $this->super_model->select_column_custom_where("damage_info", "etdr_no", "incident_date LIKE '$date_format%'");
        //secho $prefix;
        $rows=$this->super_model->count_custom_where("damage_info","etdr_no = '$prefix'");
        if($rows==0){
            $etdr_no= $date_format."-1001";
        } else {
            $series = $this->super_model->get_max("damage_series", "series","damge_prefix = '$prefix'");
            $next=$series+1;
            $etdr_no = $date_format."-".$next;
        }
        echo '<option value="'. $etdr_no .'">'. $etdr_no .'</option>';
    }

    

     public function getCat(){
        $cat = $this->input->post('category');

        echo '<option value="">-Select Sub Category-</option>';
        foreach($this->super_model->select_row_where('subcategory', 'category_id', $cat) AS $row){
            echo '<option value="'. $row->subcat_id .'">'. $row->subcat_name .'</option>';
        }
    }

    public function return_report(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $id=$this->uri->segment(3); 
        $data['fullname'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $row=$this->super_model->count_rows_where("return_head",'accountability_id',$id);
        if($row!=0){
            foreach($this->super_model->select_row_where("return_head", "accountability_id", $id) AS $info){
                $received =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $info->received_by);
                foreach($this->super_model->select_row_where("return_details", "return_id", $info->return_id) AS $ret){ 
                    $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $ret->et_id);
                    $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $ret->et_id);
                    $serial =$this->super_model->select_column_where("et_details", "serial_no", "ed_id", $ret->ed_id);
                    $price =$this->super_model->select_column_where("et_details", "unit_price", "ed_id", $ret->ed_id);
                    $et_id =$this->super_model->select_column_where("et_head", "et_id", "et_id", $ret->et_id);
                    $data['details'][] = array(
                        "return_id"=>$ret->return_id,
                        "et_id"=>$ret->et_id,
                        "item"=>$item,
                        "price"=>$price,
                        "serial"=>$serial
                    );
                }
                $data['info'][] = array(
                    "return_id"=>$info->return_id,
                    "et_id"=>$et_id,
                    "receive_by"=>$received,
                    "return_date"=>$info->return_date,
                    "quantity"=>$qty,
                    "ars_no"=>$info->ars_no,
                    "remarks"=>$info->return_remarks
                );
            }
        }else {
            $data['info'] = array();
        }
        $this->load->view('report/return_report',$data);
        $this->load->view('template/scripts');
    }

    public function tag_damage(){  
        $this->load->view('template/header');  
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $et_id =$this->uri->segment(4);
        $data['et_id'] =$this->uri->segment(4);
        $data['quantity'] = $this->super_model->select_column_custom_where('et_head', 'qty', "accountability_id = '$id' AND et_id = '$et_id'");
        $row=$this->super_model->count_rows_where("et_head","accountability_id",$id);
        if($row!=0){
            foreach($this->super_model->select_row_where("et_head", "et_id", $et_id) AS $head){
                $data['head'][] = array(
                    'et_id'=>$head->et_id,
                );
                foreach($this->super_model->select_row_where("et_details", "et_id", $head->et_id) AS $det){
                    $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                    $data['details'][] = array(
                        'ed_id'=>$det->ed_id,
                        'et_id'=>$det->et_id,
                        'serial_no'=>$det->serial_no,
                        'item'=>$item,
                        'asset_control_no'=>$det->asset_control_no,
                        'brand'=>$det->brand,
                        'model'=>$det->model,
                        'type'=>$det->type
                    );
                }  
            }
        }else {
            $data['head'] = array();
        }   
        $this->load->view('report/tag_damage',$data);
        $this->load->view('template/scripts');
    }

    public function insert_damage(){
        $count = $this->input->post('count');
        $id = $this->input->post('id');
        $et_id = $this->input->post('et_id');
        $edid = $this->input->post('edid');
        $checked =count($edid);
        /*$date = $this->input->post('date');
        $remarks = $this->input->post('remarks');
        $ars_no = $this->input->post('ars_no');
        $received_by = $this->input->post('rec_id');*/

        /*$atf_format = date("Y");
        $prefix= $this->super_model->select_column_custom_where("return_head", "atf_no", "return_date LIKE '$atf_format%'");
        $rows=$this->super_model->count_custom_where("return_head","atf_no = '$prefix'");
        if($rows==0){
            $atf_no= $atf_format."-1001";
        } else {
            $series = $this->super_model->get_max("atf_series", "series","atf_prefix = '$prefix'");
            $next=$series+1;
            $atf_no = $atf_format."-".$next;
        }

        $atfdetails=explode("-", $atf_no);
        $atf_prefix=$atfdetails[0];
        $series = $atfdetails[1];

        $atf_data= array(
            'atf_prefix'=>$atf_prefix,
            'series'=>$series
        );
        $this->super_model->insert_into("atf_series", $atf_data);
        
        $head_rows = $this->super_model->count_rows("return_head");
        if($head_rows==0){
            $return_id=1;
        } else {
            $maxid=$this->super_model->get_max("return_head", "return_id");
            $return_id=$maxid+1;
        }

        $returnhead_data = array(
            'return_id'=> $return_id,
            'accountability_id'=> $id,
            'received_by'=> $received_by,
            'return_date'=> $date,
            'create_date'=>date("Y-m-d H:i:s"),
            'atf_no'=> $atf_no,
            'ars_no'=> $ars_no,
            'return_remarks'=>$remarks
        );

        if($this->super_model->insert_into("return_head", $returnhead_data)){
            $ars = $ars_no;
            $assetdetails=explode("-", $ars);
            $subcat_prefix1=$assetdetails[0];
            $subcat_prefix2=$assetdetails[1];
            $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
            $series = $assetdetails[2];
            $ars_data= array(
                'prefix'=>$subcat_prefix,
                'series'=>$series
            );
            $this->super_model->insert_into("returned_series", $ars_data);
        }*/
        $y = 0;
        foreach($this->super_model->select_row_where('et_head', 'et_id', $et_id) AS $ret){
            if($checked < $ret->qty){
                $rows_et=$this->super_model->count_rows("et_head");
                if($rows_et==0){
                    $new_etid= 1;
                } else {
                    $series = $this->super_model->get_max("et_head", "et_id");
                    $new_etid = $series+1;
                }
                $et_data = array(
                    'et_id'=>$new_etid,
                    'user_id'=>$this->input->post('user_id'),
                    'et_desc'=>$ret->et_desc,
                    'unit_id'=>$ret->unit_id,
                    'qty'=>$checked,
                    'accountability_id'=>0,
                    'department'=>$ret->department,
                    'category_id'=>$ret->category_id,
                    'subcat_id'=>$ret->subcat_id,
                    'create_date'=>date("Y-m-d H:i:s"),
                );
                if($this->super_model->insert_into("et_head", $et_data)){
                    for($x=0;$x<$checked;$x++){
                        $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);
                        foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                            $det_data = array(
                                'et_id'=>$new_etid,
                                'date_issued'=>'',
                                'damage'=>1
                            ); 
                            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                        }
                    }
                    /*$returndet_data = array(
                        'et_id'=>$ret->et_id,
                        'ed_id'=>$edid[$y],
                        'return_id'=>$return_id,
                        'date_issued'=>$date_issued
                    );
                    $this->super_model->insert_into("return_details", $returndet_data);*/
                    $new_qty = $count-$checked;
                    $qty_data = array(
                        'qty'=>$new_qty,
                    );
                    $this->super_model->update_where('et_head', $qty_data, 'et_id', $et_id);
                    echo "<script>window.location = '".base_url()."index.php/report/tag_damage_form/$id/$new_etid';</script>";
                }
            }else if($checked == $ret->qty){
                $data = array(
                    'accountability_id'=>0,
                );

                if($this->super_model->update_where('et_head', $data, 'et_id', $et_id)){
                    for($x=0;$x<$checked;$x++){
                        $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);
                        $count_exist = $this->super_model->count_custom_where("et_details","et_id = '$ret->et_id' AND ed_id= '$edid[$x]'");
                        if($count_exist!=0){
                            /*$returndet_data = array(
                                'et_id'=>$ret->et_id,
                                'ed_id'=>$edid[$x],
                                'return_id'=>$return_id,
                                'date_issued'=>$date_issued
                            );
                            $this->super_model->insert_into("return_details", $returndet_data);*/
                            foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                                $det_data = array(
                                    'date_issued'=>'',
                                    'damage'=>1
                                ); 
                                $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                            }
                        }
                    }
                    echo "<script>window.location = '".base_url()."index.php/report/tag_damage_form/$id/$et_id/$checked';</script>";
                }
            }
        } 
        $y++;
    }

    public function tag_damage_form(){  
        $this->load->view('template/header'); 
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $et_id =$this->uri->segment(4);
        $data['et_id'] =$this->uri->segment(4);
        $data['count'] =$this->uri->segment(5);
        $count =$this->uri->segment(5);
        $data['qty'] = $this->super_model->select_column_where("et_head", "qty", "et_id", $et_id);  
        $qty = $this->super_model->select_column_where("et_head", "qty", "et_id", $et_id);
        $data['noted_by'] = $this->super_model->select_column_where("employees", "employee_name", "employee_id", '66'); 
        $data['checked_by'] = $this->super_model->select_column_where("employees", "employee_name", "employee_id", '53'); 
        $data['checked_name'] = $this->super_model->select_column_where("employees", "employee_id", "employee_name", 'Mary Grace Bugna'); 
        $data['noted_id'] = $this->super_model->select_column_where("employees", "employee_id", "employee_name", 'Eric Jabiniar'); 
        foreach($this->super_model->select_row_where('et_head', 'et_id', $et_id) AS $head){ 
                $data['head'][] =  array(
                    'et_id'=>$head->et_id,
                    'item'=> $this->super_model->select_column_where("et_head", "et_desc", "et_id", $head->et_id), 
                    'accountability'=> $this->super_model->select_column_where("employees", "employee_name", "employee_id", $id), 
                );
            foreach($this->super_model->select_row_where('et_details', 'et_id', $head->et_id) AS $det){
               $data['details'][] =  array(
                    'et_id'=>$det->et_id,
                    'ed_id'=>$det->ed_id,
                    'model'=> $this->super_model->select_column_where("et_details", "model", "ed_id", $det->ed_id),
                    'brand'=> $this->super_model->select_column_where("et_details", "brand", "ed_id", $det->ed_id),
                    'serial' => $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $det->ed_id)
                );
            }
        }
        $this->load->view('report/tag_damage_form',$data);
        $this->load->view('template/scripts');
    }

    public function insert_damage_form(){
        $count = $this->input->post('count');
        $id = $this->input->post('id');
        $et_id = $this->input->post('et_id');
        
        $head_rows = $this->super_model->count_rows("return_head");
        if($head_rows==0){
            $return_id=1;
        } else {
            $maxid=$this->super_model->get_max("return_head", "return_id");
            $return_id=$maxid+1;
        }

        for($x=1;$x<=$count;$x++){
            $id = $this->input->post('id');
            $date = $this->input->post('date'.$x);
            $edid = $this->input->post('ed_id'.$x);
            $activity = $this->input->post('activity'.$x);
            $checked_by = $this->input->post('checked_id'.$x);
            $submitted_by = $this->input->post('submitted_id'.$x);
            $noted_by = $this->input->post('noted_id'.$x);
            $etdr_no = $this->input->post('etdr_no'.$x);
            $incident = $this->input->post('incident'.$x);
            $location = $this->input->post('location'.$x);
            $damage_done = $this->input->post('damage_done'.$x);
            $receipt = $this->input->post('receipt'.$x);
            $recommendation = $this->input->post('recommendation'.$x);
            $date_format = date("Y-m",strtotime($date));
            $prefix= $this->super_model->select_column_custom_where("damage_info", "etdr_no", "incident_date LIKE '$date_format%'");
            //secho $prefix;
            $rows=$this->super_model->count_custom_where("damage_info","etdr_no = '$prefix'");
            if($rows==0){
                $etdr_no= $date_format."-1001";
            } else {
                $series = $this->super_model->get_max("damage_series", "series","damge_prefix = '$prefix'");
                $next=$series+1;
                $etdr_no = $date_format."-".$next;
            }
            $damagedetails=explode("-", $etdr_no);
            $damage_prefix1=$damagedetails[0];
            $damage_prefix2=$damagedetails[1];
            $damage_prefix=$damage_prefix1."-".$damage_prefix2;
            $series = $damagedetails[2];
            $damage_data= array(
                'damage_prefix'=>$damage_prefix,
                'series'=>$series
            );
            $this->super_model->insert_into("damage_series", $damage_data);
            $data_damage = array(
                'et_id'=>$et_id,
                'incident_date'=>$date,
                'activity'=>$activity,
                'etdr_no'=>$etdr_no,
                'ed_id'=>$edid,
                'damage_location'=>$location,
                'accountability'=>$receipt,
                'incident_description'=>$incident,
                'equip_damage'=>$damage_done,
                'recommendation'=>$recommendation,
                'submitted_by'=>$submitted_by,
                'checked_by'=>$checked_by,
                'noted_by'=>$noted_by,
                'create_date'=>date("Y-m-d H:i:s"),
                'user_id'=>$this->input->post('user_id'),
            ); 
            $this->super_model->insert_into("damage_info", $data_damage); 
            $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid);
            $returndet_data = array(
                'et_id'=>$et_id,
                'ed_id'=>$edid,
                'return_id'=>$return_id,
                'date_issued'=>$date_issued
            );
            $this->super_model->insert_into("return_details", $returndet_data);
            /*$date_format = date("Y-m",strtotime($date));
            $prefix= $this->super_model->select_column_custom_where("return_head", "ars_no", "return_date LIKE '$date_format%'");
            //secho $prefix;
            $rows=$this->super_model->count_custom_where("return_head","ars_no = '$prefix'");
            if($rows==0){
                $ars_no= $date_format."-1001";
            } else {
                $series = $this->super_model->get_max("returned_series", "series","prefix = '$prefix'");
                $next=$series+1;
                $ars_no = $date_format."-".$next;
            }

            $return_id = $this->super_model->select_column_where("return_details","return_id","ed_id",$edid);
            $arss = array(
                'ars_no'=>$ars_no,
                'received_by'=>$checked_by,
                'return_date'=>$date,
                'return_remarks'=>$damage_done
            );
            if($this->super_model->update_where("return_head", $arss, "return_id", $return_id)){
                $ars = $ars_no;
                $assetdetails=explode("-", $ars);
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
                $series = $assetdetails[2];
                $ars_data= array(
                    'prefix'=>$subcat_prefix,
                    'series'=>$series
                );
                $this->super_model->insert_into("returned_series", $ars_data);
            }*/
        }

        $atf_format = date("Y");
        $prefix= $this->super_model->select_column_custom_where("return_head", "atf_no", "return_date LIKE '$atf_format%'");
        $rows=$this->super_model->count_custom_where("return_head","atf_no = '$prefix'");
        if($rows==0){
            $atf_no= $atf_format."-1001";
        } else {
            $series = $this->super_model->get_max("atf_series", "series","atf_prefix = '$prefix'");
            $next=$series+1;
            $atf_no = $atf_format."-".$next;
        }

        $atfdetails=explode("-", $atf_no);
        $atf_prefix=$atfdetails[0];
        $series = $atfdetails[1];

        $atf_data= array(
            'atf_prefix'=>$atf_prefix,
            'series'=>$series
        );
        $this->super_model->insert_into("atf_series", $atf_data);


        $date_format = date("Y-m",strtotime($date));
        $prefix= $this->super_model->select_column_custom_where("return_head", "ars_no", "return_date LIKE '$date_format%'");
        //secho $prefix;
        $rows=$this->super_model->count_custom_where("return_head","ars_no = '$prefix'");
        if($rows==0){
            $ars_no= $date_format."-1001";
        } else {
            $series = $this->super_model->get_max("returned_series", "series","prefix = '$prefix'");
            $next=$series+1;
            $ars_no = $date_format."-".$next;
        }

        $returnhead_data = array(
            'return_id'=> $return_id,
            'accountability_id'=> $id,
            'received_by'=> $checked_by,
            'return_date'=> $date,
            'create_date'=>date("Y-m-d H:i:s"),
            'atf_no'=> $atf_no,
            'ars_no'=> $ars_no,
            'return_remarks'=>$damage_done
        );

        if($this->super_model->insert_into("return_head", $returnhead_data)){
            $ars = $ars_no;
            $assetdetails=explode("-", $ars);
            $subcat_prefix1=$assetdetails[0];
            $subcat_prefix2=$assetdetails[1];
            $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
            $series = $assetdetails[2];
            $ars_data= array(
                'prefix'=>$subcat_prefix,
                'series'=>$series
            );
            $this->super_model->insert_into("returned_series", $ars_data);
        }
        echo "<script>alert('Successfully Tagged as Damage!'); window.location = '".base_url()."index.php/report/tag_damage_print/$et_id';</script>";
    }

    public function tag_damage_print(){  
        $this->load->view('template/header'); 
        $data['id']=$this->uri->segment(3);
        $et_id=$this->uri->segment(3);
        foreach($this->super_model->select_row_where('et_head', 'et_id', $et_id) AS $head){ 
                $data['head'][] =  array(
                    'et_id'=>$head->et_id,
                    'item'=> $this->super_model->select_column_where("et_head", "et_desc", "et_id", $head->et_id),  
                );
            foreach($this->super_model->select_row_where('damage_info', 'et_id', $head->et_id) AS $det){

               $data['details'][] =  array(
                    'damage_id'=>$det->damage_id,
                    'et_id'=>$det->et_id,
                    'ed_id'=>$det->ed_id,
                    'acn'=> $this->super_model->select_column_where("et_details", "asset_control_no", "ed_id", $det->ed_id),
                    'type'=> $this->super_model->select_column_where("et_details", "type", "ed_id", $det->ed_id),
                    'model'=> $this->super_model->select_column_where("et_details", "model", "ed_id", $det->ed_id),
                    'brand'=> $this->super_model->select_column_where("et_details", "brand", "ed_id", $det->ed_id),
                    'serial' => $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $det->ed_id)
                );
            }
        }    
        $this->load->view('report/tag_damage_print',$data);
        $this->load->view('template/scripts');
    }

    public function damage_report(){  
        $this->load->view('template/header');
        $data['id']=$this->uri->segment(3);
       /* $ed_id=$this->uri->segment(3);*/
        $damage_id=$this->uri->segment(3);
        foreach($this->super_model->select_row_where('damage_info', 'damage_id', $damage_id) AS $dam){
            foreach($this->super_model->select_row_where('et_head', 'et_id', $dam->et_id) AS $head){ 
                $item = $this->super_model->select_column_where("et_head", "et_desc", "et_id", $head->et_id);
            }
            $data['type'] = $this->super_model->select_column_where("employees", "type", "employee_id", $dam->submitted_by); 
            foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$dam->submitted_by) AS $em){
                $data['child'][] = array( 
                    'emp'=> $this->super_model->select_column_where("employees", "employee_name", "employee_id", $em->child_id), 
                );
            }
            $data['user_id'] =$this->super_model->select_column_where("users", "fullname", "user_id", $head->user_id);
            $data['checked_by'] = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $dam->checked_by);
            $data['submitted_by'] = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $dam->submitted_by);
            $data['noted_by'] = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $dam->noted_by);
            foreach($this->super_model->select_row_where('et_details', 'ed_id', $dam->ed_id) AS $det){
                $data['details'][]=array(
                    'ed_id'=>$det->ed_id,
                    'type'=> $det->type,
                    'model'=> $det->model,
                    'brand'=> $det->brand,
                    'serial' => $det->serial_no,
                );
            }
            $data['damage'][] =  array(
                'ed_id'=>$dam->ed_id,
                'et_id'=>$dam->et_id,
                'etdr_no'=> $dam->etdr_no,
                'item'=> $item,
                /*'type'=> $this->super_model->select_column_where("et_details", "type", "ed_id", $dam->ed_id),
                'model'=> $this->super_model->select_column_where("et_details", "model", "ed_id", $dam->ed_id),
                'brand'=> $this->super_model->select_column_where("et_details", "brand", "ed_id", $dam->ed_id),
                'serial' => $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $dam->ed_id),*/
                'date_incident'=>$dam->incident_date,
                'activity'=>$dam->activity,
                'location'=>$dam->damage_location,
                'accountability'=>$dam->accountability,
                'incident_description'=>$dam->incident_description,
                'equip_damage'=>$dam->equip_damage,
                'recommendation'=>$dam->recommendation
            );
        }
        $this->load->view('report/damage_report',$data);
        $this->load->view('template/scripts');
    }

    public function assign(){  
        $this->load->view('template/header'); 
        $id=$this->uri->segment(3); 
        $data['et_id'] =$this->uri->segment(3);
        $data['qty'] =$this->super_model->select_column_where("et_head", "qty", "et_id", $id);  
        $data['item'] =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $id);  
        $this->load->view('report/assign',$data);
        $this->load->view('template/scripts');
    }

    public function aaf_assign_rep(){  
        $this->load->view('template/header');  
        $user = $_SESSION['user_id'];
        $data['employee'] = $this->super_model->select_all_order_by("employees","employee_name","ASC"); 
        $data['user_id'] = $this->super_model->select_column_where("users", "username", "user_id", $user);
        $this->load->view('report/aaf_assign_rep',$data);
        $this->load->view('template/scripts');
    }

    public function assignlist(){
        $assign=$this->input->post('assign');
        $rows=$this->super_model->count_custom_where("employees","employee_name LIKE '%$assign%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "employee_name LIKE '%$assign%'") AS $emp){ 
                /*$data['type'] = $this->super_model->select_column_where("employees", "type", "employee_id", $emp->employee_id); 
                foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$emp->employee_id) AS $em){
                    $data['child'][] = array( 
                        $emps = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $em->child_id)
                    );
                }*/
                if($emp->type == '1'){
            ?>
                <li onClick="selectAssign('<?php echo $emp->employee_id; ?>','<?php echo $emp->employee_name; ?>','<?php echo $emp->department; ?>','<?php echo $emp->position; ?>','<?php echo $emp->aaf_no; ?>', '0', '1')"><?php echo $emp->employee_name; ?></li>
                <?php 
                } else { 
                    $ch = '';
                     foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$emp->employee_id) AS $child){
                        $ch.=$this->super_model->select_column_where("employees", "employee_name", "employee_id", $child->child_id). ", ";
                     }
                     $chi = substr($ch, 0, -2);

                ?>
                   <li onClick="selectAssign('<?php echo $emp->employee_id; ?>','<?php echo $emp->employee_name; ?>','<?php echo $emp->department; ?>','<?php echo $emp->position; ?>','<?php echo $emp->aaf_no; ?>','<?php echo $chi; ?>','2')"><?php echo $emp->employee_name; ?></li>  
               <?php }
            }
            echo "<ul>";
        }
    }

     public function itemlist(){
        $item=$this->input->post('item');
        $rows=$this->super_model->count_custom_where("et_head","et_desc LIKE '%$item%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("et_head", "accountability_id='0' AND et_desc LIKE '%$item%'") AS $itm){
                foreach($this->super_model->select_custom_where("et_details", "damage='0' AND et_id ='$itm->et_id'") AS $det){  
                    $qty = 1;
                    $unit = $this->super_model->select_column_where("unit", "unit_name", "unit_id", $itm->unit_id);
                    $total = $det->unit_price*$qty;
            ?>
                   <li onClick="selectItem('<?php echo $itm->et_id; ?>','<?php echo $det->set_id; ?>','<?php echo $det->ed_id; ?>','<?php echo $itm->et_desc; ?>','<?php echo $det->asset_control_no;?>','<?php echo $det->acquisition_date; ?>','<?php echo $det->serial_no; ?>','<?php echo $det->brand; ?>','<?php echo $det->model; ?>','<?php echo $qty; ?>','<?php echo $unit; ?>','<?php echo $det->unit_price; ?>','<?php echo $total; ?>',)"><?php echo $itm->et_desc." - ".$det->brand." - ".$det->serial_no." - ".$det->model; ?></li>
            <?php 
                }
            }
            echo "<ul>";
        }
    }

    public function getitem(){
        foreach($this->super_model->select_row_where("et_head", "et_id", $this->input->post('itemid')) AS $et){
            $unit = $this->super_model->select_column_where("unit", "unit_name", "unit_id",$et->unit_id);
        }
        $acn=$this->input->post('acn');
        $acq_date=$this->input->post('acq_date');
        $serial=$this->input->post('serial');
        $model=$this->input->post('model');
        $brand=$this->input->post('brand');
        $qty=$this->input->post('qty');
        /*$unit=$this->input->post('unit');*/
        $price=$this->input->post('price');
        $total=$this->input->post('price')*$this->input->post('qty');
        $data['list'] = array(
            'et_id'=>$this->input->post('itemid'),
            'ed_id'=>$this->input->post('edid'),
            'set_id'=>$this->input->post('setid'),
            'brand'=>$brand,
            'serial'=>$serial,
            'model'=>$model,
            'price'=>$price,
            'unit'=>$unit,
            'acn'=>$acn,
            'acq_date'=>$acq_date,
            'qty'=>$qty,
            'item'=>$this->input->post('item'),
            'count'=>$this->input->post('count'),
            'total'=>$total
        );  
        $this->load->view('report/row_item',$data);
    }

    public function insert_assign(){
        $count = $this->input->post('counter');
        $assign = $this->input->post('assign_id');
        $date = $this->input->post('date_issued');
        for($x=0;$x<$count;$x++){ 
            $et_id = $this->input->post('itemid');
            $ed_id = $this->input->post('edid');
            foreach($this->super_model->select_row_where('et_head', 'et_id', $et_id[$x]) AS $ret){
                $c = count($et_id[$x]);
                $q = $this->super_model->select_sum("et_head", "qty", "et_id",$ret->et_id);
                if($c < $ret->qty){
                    $rows_et=$this->super_model->count_rows("et_head");
                    if($rows_et==0){
                        $new_etid= 1;
                    } else {
                        $series = $this->super_model->get_max("et_head", "et_id");
                        $new_etid = $series+1;
                    }
                    $et_data = array(
                        'et_id'=>$new_etid,
                        'user_id'=>$this->input->post('user_id'),
                        'et_desc'=>$ret->et_desc,
                        'unit_id'=>$ret->unit_id,   
                        'qty'=>$c,
                        'accountability_id'=>$assign,
                        'department'=>$ret->department,
                        'category_id'=>$ret->category_id,
                        'subcat_id'=>$ret->subcat_id,
                        'create_date'=>date("Y-m-d H:i:s"),
                    );
                    if($this->super_model->insert_into("et_head", $et_data)){
                        foreach($this->super_model->select_row_where('et_details', 'ed_id', $ed_id[$x]) AS $det){
                            $det_data = array(
                                'et_id'=>$new_etid,
                                'date_issued'=>$date
                            ); 
                            $this->super_model->update_where("et_details", $det_data, "ed_id", $ed_id[$x]);
                        }
                        $new_qty = $ret->qty-$c;
                        $qty_data = array(
                            'qty'=>$new_qty
                        );
                        $this->super_model->update_where('et_head', $qty_data, 'et_id', $et_id[$x]);
                    }
                }else if($c == $ret->qty){
                    $data = array(
                        'accountability_id'=>$assign
                    );
                    if($this->super_model->update_where('et_head', $data, 'et_id', $et_id[$x])){
                        foreach($this->super_model->select_row_where('et_details', 'ed_id', $ed_id[$x]) AS $det){
                            $det_data = array(
                                'date_issued'=>$date
                            ); 
                            $this->super_model->update_where("et_details", $det_data, "ed_id", $ed_id[$x]);
                        }
                    }
                }
            }
        }
    }

    public function ars_report(){  
        $this->load->view('template/header');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        foreach($this->super_model->select_row_where('return_head','return_id',$id) AS $ret){
            $data['test'] = $this->super_model->select_column_where("et_head", "accountability_id", "accountability_id", $ret->accountability_id);;
            $data['type'] = $this->super_model->select_column_where("employees", "type", "employee_id", $ret->accountability_id); 
            foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$ret->accountability_id) AS $em){
                $data['child'][] = array( 
                    'emp'=> $this->super_model->select_column_where("employees", "employee_name", "employee_id", $em->child_id), 
                );
            }
            $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ret->accountability_id);
            $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $ret->accountability_id);
            $data['ars_no'] =$this->super_model->select_column_where("return_head", "ars_no", "return_id", $ret->return_id);
            $data['return_date'] =$this->super_model->select_column_where("return_head", "return_date", "return_id", $ret->return_id);
            $data['remarks']=$this->super_model->select_column_where("return_head", "return_remarks", "return_id", $ret->return_id);
            foreach($this->super_model->select_row_where('return_details','return_id',$ret->return_id) AS $det){
                $item = $this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                $price = $this->super_model->select_column_where("et_details", "unit_price", "ed_id", $det->ed_id);
                $brand = $this->super_model->select_column_where("et_details", "brand", "ed_id", $det->ed_id);
                $model = $this->super_model->select_column_where("et_details", "model", "ed_id", $det->ed_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $det->ed_id);
                $set_id = $this->super_model->select_column_where("et_details", "set_id", "ed_id", $det->ed_id);
                $currency_id = $this->super_model->select_column_where("et_details", "currency_id", "ed_id", $det->ed_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $currency_id);
                $qty = '1';
                $total = $qty * $price;
                foreach($this->super_model->select_row_where('et_head','et_id',$det->et_id) AS $u){
                    $unit = $this->super_model->select_column_where('unit', 'unit_name', 'unit_id', $u->unit_id);
                    $data['user_id'] =$this->super_model->select_column_where("users", "fullname", "user_id", $u->user_id);
                    $data['department'] =$u->department;
                }
                $data['details'][] = array(
                    'return_id'=>$det->return_id,
                    'set_id'=>$set_id,
                    'qty'=>$qty,
                    'item'=>$item,
                    'brand'=>$brand,
                    'serial'=>$serial,
                    'model'=>$model,
                    'price'=>$price,
                    'total'=>$total,
                    'currency'=>$currency,
                    'unit'=>$unit
                );
            }
            $data['return'][] = array(
                'return_id'=>$ret->return_id,
            ); 
              
        }
        $this->load->view('report/ars_report',$data);
        $this->load->view('template/scripts');
    }

    public function transfer_report(){ 
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $id=$this->uri->segment(3); 
        $data['fullname'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        foreach($this->super_model->select_row_where("transfer_head", "accountability_id", $id) AS $info){
            $transfer_to =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $info->transfer_to);
            foreach($this->super_model->select_row_where("transfer_details", "transfer_id", $info->transfer_id) AS $det){
                $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                $cat_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $det->et_id);
                $cat =$this->super_model->select_column_where("category", "category_name", "category_id", $cat_id);
                $subcat_id =$this->super_model->select_column_where("et_head", "subcat_id", "et_id", $det->et_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "ed_id", $det->ed_id);
                $type =$this->super_model->select_column_where("et_details", "type", "ed_id", $det->ed_id);
                $model =$this->super_model->select_column_where("et_details", "model", "ed_id", $det->ed_id);
                $serial =$this->super_model->select_column_where("et_details", "serial_no", "ed_id", $det->ed_id);
                $price =$this->super_model->select_column_where("et_details", "unit_price", "ed_id", $det->ed_id);
                $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $det->et_id);
                $et_id =$this->super_model->select_column_where("et_head", "et_id", "et_id", $det->et_id);
                $data['details'][] = array(
                    "et_id"=>$det->et_id,
                    "cat"=>$cat,
                    "subcat"=>$subcat,
                    "model"=>$model,
                    "brand"=>$brand,
                    "serial"=>$serial,
                    "type"=>$type,
                    "price"=>$price
                );
            }
            $data['info'][] = array(
                "et_id"=>$et_id,
                "turnover_to"=>$transfer_to,
                "item"=>$item,
                "turnover_date"=>$info->transfer_date,
                "quantity"=>$qty,
                "remarks"=>$info->transfer_remarks
            );
        }
        $this->load->view('report/transfer_report',$data);
        $this->load->view('template/scripts');
    }

     public function transfer_pop(){  
        $this->load->view('template/header'); 
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $et_id =$this->uri->segment(4);
        $data['et_id'] =$this->uri->segment(4);
        $row=$this->super_model->count_rows_where("et_head","accountability_id",$id);
        if($row!=0){
            foreach($this->super_model->select_row_where("et_head", "et_id", $et_id) AS $head){
                $data['head'][] = array(
                    'et_id'=>$head->et_id,
                );
                foreach($this->super_model->select_row_where("et_details", "et_id", $head->et_id) AS $det){
                    $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                    $data['transfer'][] = array(
                        'ed_id'=>$det->ed_id,
                        'et_id'=>$det->et_id,
                        'serial_no'=>$det->serial_no,
                        'item'=>$item,
                        'asset_control_no'=>$det->asset_control_no,
                        'brand'=>$det->brand,
                        'model'=>$det->model,
                        'type'=>$det->type
                    );
                }  
            }
        }else {
            $data['head'] = array();
        }
        $this->load->view('report/transfer_pop',$data);
        $this->load->view('template/scripts');
    }

    public function insert_transfer(){
        $count = $this->input->post('count');
        $edid = $this->input->post('edid');
        $checked =count($edid);
        $accountability_id = $this->input->post('id');
        $et_id = $this->input->post('et_id');
        $date = $this->input->post('date');
        $remarks = $this->input->post('remarks');
        $transfer_to = $this->input->post('rec_id');
        $head_rows = $this->super_model->count_rows("transfer_head");
        if($head_rows==0){
            $transfer_id=1;
        } else {
            $maxid=$this->super_model->get_max("transfer_head", "transfer_id");
            $transfer_id=$maxid+1;
        }

        $transfer_data = array(
            'transfer_id'=> $transfer_id,
            'accountability_id'=> $accountability_id,
            'transfer_to'=> $transfer_to,
            'transfer_date'=> $date,
            'create_date'=>date("Y-m-d H:i:s"),
            'transfer_remarks'=>$remarks
        );
        $this->super_model->insert_into("transfer_head", $transfer_data);
        foreach($this->super_model->select_row_where('et_head', 'et_id', $et_id) AS $ret){
            if($checked < $ret->qty){
                $rows_et=$this->super_model->count_rows("et_head");
                if($rows_et==0){
                    $new_etid= 1;
                } else {
                    $series = $this->super_model->get_max("et_head", "et_id");
                    $new_etid = $series+1;
                }
                $et_data = array(
                    'et_id'=>$new_etid,
                    'user_id'=>$this->input->post('user_id'),
                    'et_desc'=>$ret->et_desc,
                    'unit_id'=>$ret->unit_id,
                    'qty'=>$checked,
                    'accountability_id'=>$transfer_to,
                    'department'=>$ret->department,
                    'category_id'=>$ret->category_id,
                    'subcat_id'=>$ret->subcat_id,
                    'create_date'=>date("Y-m-d H:i:s"),
                );
                if($this->super_model->insert_into("et_head", $et_data)){
                    for($x=0;$x<$checked;$x++){
                        $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);
                        foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                            $det_data = array(
                                'et_id'=>$new_etid,
                                'date_issued'=>$date
                            ); 
                            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                        }

                        $transferdet_data = array(
                            'ed_id'=>$edid[$x],
                            'et_id'=>$et_id,
                            'transfer_id'=>$transfer_id,
                            'date_issued'=>$date_issued
                        );
                        $this->super_model->insert_into("transfer_details", $transferdet_data);
                    }
                   
                    $new_qty = $count-$checked;
                    $qty_data = array(
                        'qty'=>$new_qty
                    );
                    $this->super_model->update_where('et_head', $qty_data, 'et_id', $et_id);
                    echo "<script>alert('Successfully Transfered!'); window.opener.location.reload(); window.close();</script>";
                }
            }else if($checked == $ret->qty){
                $data = array(
                    'accountability_id'=>$transfer_to
                );
                if($this->super_model->update_where('et_head', $data, 'et_id', $et_id)){
                    for($x=0;$x<$checked;$x++){
                        $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);
                        foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                            $det_data = array(
                                'date_issued'=>$date_issued
                            ); 
                            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                        }

                        $transferdet_data = array(
                            'ed_id'=>$edid[$x],
                            'et_id'=>$et_id,
                            'transfer_id'=>$transfer_id,
                            'date_issued'=>$date_issued
                        );
                        $this->super_model->insert_into("transfer_details", $transferdet_data);
                    }
                    echo "<script>alert('Successfully Transfered!'); window.opener.location.reload(); window.close();</script>";
                }
            }
        }
    }

    /*public function aaf_report(){  
        $this->load->view('template/header');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $data['employee'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $id);
        $data['aaf_no'] =$this->super_model->select_column_where("employees", "aaf_no", "employee_id", $id);
        $row=$this->super_model->count_rows_where("et_info","accountability_id",$id);
        if($row!=0){
            foreach($this->super_model->select_row_where('et_info','accountability_id',$id) AS $aaf){
                $data['date_issued'] =$this->super_model->select_column_where("et_info", "date_issued", "accountability_id", $aaf->accountability_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $aaf->unit_id);
                $data['user_id'] =$this->super_model->select_column_where("users", "fullname", "user_id", $aaf->user_id);
                $total=$aaf->qty*$aaf->unit_price;
                $data['info'][] = array(
                    'asset_control_no'=>$aaf->asset_control_no,
                    'acquisition_date'=>$aaf->acquisition_date,
                    'et_desc'=>$aaf->et_desc,
                    'qty'=>$aaf->qty,
                    'unit'=>$unit,
                    'unit_price'=>$aaf->unit_price,
                    'total'=>$total
                );
            }
        }else {
            $data['info'] = array();
            $data['date_issued'] =  '';
            $data['user_id'] =  '';
        }
        $this->load->view('report/aaf_report',$data);
        $this->load->view('template/scripts');
    }*/

    public function seaaf_report(){  
        $this->load->view('template/header');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $data['employee'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $id);
        $data['aaf_no'] =$this->super_model->select_column_where("employees", "aaf_no", "employee_id", $id);
        $row=$this->super_model->count_rows_where("et_head","accountability_id",$id);
        if($row!=0){
            foreach($this->super_model->select_row_where('et_head','accountability_id',$id) AS $aaf){
                $data['type'] = $this->super_model->select_column_where("employees", "type", "employee_id", $aaf->accountability_id); 
                foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$aaf->accountability_id) AS $em){
                    $data['child'][] = array( 
                        'emp'=> $this->super_model->select_column_where("employees", "employee_name", "employee_id", $em->child_id), 
                    );
                }
                $data['date_issued'] =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $aaf->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $aaf->unit_id);
                $data['user_id'] =$this->super_model->select_column_where("users", "fullname", "user_id", $aaf->user_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $aaf->accountability_id);
                $data['department'] =$aaf->department;
                $qty = 1;
                foreach($this->super_model->select_row_where('et_details', 'et_id', $aaf->et_id) AS $det){
                    $total=$qty*$det->unit_price;
                    $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $det->currency_id);
                    $data['details'][] = array(
                        'set_id'=>$det->set_id,
                        'acquisition_date'=>$det->acquisition_date,
                        'asset_control_no'=>$det->asset_control_no,
                        'et_desc'=>$aaf->et_desc,
                        'unit'=>$unit,
                        'qty'=>$qty,
                        'date_issued'=>$det->date_issued,
                        'unit_price'=>$det->unit_price,
                        'currency'=>$currency,
                        'total'=>$total
                    );
                }
            }
        }else {
            $data['details'] = array();
            $data['department'] =  '';
            $data['type'] =  '';
            $data['date_issued'] =  '';
            $data['user_id'] =  '';
        }
        $this->load->view('report/seaaf_report',$data);
        $this->load->view('template/scripts');
    }

    public function acf_report(){  
        $this->load->view('template/header');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        foreach($this->super_model->select_row_where('return_head','return_id',$id) AS $ret){
            $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ret->accountability_id);
            $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $ret->accountability_id);
            $data['ars_no'] =$this->super_model->select_column_where("return_head", "ars_no", "return_id", $ret->return_id);
            $data['atf_no']=$this->super_model->select_column_where("return_head", "atf_no", "return_id", $ret->return_id);
            $data['return_date'] =$this->super_model->select_column_where("return_head", "return_date", "return_id", $ret->return_id);
            $data['remarks']=$this->super_model->select_column_where("return_head", "return_remarks", "return_id", $ret->return_id);
            foreach($this->super_model->select_row_where('return_details','return_id',$ret->return_id) AS $det){
                $date_issued = $this->super_model->select_column_where("return_details", "date_issued", "ed_id", $det->ed_id);
                $asset_control_no = $this->super_model->select_column_where("et_details", "asset_control_no", "ed_id", $det->ed_id);
                $item = $this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                $price = $this->super_model->select_column_where("et_details", "unit_price", "ed_id", $det->ed_id);
                $brand = $this->super_model->select_column_where("et_details", "brand", "ed_id", $det->ed_id);
                $model = $this->super_model->select_column_where("et_details", "model", "ed_id", $det->ed_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $det->ed_id);
                $qty = '1';
                $total = $qty * $price;
                foreach($this->super_model->select_row_where('et_head','et_id',$det->et_id) AS $u){
                    $unit = $this->super_model->select_column_where('unit', 'unit_name', 'unit_id', $u->unit_id);
                    $data['user_id'] =$this->super_model->select_column_where("users", "fullname", "user_id", $u->user_id);
                    $data['department'] =$u->department;
                }
                $data['details'][] = array(
                    'return_id'=>$det->return_id,
                    'qty'=>$qty,
                    'date_issued'=>$date_issued,
                    'asset_control_no'=>$asset_control_no,
                    'item'=>$item,
                    'brand'=>$brand,
                    'serial'=>$serial,
                    'model'=>$model,
                    'price'=>$price,
                    'total'=>$total,
                    'unit'=>$unit
                );
            }
            $data['return'][] = array(
                'return_id'=>$ret->return_id,
            );   
        }
        $this->load->view('report/acf_report',$data);
        $this->load->view('template/scripts');
    }

    public function multi_transfer(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $id=$this->uri->segment(3); 
        $data['id']=$this->uri->segment(3); 
        $data['fullname'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $id);
        $location_id = $this->super_model->select_column_where("employees", "location_id", "employee_id", $id);
        $data['location'] = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
        $row=$this->super_model->count_rows_where("et_head","accountability_id",$id);
        if($row!=0){
            foreach($this->super_model->select_row_where("et_head", "accountability_id", $id) AS $mul){
                /*$acn = $this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $mul->et_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "et_id", $mul->et_id);
                $price = $this->super_model->select_column_where("et_details", "unit_price", "et_id", $mul->et_id);*/
                $data['multiturn'][] = array(
                    'etid'=>$mul->et_id,
                    'item'=>$mul->et_desc
                );
                foreach($this->super_model->select_row_where("et_details", "et_id", $mul->et_id) AS $det){
                    $data['details'][] = array(
                        'edid'=>$det->ed_id,
                        'etid'=>$det->et_id,
                        'acn'=>$det->asset_control_no,
                        'serial'=>$det->serial_no,
                        'price'=>$det->unit_price
                    );
                }
            }
        }else {
            $data['multiturn'] = array();
        }
        $this->load->view('report/multi_transfer',$data);
        $this->load->view('template/scripts');
    }

    public function insert_multitransfer(){
        $count = $this->input->post('count');
        $accountability_id = $this->input->post('id');
        $edid = $this->input->post('edid');
        $checked =count($edid);
        $date = $this->input->post('date');
        $remarks = $this->input->post('remarks');
        $transfer_to = $this->input->post('rec_id');
        $head_rows = $this->super_model->count_rows("transfer_head");
        if($head_rows==0){
            $transfer_id=1;
        } else {
            $maxid=$this->super_model->get_max("transfer_head", "transfer_id");
            $transfer_id=$maxid+1;
        }

        $transferhead_data = array(
            'transfer_id'=> $transfer_id,
            'accountability_id'=> $accountability_id,
            'transfer_to'=> $transfer_to,
            'transfer_date'=> $date,
            'create_date'=>date("Y-m-d H:i:s"),
            'transfer_remarks'=>$remarks
        );
        $this->super_model->insert_into("transfer_head", $transferhead_data);

        foreach($edid AS $ed){
            $e = $this->super_model->select_column_where("et_details", "et_id", "ed_id", $ed);
            $et[] = array(
                $e=>'1'
            );
        }

        $sumArray = array();
        //$a=0;
        foreach ($et as $k=>$subArray) {
            foreach ($subArray as $id=>$value) {
                $sumArray[$id]+=$value;
            }
        }

        /*print_r($sumArray);*/
        $y=0;
        foreach($sumArray AS $key=>$val){
            foreach($this->super_model->select_row_where('et_head', 'et_id', $key) AS $ret){
                $q = $this->super_model->select_sum("et_head", "qty", "et_id",$ret->et_id);
                if($val < $ret->qty){
                    $rows_et=$this->super_model->count_rows("et_head");
                    if($rows_et==0){
                        $new_etid= 1;
                    } else {
                        $series = $this->super_model->get_max("et_head", "et_id");
                        $new_etid = $series+1;
                    }
                    $et_data = array(
                        'et_id'=>$new_etid,
                        'user_id'=>$this->input->post('user_id'),
                        'et_desc'=>$ret->et_desc,
                        'unit_id'=>$ret->unit_id,
                        'qty'=>$val,
                        'accountability_id'=>$transfer_to,
                        'department'=>$ret->department,
                        'category_id'=>$ret->category_id,
                        'subcat_id'=>$ret->subcat_id,
                        'create_date'=>date("Y-m-d H:i:s"),
                    );
                    if($this->super_model->insert_into("et_head", $et_data)){
                        for($x=0;$x<$val;$x++){
                            /*$date_issued = $this->super_model->select_column_custom_where("et_details", "date_issued", "et_id = '$ret->et_id' AND ed_id= '$edid[$x]'");*/
                            $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);
                            foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                                $det_data = array(
                                    'et_id'=>$new_etid,
                                    'date_issued'=>$date
                                ); 
                                $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                            }
                        }
                        $transferdet_data = array(
                            'et_id'=>$ret->et_id,
                            'ed_id'=>$edid[$y],
                            'transfer_id'=>$transfer_id,
                            'date_issued'=>$date_issued
                        );
                        $this->super_model->insert_into("transfer_details", $transferdet_data);
                        $new_qty = $q-$val;
                        $qty_data = array(
                            'qty'=>$new_qty,
                        );
                        $this->super_model->update_where('et_head', $qty_data, 'et_id', $ret->et_id);
                        echo "<script>alert('Successfully Transfered!'); window.location = '".base_url()."index.php/report/report_main_emp';</script>";
                    }
                } else if($val == $ret->qty){
                    $data = array(
                        'accountability_id'=>$transfer_to,
                    );
                   
                    if($this->super_model->update_where('et_head', $data, 'et_id', $key)){
                        for($x=0;$x<$checked;$x++){
                            $count_exist = $this->super_model->count_custom_where("et_details","et_id = '$ret->et_id' AND ed_id= '$edid[$x]'");
                           /* $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);*/
                            $date_issued = $this->super_model->select_column_custom_where("et_details", "date_issued", "et_id = '$ret->et_id' AND ed_id= '$edid[$x]'");
                            if($count_exist!=0){
                                $returndet_data = array(
                                    'et_id'=>$ret->et_id,
                                    'ed_id'=>$edid[$x],
                                    'transfer_id'=>$transfer_id,
                                    'date_issued'=>$date_issued
                                );
                                $this->super_model->insert_into("transfer_details", $returndet_data);
                                foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                                    $det_data = array(
                                        'date_issued'=>$date
                                    ); 
                                    $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                                }
                            }
                        }
                    }
                    echo "<script>alert('Successfully Transfered!'); window.location = '".base_url()."index.php/report/report_main_emp';</script>";
                }
            }
        $y++;
        } 
    }

    public function multi_return(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $id=$this->uri->segment(3); 
        $data['id']=$this->uri->segment(3); 
        $data['fullname'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $id);
        $location_id = $this->super_model->select_column_where("employees", "location_id", "employee_id", $id);
        $data['location'] = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
        $row=$this->super_model->count_rows_where("et_head","accountability_id",$id);
        if($row!=0){
            foreach($this->super_model->select_row_where("et_head", "accountability_id", $id) AS $mul){
                /*$acn = $this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $mul->et_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "et_id", $mul->et_id);
                $price = $this->super_model->select_column_where("et_details", "unit_price", "et_id", $mul->et_id);*/
                $data['multi'][] = array(
                    'id'=>$mul->et_id,
                    'item'=>$mul->et_desc
                );
                foreach($this->super_model->select_row_where("et_details", "et_id", $mul->et_id) AS $det){
                    $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $det->currency_id);
                    $data['details'][] = array(
                        'set_id'=>$det->set_id,
                        'edid'=>$det->ed_id,
                        'id'=>$det->et_id,
                        'acn'=>$det->asset_control_no,
                        'serial'=>$det->serial_no,
                        'price'=>$det->unit_price,
                        'currency'=>$currency
                    );
                }
            }
        }else {
            $data['multi'] = array();
        }
        $this->load->view('report/multi_return',$data);
        $this->load->view('template/scripts');
    }

    public function insert_multireturn(){
        $count = $this->input->post('count');
        $accountability_id = $this->input->post('id');
       // $et_id = $this->input->post('et_id');
        $edid = $this->input->post('edid');
        $checked =count($edid);
        $date = $this->input->post('date');
        $remarks = $this->input->post('remarks');
        $ars_no = $this->input->post('ars_no');
        $received_by = $this->input->post('rec_id');

        $atf_format = date("Y");
        $prefix= $this->super_model->select_column_custom_where("return_head", "atf_no", "return_date LIKE '$atf_format%'");
        $rows=$this->super_model->count_custom_where("return_head","atf_no = '$prefix'");
        if($rows==0){
            $atf_no= $atf_format."-1001";
        } else {
            $series = $this->super_model->get_max("atf_series", "series","atf_prefix = '$prefix'");
            $next=$series+1;
            $atf_no = $atf_format."-".$next;
        }

        $atfdetails=explode("-", $atf_no);
        $atf_prefix=$atfdetails[0];
        $series = $atfdetails[1];

        $atf_data= array(
            'atf_prefix'=>$atf_prefix,
            'series'=>$series
        );
        $this->super_model->insert_into("atf_series", $atf_data);
        
        $head_rows = $this->super_model->count_rows("return_head");
        if($head_rows==0){
            $return_id=1;
        } else {
            $maxid=$this->super_model->get_max("return_head", "return_id");
            $return_id=$maxid+1;
        }

        $returnhead_data = array(
            'return_id'=> $return_id,
            'accountability_id'=> $accountability_id,
            'received_by'=> $received_by,
            'return_date'=> $date,
            'create_date'=>date("Y-m-d H:i:s"),
            'atf_no'=> $atf_no,
            'ars_no'=> $ars_no,
            'return_remarks'=>$remarks
        );

        if($this->super_model->insert_into("return_head", $returnhead_data)){

         $ars = $this->input->post('ars_no');
            $assetdetails=explode("-", $ars);
            $subcat_prefix1=$assetdetails[0];
            $subcat_prefix2=$assetdetails[1];
            $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
            $series = $assetdetails[2];
            $ars_data= array(
                'prefix'=>$subcat_prefix,
                'series'=>$series
            );
         $this->super_model->insert_into("returned_series", $ars_data);
        }

        foreach($edid AS $ed){
            $e = $this->super_model->select_column_where("et_details", "et_id", "ed_id", $ed);
            $et[] = array(
                $e=>'1'
            );
        }

        $sumArray = array();
        //$a=0;
        foreach ($et as $k=>$subArray) {
            foreach ($subArray as $id=>$value) {
                $sumArray[$id]+=$value;
            }
        }

        /*print_r($sumArray);*/
        $y=0;
        foreach($sumArray AS $key=>$val){
            foreach($this->super_model->select_row_where('et_head', 'et_id', $key) AS $ret){
                $q = $this->super_model->select_sum("et_head", "qty", "et_id",$ret->et_id);
               
                if($val < $ret->qty){
                    $rows_et=$this->super_model->count_rows("et_head");
                    if($rows_et==0){
                        $new_etid= 1;
                    } else {
                        $series = $this->super_model->get_max("et_head", "et_id");
                        $new_etid = $series+1;
                    }
                    $et_data = array(
                        'et_id'=>$new_etid,
                        'user_id'=>$this->input->post('user_id'),
                        'et_desc'=>$ret->et_desc,
                        'unit_id'=>$ret->unit_id,
                        'qty'=>$val,
                        'accountability_id'=>0,
                        'department'=>$ret->department,
                        'category_id'=>$ret->category_id,
                        'subcat_id'=>$ret->subcat_id,
                        'create_date'=>date("Y-m-d H:i:s"),
                    );
                    if($this->super_model->insert_into("et_head", $et_data)){
                        for($x=0;$x<$val;$x++){
                            /*$date_issued = $this->super_model->select_column_custom_where("et_details", "date_issued", "et_id = '$ret->et_id' AND ed_id= '$edid[$x]'");*/
                            $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);
                            foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                                $det_data = array(
                                    'et_id'=>$new_etid,
                                    'date_issued'=>''
                                ); 
                                $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                            }
                        }
                        $returndet_data = array(
                            'et_id'=>$ret->et_id,
                            'ed_id'=>$edid[$y],
                            'return_id'=>$return_id,
                            'date_issued'=>$date_issued
                        );
                        $this->super_model->insert_into("return_details", $returndet_data);
                        $new_qty = $q-$val;
                        $qty_data = array(
                            'qty'=>$new_qty,
                        );
                        $this->super_model->update_where('et_head', $qty_data, 'et_id', $ret->et_id);
                        echo "<script>alert('Successfully Returned!'); window.location = '".base_url()."index.php/report/ars_report/$return_id';</script>";
                    }
                } else if($val == $ret->qty){
                    $data = array(
                        'accountability_id'=>0,
                    );
                   
                    if($this->super_model->update_where('et_head', $data, 'et_id', $key)){
                        for($x=0;$x<$checked;$x++){
                            $count_exist = $this->super_model->count_custom_where("et_details","et_id = '$ret->et_id' AND ed_id= '$edid[$x]'");
                           /* $date_issued = $this->super_model->select_column_where("et_details", "date_issued", "ed_id", $edid[$x]);*/
                            $date_issued = $this->super_model->select_column_custom_where("et_details", "date_issued", "et_id = '$ret->et_id' AND ed_id= '$edid[$x]'");
                            if($count_exist!=0){
                                $returndet_data = array(
                                    'et_id'=>$ret->et_id,
                                    'ed_id'=>$edid[$x],
                                    'return_id'=>$return_id,
                                    'date_issued'=>$date_issued
                                );
                                $this->super_model->insert_into("return_details", $returndet_data);
                                foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                                    $det_data = array(
                                        'date_issued'=>''
                                    ); 
                                    $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                                }
                            }
                        }
                    }
                    echo "<script>alert('Successfully Returned!'); window.location = '".base_url()."index.php/report/ars_report/$return_id';</script>";
                }
            }
        $y++;
        }
    }   

    public function export_equipment(){
        require_once(APPPATH.'../assets/js/phpexcel/Classes/PHPExcel/IOFactory.php');
        $objPHPExcel = new PHPExcel();
        $exportfilename="Equipment Tools.xlsx";
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1', "Equipment and Tools Fields");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A2', "Category");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B2', "Asset Control No.");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C2', "Acquisition Date");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D2', "Item Description");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E2', "Brand");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F2', "Model");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G2', "Serial No.");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H2', "QTY");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I2', "UOM");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J2', "Date Issued ");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K2', "Accountability");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L2', "Status");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M2', "Office / Department");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N2', "Unit Cost");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O2', "Total Cost");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P2', "Remarks");
        $styleArray = array(
          'borders' => array(
            'allborders' => array(
              'style' => PHPExcel_Style_Border::BORDER_THIN
            )
          )
        );
        $num=3;

        $from=$this->uri->segment(3);
        $to=$this->uri->segment(4);
        $category=$this->uri->segment(5);
        $subcat=$this->uri->segment(6);
        $department=str_replace("%20"," ",$this->uri->segment(7));
        $item=str_replace("%20"," ",$this->uri->segment(8));
        $brand=str_replace("%20"," ",$this->uri->segment(9));
        $model=str_replace("%20"," ",$this->uri->segment(10));
        $type=str_replace("%20"," ",$this->uri->segment(11));
        $serial=str_replace("%20"," ",$this->uri->segment(12));
        $damage=$this->uri->segment(13);
        $sql="";
        $filter = " ";

        if($from!='null' && $to!='null'){
           $sql.= " et_details.acquisition_date BETWEEN '$from' AND '$to' AND";
           $filter .= "Acquisition Date - ".$from.' <strong>To</strong> '.$to.", ";
        }

        if($category!='null'){
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= "Category - ".$cat.", ";
        }

        if($subcat!='null'){
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= "Sub Category - ".$subcat.", ";
        }

        if($department!='null'){
            $sql.=" et_head.department LIKE '%$department%' AND";
            $filter .= "Department - ".$department.", ";
        }

        if($item!='null'){
            $sql.=" et_head.et_desc LIKE '%$item%' AND";

            $filter .= "Item Desc - ".$item.", ";
        }

        if($brand!='null'){
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= "Brand - ".$brand.", ";
        }

        if($model!='null'){
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= "Model - ".$model.", ";
        }

        if($type!='null'){
            $sql.=" et_details.type LIKE '%$type%' AND";
            $filter .= "Type - ".$type.", ";
        }

        if($serial!='null'){
            $sql.=" et_details.serial_no LIKE '%$serial%' AND";
            $filter .= "Serial No. - ".$serial.", ";
        }

        if($damage!='null'){
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= "Damage Items, ";
        }
        $array = array($from,$to);
        $query=substr($sql, 0, -3);

        /*foreach($this->super_model->select_custom_where('et_head', 'accountability_id!=0') AS $et){*/
        if($from!='' && $to!='' && $category!='' && $subcat!='' && $department!='' && $item!='' && $brand!='' && $model!='' && $type!='' && $serial!='' && $damage!=''){
            foreach ($this->super_model->select_join_where("et_head", "et_details", $query, "et_id") AS $et){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $empid =$this->super_model->select_column_where("employees", "employee_id", "employee_id", $et->accountability_id);
                $department =$et->department;
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $asset_control_no =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);
                $date_issued =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $et->et_id);
                $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $et->et_id);
                $currency_id =$this->super_model->select_column_where("et_details", "currency_id", "et_id", $et->et_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $currency_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                /*$department =$this->super_model->select_column_where("employees", "department", "employee_id", $et->accountability_id);*/
                if($et->accountability_id!=0 && $borrowed==0){
                    $status = 'Assigned';
                }else if($et->accountability_id==0 && $damaged==0){
                    $status = 'Available';
                }else if($borrowed==1){
                    $status = 'Borrowed';
                }else if($damaged==1){
                    $status = 'Damaged';
                }
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$num, $category);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B'.$num, $asset_control_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C'.$num, $acquisition_date);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D'.$num, $et->et_desc);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E'.$num, $brand);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F'.$num, $model);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G'.$num, $serial_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H'.$num, $et->qty);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I'.$num, $unit);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J'.$num, $date_issued);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K'.$num, $employee);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L'.$num, $status);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M'.$num, $department);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N'.$num, $unit_price.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O'.$num, $total.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P'.$num, $remarks);
                /*$objPHPExcel->getActiveSheet()->mergeCells('A'.$num.":B".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('C'.$num.":D".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('E'.$num.":F".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('G'.$num.":J".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('K'.$num.":L".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('M'.$num.":N".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('O'.$num.":P".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('S'.$num.":T".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('U'.$num.":V".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('W'.$num.":X".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('AA'.$num.":AD".$num);*/
                $objPHPExcel->getActiveSheet()->getStyle('A'.$num.":P".$num)->applyFromArray($styleArray);
                $objPHPExcel->getActiveSheet()->getStyle('Q'.$num.":R".$num)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $objPHPExcel->getActiveSheet()->getStyle('Y'.$num.":Z".$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getProtection()->setSheet(true);    
                $objPHPExcel->getActiveSheet()->protectCells('A'.$num.":P".$num,'admin');
                $num++;
            }
        }else {
            foreach($this->super_model->select_custom_where('et_head', 'accountability_id!=0') AS $et){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $empid =$this->super_model->select_column_where("employees", "employee_id", "employee_id", $et->accountability_id);
                $department =$et->department;
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $asset_control_no =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);
                $date_issued =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $et->et_id);
                $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $et->et_id);
                /*$currency =$this->super_model->select_column_where("et_details", "currency", "et_id", $et->et_id);*/
                $currency_id =$this->super_model->select_column_where("et_details", "currency_id", "et_id", $et->et_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $currency_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                /*$department =$this->super_model->select_column_where("employees", "department", "employee_id", $et->accountability_id);*/
                if($et->accountability_id!=0 && $borrowed==0){
                    $status = 'Assigned';
                }else if($et->accountability_id==0){
                    $status = 'Available';
                }else if($borrowed==1){
                    $status = 'Borrowed';
                }else if($damaged==1){
                    $status = 'Damaged';
                }

                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$num, $category);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B'.$num, $asset_control_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C'.$num, $acquisition_date);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D'.$num, $et->et_desc);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E'.$num, $brand);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F'.$num, $model);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G'.$num, $serial_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H'.$num, $et->qty);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I'.$num, $unit);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J'.$num, $date_issued);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K'.$num, $employee);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L'.$num, $status);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M'.$num, $department);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N'.$num, $unit_price.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O'.$num, $total.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P'.$num, $remarks);
                /*$objPHPExcel->getActiveSheet()->mergeCells('A'.$num.":B".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('C'.$num.":D".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('E'.$num.":F".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('G'.$num.":J".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('K'.$num.":L".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('M'.$num.":N".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('O'.$num.":P".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('S'.$num.":T".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('U'.$num.":V".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('W'.$num.":X".$num);
                $objPHPExcel->getActiveSheet()->mergeCells('AA'.$num.":AD".$num);*/
                $objPHPExcel->getActiveSheet()->getStyle('A'.$num.":P".$num)->applyFromArray($styleArray);
                $objPHPExcel->getActiveSheet()->getStyle('Q'.$num.":R".$num)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $objPHPExcel->getActiveSheet()->getStyle('Y'.$num.":Z".$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getProtection()->setSheet(true);    
                $objPHPExcel->getActiveSheet()->protectCells('A'.$num.":P".$num,'admin');
                $num++;
            }
        }
        /*$objPHPExcel->getActiveSheet()->mergeCells('A1:D1');
        $objPHPExcel->getActiveSheet()->mergeCells('A2:B2');
        $objPHPExcel->getActiveSheet()->mergeCells('C2:D2');
        $objPHPExcel->getActiveSheet()->mergeCells('E2:F2');
        $objPHPExcel->getActiveSheet()->mergeCells('G2:J2');
        $objPHPExcel->getActiveSheet()->mergeCells('K2:L2');
        $objPHPExcel->getActiveSheet()->mergeCells('M2:N2');
        $objPHPExcel->getActiveSheet()->mergeCells('O2:P2');
        $objPHPExcel->getActiveSheet()->mergeCells('S2:T2');
        $objPHPExcel->getActiveSheet()->mergeCells('U2:V2');
        $objPHPExcel->getActiveSheet()->mergeCells('W2:X2');
        $objPHPExcel->getActiveSheet()->mergeCells('AA2:AD2');*/
        $objPHPExcel->getActiveSheet()->getStyle('A2:P2')->applyFromArray($styleArray);
        $objPHPExcel->getActiveSheet()->getStyle('A2:P2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objPHPExcel->getActiveSheet()->getStyle('A2:P2')->getFont()->setBold(true)->setName('Arial')->setSize(9.5);
        $objPHPExcel->getActiveSheet()->getStyle('A1:D1')->getFont()->setBold(true)->setName('Arial Black')->setSize(12);
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
        if (file_exists($exportfilename))
        unlink($exportfilename);
        $objWriter->save($exportfilename);
        unset($objPHPExcel);
        unset($objWriter);   
        ob_end_clean();
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Equipment Tools.xlsx"');
        readfile($exportfilename);
    }
}

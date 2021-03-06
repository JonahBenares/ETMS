<?php
/*error_reporting(0);*/
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

    public function inv_rep_itm(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $data['set1']=$this->super_model->select_all_order_by("et_set","set_name","ASC");
        $row=$this->super_model->count_rows("et_head");
        if($row!=0){
            foreach($this->super_model->select_all_order_by("et_head",'et_id','ASC') AS $ss){
                $counts = $this->super_model->count_rows_where('et_details','et_id',$ss->et_id);
                /*foreach($this->super_model->select_row_where("et_details","et_id",$ss->et_id) AS $r){
                    $setss = $this->super_model->select_column_where("et_set", "set_name", "set_id", $r->set_id);
                    $set_id = $r->set_id;
                }*/
                $set_id = $this->super_model->select_column_where("et_details","set_id","et_id",$ss->et_id);
                $sets = $this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                //$avcount = $this->super_model->count_custom_where('et_head',"accountability_id='0' AND et_id = '$ss->et_id'");
                //$incount = $this->super_model->count_custom_where('et_head',"accountability_id!='0' AND et_id = '$ss->et_id'");
                foreach($this->super_model->custom_query("SELECT COUNT(ed.et_id) AS av FROM et_head eh LEFT JOIN et_details ed ON eh.et_id = ed.et_id WHERE eh.accountability_id='0' AND ed.et_id = '$ss->et_id'") AS $av){
                    $avcount = $av->av;
                }

                foreach($this->super_model->custom_query("SELECT COUNT(ed.et_id) AS incount FROM et_head eh LEFT JOIN et_details ed ON eh.et_id = ed.et_id WHERE eh.accountability_id!='0' AND ed.et_id = '$ss->et_id'") AS $inc){
                    $incount = $inc->incount;
                }
                
                $data['itema'][]= array(
                    'item_id'=>$ss->et_id,
                    'set_id'=>$set_id,
                    'item'=>$ss->et_desc,
                    'set'=>$sets,
                    'count'=>$counts,
                    'avcount'=>$avcount,
                    'incount'=>$incount,
                );
            }
        }else {
            $data['itema'] = array();
        }
        $this->load->view('report/inv_rep_itm',$data);
        $this->load->view('template/scripts');
    }

    public function inv_rep_overall(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $row=$this->super_model->count_rows("et_head");
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $data['placement'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['company1'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        if($row!=0){
            foreach($this->super_model->select_all_order_by("et_head",'et_desc','ASC') AS $ss){
                foreach($this->super_model->select_row_where("et_details","et_id",$ss->et_id) AS $r){
                    $category = $this->super_model->select_column_where("category","category_name","category_id",$ss->category_id);
                    $subcategory = $this->super_model->select_column_where("subcategory","subcat_name","subcat_id",$ss->subcat_id);
                    $employee = $this->super_model->select_column_where("employees","employee_name","employee_id",$ss->accountability_id);
                    $location = $this->super_model->select_column_where("location","location_name","location_id",$r->location_id);
                    $item_desc = $ss->et_desc.", ".$r->brand.", ".$r->model.", ".$r->serial_no;
                    $data['details'][]= array(
                        'et_id'=>$ss->et_id,
                        'item'=>$item_desc,
                        'qty'=>1,
                        'department'=>$ss->department,
                        'accountability_id'=>$ss->accountability_id,
                        'employee'=>$employee,
                        'category'=>$category,
                        'subcategory'=>$subcategory,
                        'borrowed'=>$r->borrowed,
                        'damaged'=>$r->damage,
                        'change_location'=>$r->change_location,
                        'lost'=>$r->lost,
                        'location'=>$location,
                        'unit_price'=>$r->unit_price,
                    );
                } 
            }
        }else {
            $data['details'] = array();
        }
        $this->load->view('report/inv_rep_overall', $data);
        $this->load->view('template/scripts');
    }

    public function search_inv_overall(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');

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

        if(!empty($this->input->post('condition'))){
            $data['condition'] = $this->input->post('condition');
        } else {
            $data['condition'] = "null";
        }

        if(!empty($this->input->post('placement'))){
            $data['plac'] = $this->input->post('placement');
        } else {
            $data['plac'] = "null";
        }

        if(!empty($this->input->post('company'))){
            $data['company'] = $this->input->post('company');
        } else {
            $data['company'] = "null";
        }

        $sql="";
        $filter = " ";
        if(!empty($this->input->post('from')) && !empty($this->input->post('to'))){
            $from = $this->input->post('from');
            $to = $this->input->post('to');
            $sql.= " ed.acquisition_date BETWEEN '$from' AND '$to' AND";
            $filter .= "Acquisition Date - ".$from.' <strong>To</strong> '.$to.", ";
        }

        if(!empty($this->input->post('category'))){
            $category = $this->input->post('category');
            $sql.=" eh.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= "Category - ".$cat.", ";
        }

        if(!empty($this->input->post('subcat'))){
            $subcat = $this->input->post('subcat');
            $sql.=" eh.subcat_id = '$subcat' AND";
            $subcat1 = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= "Sub Category - ".$subcat1.", ";
        }

        if(!empty($this->input->post('department'))){
            $department = $this->input->post('department');
            $sql.=" eh.department LIKE '%$department%' AND";
            $filter .= "Department - ".$department.", ";
        }

        if(!empty($this->input->post('item'))){
            $item = $this->input->post('item');
            $sql.=" eh.et_desc LIKE '%$item%' AND";
            $filter .= "Item Description - ".$item.", ";
        }

        if(!empty($this->input->post('brand'))){
            $brand = $this->input->post('brand');
            $sql.=" ed.brand LIKE '%$brand%' AND";
            $filter .= "Brand - ".$brand.", ";
        }

        if(!empty($this->input->post('model'))){
            $model = $this->input->post('model');
            $sql.=" ed.model LIKE '%$model%' AND";
            $filter .= "Model - ".$model.", ";
        }

        if(!empty($this->input->post('item_type'))){
            $item_type = $this->input->post('item_type');
            $sql.=" ed.type LIKE '%$item_type%' AND";
            $filter .= "Type - ".$item_type.", ";
        }

        if(!empty($this->input->post('serial_no'))){
            $serial_no = $this->input->post('serial_no');
            $sql.=" ed.serial_no LIKE '%$serial_no%' AND";
            $filter .= "Serial No. - ".$serial_no.", ";
        }

        if(!empty($this->input->post('damage'))){
            $damage = $this->input->post('damage');
            $sql.=" ed.damage = '$damage' AND";
            $filter .= "Damage Items, ";
        }

        if(!empty($this->input->post('condition'))){
            $condition = $this->input->post('condition');
            $sql.=" ed.physical_condition LIKE '%$condition%' AND";
            $filter .= "Physical Condition - ".$condition.", ";
        }

        if(!empty($this->input->post('placement'))){
            $placement = $this->input->post('placement');
            $sql.=" ed.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= "Placement - ".$place.", ";
        }

        if(!empty($this->input->post('company'))){
            $company = $this->input->post('company');
            $sql.=" ed.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .= "company - ".$rr.", ";
        }

        $query=substr($sql, 0, -3);
        $data['filt']=substr($filter, 0, -2);
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $data['placement'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['company1'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        foreach ($this->super_model->custom_query("SELECT * FROM et_head eh LEFT JOIN et_details ed ON eh.et_id = ed.et_id WHERE ".$query) AS $et){
            $category = $this->super_model->select_column_where("category","category_name","category_id",$et->category_id);
            $subcategory = $this->super_model->select_column_where("subcategory","subcat_name","subcat_id",$et->subcat_id);
            $employee = $this->super_model->select_column_where("employees","employee_name","employee_id",$et->accountability_id);
            $location = $this->super_model->select_column_where("location","location_name","location_id",$et->location_id);
            $item_desc = $et->et_desc.", ".$et->brand.", ".$et->model.", ".$et->serial_no;
            $data['details'][]= array(
                'et_id'=>$et->et_id,
                'item'=>$item_desc,
                'qty'=>1,
                'department'=>$et->department,
                'accountability_id'=>$et->accountability_id,
                'employee'=>$employee,
                'category'=>$category,
                'subcategory'=>$subcategory,
                'borrowed'=>$et->borrowed,
                'damaged'=>$et->damage,
                'change_location'=>$et->change_location,
                'lost'=>$et->lost,
                'location'=>$location,
                'unit_price'=>$et->unit_price,
            );
        }
        $this->load->view('report/inv_rep_overall',$data);
        $this->load->view('template/scripts');
    }

    public function export_overall(){
        require_once(APPPATH.'../assets/js/phpexcel/Classes/PHPExcel/IOFactory.php');
        $objPHPExcel = new PHPExcel();
        $exportfilename="Overall Report.xlsx";
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1', "Overall Report");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A2', "Item Description");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B2', "Qty");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C2', "Price");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D2', "Category");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E2', "Subcategory");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F2', "Department");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G2', "Status / Accountability");
        $styleArray = array(
          'borders' => array(
            'allborders' => array(
              'style' => PHPExcel_Style_Border::BORDER_THIN
            )
          )
        );
        foreach(range('A','G') as $columnID){
            $objPHPExcel->getActiveSheet()->getColumnDimension($columnID)->setAutoSize(true);
        }
        $num=3;
        $from=$this->uri->segment(3);
        $to=$this->uri->segment(4);
        $category=$this->uri->segment(5);
        $subcat=$this->uri->segment(6);
        $department=str_replace("%20"," ",$this->uri->segment(7));
        if(stripos($this->uri->segment(8), "%20%20") !== false) {
            $item=str_replace("%20%20",", ",$this->uri->segment(8));
        } else if(stripos($this->uri->segment(8), "%20") !== false) {
            $item=str_replace("%20"," ",$this->uri->segment(8));
        }else{
            $item=$this->uri->segment(8);
        }
        $brand=str_replace("%20"," ",$this->uri->segment(9));
        $model=str_replace("%20"," ",$this->uri->segment(10));
        $type=str_replace("%20"," ",$this->uri->segment(11));
        $serial=str_replace("%20"," ",$this->uri->segment(12));
        $damage=$this->uri->segment(13);
        $condition=$this->uri->segment(14);
        $placement=$this->uri->segment(15);
        $company=$this->uri->segment(16);

        $sql="";
        $filter = "";

        if($from!='null' && $to!='null'){
            $sql.= " ed.acquisition_date BETWEEN '$from' AND '$to' AND";
            $filter .= $from.''.$to;
        }

        if($category!='null'){
            $sql.=" eh.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= $cat;
        }

        if($subcat!='null'){
            $sql.=" eh.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= $subcat;
        }

        if($department!='null'){
            $sql.=" eh.department LIKE '%$department%' AND";
            $filter .= $department;
        }

        if($item!='null'){
            $sql.=" eh.et_desc LIKE '%$item%' AND";

            $filter .= $item;
        }

        if($brand!='null'){
            $sql.=" ed.brand LIKE '%$brand%' AND";
            $filter .= $brand;
        }

        if($model!='null'){
            $sql.=" ed.model LIKE '%$model%' AND";
            $filter .= $model;
        }

        if($type!='null'){
            $sql.=" ed.type LIKE '%$type%' AND";
            $filter .= $type;
        }

        if($serial!='null'){
            $sql.=" ed.serial_no LIKE '%$serial%' AND";
            $filter .= $serial;
        }

        if($damage!='null'){
            $sql.=" ed.damage = '$damage' AND";
            $filter .= $damage;
        }

        if($condition!='null'){
            $sql.=" ed.physical_condition LIKE '%$condition%' AND";
            $filter .= $condition;
        }

        if($placement!='null'){
            $sql.=" ed.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= $place;
        }

        if($company!='null'){
            $sql.=" ed.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .= $rr;
        }
        $array = array($from,$to);
        $query=substr($sql, 0, -3);
        $filters=substr($filter, 0, -2);
        if($filters!=''){
            foreach ($this->super_model->custom_query("SELECT * FROM et_head eh LEFT JOIN et_details ed ON eh.et_id = ed.et_id WHERE ".$query) AS $et){
                $department =$et->department;
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $et->et_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $et->location_id);
                $item_desc = $et->et_desc.", ".$brand.", ".$model.", ".$serial_no;
                if($et->accountability_id!=0 && $borrowed==0 && $lost==0){
                    $status = $employee;
                }else if($et->accountability_id==0 && $damaged==0 && $change_location==0){
                    $status = 'Available';
                }else if($et->accountability_id==0 && $change_location==1){
                    $status = "Moved to ".$location;
                }else if($borrowed==1){
                    $status = 'Borrowed';
                }else if($damaged==1){
                    $status = 'Damaged';
                }else if($lost==1){
                    $status = 'Lost Item / '.$employee;
                }
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$num, $item_desc);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B'.$num, '1');
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C'.$num, $unit_price);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D'.$num, $category);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E'.$num, $subcat);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F'.$num, $department);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G'.$num, $status);
                $objPHPExcel->getActiveSheet()->getStyle('A'.$num.":G".$num)->applyFromArray($styleArray);
                $objPHPExcel->getActiveSheet()->getStyle('B'.$num.":C".$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getStyle("G".$num)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $objPHPExcel->getActiveSheet()->getProtection()->setSheet(true);    
                $objPHPExcel->getActiveSheet()->protectCells('A'.$num.":G".$num,'admin');
                $num++;
            }
        }else {
            foreach($this->super_model->select_all_order_by("et_head",'et_desc','ASC') AS $ss){
                foreach($this->super_model->select_row_where("et_details","et_id",$ss->et_id) AS $r){
                    $department =$ss->department;
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $ss->category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $ss->subcat_id);
                    $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $r->et_id);
                    $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $r->et_id);
                    $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $r->et_id);
                    $model =$this->super_model->select_column_where("et_details", "model", "et_id", $r->et_id);
                    $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ss->accountability_id);
                    $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $r->et_id);
                    $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $r->et_id);
                    $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $r->et_id);
                    $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $r->et_id);
                    $location = $this->super_model->select_column_where("location", "location_name", "location_id", $r->location_id);
                    $item_desc = $ss->et_desc.", ".$brand.", ".$model.", ".$serial_no;
                    if($ss->accountability_id!=0 && $borrowed==0 && $lost==0){
                        $status = $employee;
                    }else if($ss->accountability_id==0 && $damaged==0 && $change_location==0){
                        $status = 'Available';
                    }else if($ss->accountability_id==0 && $change_location==1){
                        $status = "Moved to ".$location;
                    }else if($borrowed==1){
                        $status = 'Borrowed';
                    }else if($damaged==1){
                        $status = 'Damaged';
                    }else if($lost==1){
                        $status = 'Lost Item / '.$employee;
                    }
                    $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$num, $item_desc);
                    $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B'.$num, '1');
                    $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C'.$num, $unit_price);
                    $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D'.$num, $category);
                    $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E'.$num, $subcat);
                    $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F'.$num, $department);
                    $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G'.$num, $status);
                    $objPHPExcel->getActiveSheet()->getStyle('A'.$num.":G".$num)->applyFromArray($styleArray);
                    $objPHPExcel->getActiveSheet()->getStyle('B'.$num.":C".$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                    $objPHPExcel->getActiveSheet()->getStyle("G".$num)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                    $objPHPExcel->getActiveSheet()->getProtection()->setSheet(true);    
                    $objPHPExcel->getActiveSheet()->protectCells('A'.$num.":G".$num,'admin');
                    $num++;
                } 
            }
        }
        $objPHPExcel->getActiveSheet()->getStyle('A2:G2')->applyFromArray($styleArray);
        $objPHPExcel->getActiveSheet()->getStyle('A2:G2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objPHPExcel->getActiveSheet()->getStyle('A2:G2')->getFont()->setBold(true)->setName('Arial')->setSize(9.5);
        $objPHPExcel->getActiveSheet()->getStyle('A1:D1')->getFont()->setBold(true)->setName('Arial Black')->setSize(12);
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
        if (file_exists($exportfilename))
        unlink($exportfilename);
        $objWriter->save($exportfilename);
        unset($objPHPExcel);
        unset($objWriter);   
        ob_end_clean();
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Overall Report.xlsx"');
        readfile($exportfilename);
    }

    public function report_print_overall(){  
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
        $condition=$this->uri->segment(14);
        $placement=$this->uri->segment(15);
        $company=$this->uri->segment(16);
        $sql="";
        $filter = "";

        if($from!='null' && $to!='null'){
           $sql.= " ed.acquisition_date BETWEEN '$from' AND '$to' AND";
           $filter .= $from.''.$to;
        }

        if($category!='null'){
            $sql.=" eh.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= $cat;
        }

        if($subcat!='null'){
            $sql.=" eh.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= $subcat;
        }

        if($department!='null'){
            $sql.=" eh.department LIKE '%$department%' AND";
            $filter .= $department;
        }

        if($item!='null'){
            $sql.=" eh.et_desc LIKE '%$item%' AND";
            $filter .= $item;
        }

        if($brand!='null'){
            $sql.=" ed.brand LIKE '%$brand%' AND";
            $filter .= $brand;
        }

        if($model!='null'){
            $sql.=" ed.model LIKE '%$model%' AND";
            $filter .= $model;
        }

        if($type!='null'){
            $sql.=" ed.type LIKE '%$type%' AND";
            $filter .= $type;
        }

        if($serial!='null'){
            $sql.=" ed.serial_no LIKE '%$serial%' AND";
            $filter .= $serial;
        }

        if($damage!='null'){
            $sql.=" ed.damage = '$damage' AND";
            $filter .= $damage;
        }

        if($condition!='null'){
            $sql.=" ed.physical_condition LIKE '%$condition%' AND";
            //$physical = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $condition);
            $filter .= $condition;
        }

        if($placement!='null'){
            $sql.=" ed.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= $place;
        }

        if($company!='null'){
            $sql.=" ed.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .= $rr;
        }

        $array = array($from,$to);
        $query=substr($sql, 0, -3);
        $filters=substr($filter, 0, -2);
        if($filters!=''){
           foreach($this->super_model->custom_query("SELECT * FROM et_head eh LEFT JOIN et_details ed ON eh.et_id = ed.et_id WHERE ".$query) AS $et){
                $data['user_id'] =$_SESSION['fullname'];
                $category = $this->super_model->select_column_where("category","category_name","category_id",$et->category_id);
                $subcategory = $this->super_model->select_column_where("subcategory","subcat_name","subcat_id",$et->subcat_id);
                $employee = $this->super_model->select_column_where("employees","employee_name","employee_id",$et->accountability_id);
                $location = $this->super_model->select_column_where("location","location_name","location_id",$et->location_id);
                $item_desc = $et->et_desc.", ".$et->brand.", ".$et->model.", ".$et->serial_no;
                $data['details'][]= array(
                    'et_id'=>$et->et_id,
                    'item'=>$item_desc,
                    'qty'=>1,
                    'department'=>$et->department,
                    'accountability_id'=>$et->accountability_id,
                    'employee'=>$employee,
                    'category'=>$category,
                    'subcategory'=>$subcategory,
                    'borrowed'=>$et->borrowed,
                    'damaged'=>$et->damage,
                    'lost'=>$et->lost,
                    'change_location'=>$et->change_location,
                    'location'=>$location,
                    'unit_price'=>$et->unit_price,
                );
            }
        }else {
            foreach($this->super_model->select_all_order_by("et_head",'et_desc','ASC') AS $ss){
                foreach($this->super_model->select_row_where("et_details","et_id",$ss->et_id) AS $r){
                    $data['user_id'] =$_SESSION['fullname'];
                    $category = $this->super_model->select_column_where("category","category_name","category_id",$ss->category_id);
                    $subcategory = $this->super_model->select_column_where("subcategory","subcat_name","subcat_id",$ss->subcat_id);
                    $employee = $this->super_model->select_column_where("employees","employee_name","employee_id",$ss->accountability_id);
                    $location = $this->super_model->select_column_where("location","location_name","location_id",$r->location_id);
                    $item_desc = $ss->et_desc.", ".$r->brand.", ".$r->model.", ".$r->serial_no;
                    $data['details'][]= array(
                        'et_id'=>$ss->et_id,
                        'item'=>$item_desc,
                        'qty'=>1,
                        'department'=>$ss->department,
                        'accountability_id'=>$ss->accountability_id,
                        'employee'=>$employee,
                        'category'=>$category,
                        'subcategory'=>$subcategory,
                        'borrowed'=>$r->borrowed,
                        'damaged'=>$r->damage,
                        'lost'=>$r->lost,
                        'change_location'=>$r->change_location,
                        'location'=>$location,
                        'unit_price'=>$r->unit_price,
                    );
                } 
            }
        }
        $this->load->view('report/report_print_overall',$data);
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

    public function generateItems(){
        if(!empty($this->input->post('items_id'))){
            $item = $this->input->post('items_id');
        } else {
            $item = "null";
        }

        if(!empty($this->input->post('set'))){
            $set = $this->input->post('set');
        } else {
            $set = "null";
        }

        ?>
       <script>
        window.location.href ='<?php echo base_url(); ?>index.php/report/inv_rep_itm/<?php echo $item; ?>/<?php echo $set; ?>'</script> <?php
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
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $t->et_id); 
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $t->et_id); 
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $t->et_id); 
                $location = $this->super_model->select_column_where("location","location_name","location_id",$location_id);                     
                $data['item'][]=array(
                    'item'=>$t->et_desc,
                    'damaged'=>$damaged,
                    'borrowed'=>$borrowed,
                    'location'=>$location,
                    'change_location'=>$change_location,
                    'lost'=>$lost,
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

    public function inv_report_itm(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $item=$this->uri->segment(3);
        $set=$this->uri->segment(4);
        $data['item']=$this->super_model->select_column_where("et_head", "et_desc", "et_id", $item);
        $data['set']=$this->super_model->select_column_where("et_set", "set_name", "set_id", $set);
        $sql="";
        if($item!='null'){
            $sql.= " et_id = '$item' AND";
        }

        if($set!='null'){
            $sql.= " set_id = '$set' AND";
        }

        $query=substr($sql,0,-3);

        $data['item_name'] = $this->super_model->select_column_where("et_head", "et_desc", "et_id", $item);                     
        $data['count'] = $this->super_model->count_rows_where('et_details','et_id',$item);
        $count=$this->super_model->count_custom_where("et_details", $query);
        if($count!=0){
            foreach($this->super_model->select_custom_where("et_details", $query) AS $t){

                foreach($this->super_model->select_row_where("et_head","et_id",$t->et_id) AS $a){
                    $employee = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $a->accountability_id);   
                    $accountability_id = $a->accountability_id;  
                    $item = $a->et_desc;   
                    $qty = $a->qty;   
                }                  
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $t->et_id);                     
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $t->et_id);   
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $t->et_id);   
                $location = $this->super_model->select_column_where("location","location_name","location_id",$t->location_id);                  
                $data['itema'][]=array(
                    'item'=>$item,
                    'damaged'=>$damaged,
                    'lost'=>$lost,
                    'borrowed'=>$borrowed,
                    'location'=>$location,
                    'change_location'=>$t->change_location,
                    'accountability'=>$employee,
                    'accountability_id'=>$accountability_id,
                    'qty'=>$qty,
                );
            }
        }else {
            $data['itema']=array();
        }
        $this->load->view('report/inv_report_itm',$data);
        $this->load->view('template/scripts');
    }

    public function search_inv_itm(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $data['set1']=$this->super_model->select_all_order_by("et_set","set_name","ASC");
        if(!empty($this->input->post('item'))){
            $data['item'] = $this->input->post('item');
        } else {
            $data['item'] = "null";
        }

        if(!empty($this->input->post('set'))){
            $data['set'] = $this->input->post('set');
        } else {
            $data['set'] = "null";
        }

        $sql="";
        $filter = " ";
        if(!empty($this->input->post('item'))){
            $item = $this->input->post('item');
            $sql.=" et_desc LIKE '%$item%' AND";
            $filter .= "Item Description - ".$item.", ";
        }

        if(!empty($this->input->post('set'))){
            $set = $this->input->post('set');
            $sql.=" set_name LIKE '%$set%' AND";
            //$sets = $this->super_model->select_column_where("et_set", "set_name", "set_id", $set);
            $q = "INNER JOIN et_set es ON ed.set_id = es.set_id";
            $filter .= "Set Name - ".$set.", ";
        }

        $query=substr($sql, 0, -3);
        $data['filt']=substr($filter, 0, -2);

        if(!empty($this->input->post('item')) && !empty($this->input->post('set'))){
            foreach($this->super_model->custom_query("SELECT eh.et_desc, eh.et_id FROM et_head eh INNER JOIN et_details ed ON eh.et_id = ed.et_id INNER JOIN et_set es ON ed.set_id = es.set_id WHERE ".$query) AS $ss){

                $avcount = $this->super_model->count_custom_where('et_head',"accountability_id='0' AND et_id = '$ss->et_id'");
                $incount = $this->super_model->count_custom_where('et_head',"accountability_id!='0' AND et_id = '$ss->et_id'");
                foreach($this->super_model->select_row_where('et_details','et_id',$ss->et_id) AS $r){
                    $setss = $this->super_model->select_column_where("et_set", "set_name", "set_id", $r->set_id);
                    $set_id = $r->set_id;
                }
                $data['itema'][]= array(
                    'item_id'=>$ss->et_id,
                    'set_id'=>$set_id,
                    'item'=>$ss->et_desc,
                    'set'=>$setss,
                    'avcount'=>$avcount,
                    'incount'=>$incount,
                );
            }
        }else if(!empty($this->input->post('item'))){
            foreach($this->super_model->custom_query("SELECT eh.et_desc, eh.et_id FROM et_head eh INNER JOIN et_details ed ON eh.et_id = ed.et_id  WHERE ".$query) AS $ss){

                $avcount = $this->super_model->count_custom_where('et_head',"accountability_id='0' AND et_id = '$ss->et_id'");
                $incount = $this->super_model->count_custom_where('et_head',"accountability_id!='0' AND et_id = '$ss->et_id'");
                foreach($this->super_model->select_row_where('et_details','et_id',$ss->et_id) AS $r){
                    $setss = $this->super_model->select_column_where("et_set", "set_name", "set_id", $r->set_id);
                    $set_id = $r->set_id;
                }
                $data['itema'][]= array(
                    'item_id'=>$ss->et_id,
                    'set_id'=>$set_id,
                    'item'=>$ss->et_desc,
                    'set'=>$setss,
                    'avcount'=>$avcount,
                    'incount'=>$incount,
                );
            }
        } 

        if(!empty($this->input->post('set')) && empty($this->input->post('item'))){
            foreach($this->super_model->custom_query("SELECT eh.et_desc, eh.et_id FROM et_head eh INNER JOIN et_details ed ON eh.et_id = ed.et_id INNER JOIN et_set es ON ed.set_id = es.set_id WHERE ".$query." GROUP BY set_name") AS $ss){

                $count_set = $this->super_model->count_custom("SELECT DISTINCT(ed.set_id) FROM et_head eh INNER JOIN et_details ed ON eh.et_id = ed.et_id " . $q. " WHERE ".$query);
                foreach($this->super_model->select_row_where('et_details','et_id',$ss->et_id) AS $r){
                    $setss = $this->super_model->select_column_where("et_set", "set_name", "set_id", $r->set_id);
                    $set_id = $r->set_id;
                }
                $data['itema'][]= array(
                    'set'=>$setss,
                    'count'=>$count_set,
                );
            }
        }
        $this->load->view('report/inv_rep_itm',$data);
        $this->load->view('template/scripts');
    }

    public function report_main(){  
    	$this->load->view('template/header');
    	$this->load->view('template/sidebar');
        $row=$this->super_model->count_custom_where("et_head", "accountability_id!=0");
        $row_avail = $this->row_avail();
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']= $this->row_avail();
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        //$data['condition'] = $this->super_model->select_all_order_by('physical_condition', 'condition_name', 'ASC');
        $data['placement1'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['company1'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        $data['rack1'] = $this->super_model->select_all_order_by('rack', 'rack_name', 'ASC');
        if($row!=0){
            foreach($this->super_model->select_join_where('et_head','et_details', 'accountability_id!=0 AND cancelled =0 AND save_temp=0 AND lost=0','et_id') AS $et){
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
        $this->load->view('report/report_main',$data);
        $this->load->view('template/scripts');
    }

    public function insert_lost(){
        $lost_date = trim($this->input->post('lost_date')," ");
        $remarks = trim($this->input->post('remarks')," ");
        $emp_id = trim($this->input->post('emp_id')," ");
        $ed_id = trim($this->input->post('ed_id')," ");
        $et_id = trim($this->input->post('et_id')," ");

        $data_lost = array(
            'lost'=>1,
        );

        if($this->super_model->update_where('et_details', $data_lost, 'ed_id', $ed_id)){
            $data = array(
                'ed_id'=>$this->input->post('ed_id'),
                'lost_date'=>$lost_date,
                'remarks'=>$remarks,
                'employee_id'=> $emp_id,
            );
            if($this->super_model->insert_into("lost_items", $data)){
                /*$data_et = array(
                    'accountability_id'=>0,
                );
                $this->super_model->update_where('et_head', $data_et, 'et_id', $et_id);*/
                echo "<script>alert('Successfully Tagged as Lost!'); location.replace(document.referrer); </script>";
            }
        }
    }

    public function report_draft(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $row=$this->super_model->count_custom_where("et_head", "accountability_id!=0 AND save_temp=1 AND cancelled=0");
        $row_avail = $this->row_avail();
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']= $this->row_avail();
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $data['condition1'] = $this->super_model->select_all_order_by('physical_condition', 'condition_name', 'ASC');
        $data['placement1'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['company1'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        $data['rack1'] = $this->super_model->select_all_order_by('rack', 'rack_name', 'ASC');
        if($row!=0){
            foreach($this->super_model->select_custom_where('et_head', 'accountability_id!=0 AND save_temp=1 AND cancelled=0') AS $et){
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
                $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id' AND cancelled='0'");
                $data['employees'][] = array(
                    'employee_id'=>$emp->employee_id,
                    'employee'=>$emp->employee_name,
                    'count'=>$count
                );
            }
        }else {
            $data['main'] = array();
        }
        $this->load->view('report/report_draft',$data);
        $this->load->view('template/scripts');
    }

    public function cancel_draft(){  
        $et_id = $this->input->post('et_id');
        $data = array(
            'cancelled'=>1,
            'cancel_reason'=>$this->input->post('reason'),
            'cancel_date'=>date('Y-m-d'),
            'cancelled_by'=>$_SESSION['user_id']
        );
        $this->super_model->update_where('et_head', $data, 'et_id', $et_id);
        echo "<script>alert('Successfully Cancelled!'); window.location ='".base_url()."index.php/report/report_draft'; </script>";
    }

    public function returned_list(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $row=$this->super_model->count_rows("return_head");
        $row_avail = $this->row_avail();
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']= $this->row_avail();
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $data['condition'] = $this->super_model->select_all_order_by('physical_condition', 'condition_name', 'ASC');
        $data['placement'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['company'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        if($row!=0){
            foreach($this->super_model->select_all_order_by('return_head', 'return_date', 'ASC') AS $et){
                foreach($this->super_model->select_row_where('return_details', 'return_id', $et->return_id) AS $det){
                    $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                    $item_desc =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                    $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $det->et_id);
                    $model =$this->super_model->select_column_where("et_details", "model", "et_id", $det->et_id);
                    $serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $det->et_id);
                    $item = $item_desc.", ".$brand.", ".$model.", ".$serial_no;
                    $received_by =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->received_by);
                    $data['main'][] = array(
                        'return_id'=>$et->return_id,
                        'item_desc'=>$item,
                        'received_by'=>$received_by,
                        'remarks'=>$et->return_remarks,
                        'returned_date'=>$et->return_date,
                        'accountability'=>$accountability,
                    );
                }
            }
        }else {
            $data['main'] = array();
        }
        $this->load->view('report/returned_list',$data);
        $this->load->view('template/scripts');
    }

    public function encode_report(){  
        $this->load->view('template/header');
        $this->load->view('template/print_head');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        foreach($this->super_model->select_row_where('et_head','et_id',$id) AS $et){
            $data['type'] = $this->super_model->select_column_where("employees", "type", "employee_id", $et->accountability_id); 
            $data['employee_no'] = $this->super_model->select_column_where("employees", "aaf_no", "employee_id", $et->accountability_id); 
            $data['save_temp']=$et->save_temp;
            foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$et->accountability_id) AS $em){
                $data['child'][] = array( 
                    'emp'=> $this->super_model->select_column_where("employees", "employee_name", "employee_id", $em->child_id), 
                );
            }
            $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
            $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $et->accountability_id);
            foreach($this->super_model->select_row_where('et_details','et_id',$et->et_id) AS $det){
                $item = $this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                $price = $this->super_model->select_column_where("et_details", "unit_price", "ed_id", $det->ed_id);
                $brand = $this->super_model->select_column_where("et_details", "brand", "ed_id", $det->ed_id);
                $type = $this->super_model->select_column_where("et_details", "type", "ed_id", $det->ed_id);
                $model = $this->super_model->select_column_where("et_details", "model", "ed_id", $det->ed_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $det->ed_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $det->currency_id);
                $qty = '1';
                $total = $qty * $price;
                $data['date_issued'] = $det->date_issued;
                foreach($this->super_model->select_row_where('et_head','et_id',$det->et_id) AS $u){
                    $unit = $this->super_model->select_column_where('unit', 'unit_name', 'unit_id', $u->unit_id);
                    $data['user_id'] =$_SESSION['fullname'];
                    $data['department'] =$u->department;
                }
                $data['details'][] = array(
                    'et_id'=>$det->et_id,
                    'ed_id'=>$det->ed_id,
                    'acn_no'=>$det->asset_control_no,
                    'date'=>$det->acquisition_date,
                    'date_issued'=>$det->date_issued,
                    'currency'=>$currency,
                    'qty'=>$qty,
                    'item'=>$item,
                    'type'=>$type,
                    'brand'=>$brand,
                    'serial'=>$serial,
                    'model'=>$model,
                    'price'=>$price,
                    'total'=>$total,
                    'unit'=>$unit
                );
                foreach($this->super_model->select_row_where("et_details", "ed_id", $det->ed_id) AS $et_rem){
                    $data['remarks_it'][] = array(
                        'ed_id'=>$et_rem->ed_id,
                        'remarks'=>$et_rem->remarks
                    );
                }
            }
            $data['head'][] = array(
                'et_id'=>$et->et_id,
            ); 
              
        }
        $this->load->view('report/encode_report',$data);
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
        $condition=$this->uri->segment(14);
        $placement=$this->uri->segment(15);
        $company=$this->uri->segment(16);
        $rack=$this->uri->segment(17);
        $sql="";
        $filter = "";

        if($from!='null' && $to!='null'){
           $sql.= " et_details.acquisition_date BETWEEN '$from' AND '$to' AND";
           $filter .= $from.''.$to;
        }

        if($category!='null'){
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= $cat;
        }

        if($subcat!='null'){
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= $subcat;
        }

        if($department!='null'){
            $sql.=" et_head.department LIKE '%$department%' AND";
            $filter .= $department;
        }

        if($item!='null'){
            $sql.=" et_head.et_desc LIKE '%$item%' AND";

            $filter .= $item;
        }

        if($brand!='null'){
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= $brand;
        }

        if($model!='null'){
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= $model;
        }

        if($type!='null'){
            $sql.=" et_details.type LIKE '%$type%' AND";
            $filter .= $type;
        }

        if($serial!='null'){
            $sql.=" et_details.serial_no LIKE '%$serial%' AND";
            $filter .= $serial;
        }

        if($damage!='null'){
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= $damage;
        }

        if($condition!='null'){
            $sql.=" et_details.physical_condition LIKE '%$condition%' AND";
            $filter .= $condition;
        }

        if($placement!='null'){
            $sql.=" et_details.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= $place;
        }

        if($company!='null'){
            $sql.=" et_details.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .= $rr;
        }

        if($rack!='null'){
            $sql.=" et_details.rack_id = '$rack' AND";
            $rak = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack);
            $filter .= $rak;
        }

        $array = array($from,$to);
        $query=substr($sql, 0, -3);
        $filters=substr($filter, 0, -2);
        if($filters!=''){
            foreach ($this->super_model->select_join_where("et_head", "et_details", $query, "et_id") AS $et){
                $data['user_id'] =$_SESSION['fullname'];
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
                $condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
                $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
                $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
                $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
                $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
                $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
                $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no='';
                foreach($this->super_model->select_row_where("et_details", "et_id", $et->et_id) AS $ser){
                    $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
                }
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
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
                    'condition'=>$condition,
                    'company'=>$company,
                    'rack'=>$rack,
                    'placement'=>$placement,
                    'brand'=>$brand,
                    'remarks'=>$remarks,
                    'total'=>$total,
                    'serial_no'=>$serial_no,
                    'model'=>$model,
                    'employee'=>$employee,
                    'borrowed'=>$borrowed,
                    'damaged'=>$damaged,
                    'lost'=>$lost,
                    'change_location'=>$change_location,
                    'location'=>$location,
                );
            }
        }else {
            foreach($this->super_model->select_join_where('et_head','et_details', 'accountability_id!=0 AND save_temp=0 AND lost=0','et_id') AS $et){
            //foreach($this->super_model->select_custom_where('et_head', 'accountability_id!=0') AS $et){
                $data['user_id'] =$_SESSION['fullname'];
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
                $condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
                $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
                $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
                $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
                $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
                $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
                $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no='';
                foreach($this->super_model->select_row_where("et_details", "et_id", $et->et_id) AS $ser){
                    $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
                }
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
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
                    'condition'=>$condition,
                    'company'=>$company,
                    'rack'=>$rack,
                    'placement'=>$placement,
                    'brand'=>$brand,
                    'remarks'=>$remarks,
                    'total'=>$total,
                    'serial_no'=>$serial_no,
                    'model'=>$model,
                    'employee'=>$employee,
                    'borrowed'=>$borrowed,
                    'damaged'=>$damaged,
                    'lost'=>$lost,
                    'change_location'=>$change_location,
                    'location'=>$location,
                );
            }
        }
        $this->load->view('report/report_print',$data);
        $this->load->view('template/scripts');
    }

    public function report_print_draft(){  
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
        $condition=$this->uri->segment(14);
        $placement=$this->uri->segment(15);
        $company=$this->uri->segment(16);
        $rack=$this->uri->segment(17);
        $sql="";
        $filter = " ";

        if($from!='null' && $to!='null'){
           $sql.= " et_details.acquisition_date BETWEEN '$from' AND '$to' AND";
           $filter .= $from.''.$to;
        }

        if($category!='null'){
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= $cat;
        }

        if($subcat!='null'){
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= $subcat;
        }

        if($department!='null'){
            $sql.=" et_head.department LIKE '%$department%' AND";
            $filter .= $department;
        }

        if($item!='null'){
            $sql.=" et_head.et_desc LIKE '%$item%' AND";

            $filter .= $item;
        }

        if($brand!='null'){
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= $brand;
        }

        if($model!='null'){
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= $model;
        }

        if($type!='null'){
            $sql.=" et_details.type LIKE '%$type%' AND";
            $filter .= $type;
        }

        if($serial!='null'){
            $sql.=" et_details.serial_no LIKE '%$serial%' AND";
            $filter .= $serial;
        }

        if($damage!='null'){
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= $damage;
        }

        if($condition!='null'){
            $sql.=" et_details.physical_condition LIKE '%$condition%' AND";
            //$physical = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $condition);
            $filter .= $condition;
        }

        if($placement!='null'){
            $sql.=" et_details.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= $place;
        }

        if($company!='null'){
            $sql.=" et_details.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .= $rr;
        }

        if($rack!='null'){
            $sql.=" et_details.rack_id = '$rack' AND";
            $rak = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack);
            $filter .= $rak;
        }

        $array = array($from,$to);
        $query=substr($sql, 0, -3);
        $filters=substr($filter, 0, -2);
        if($filters!=''){
            foreach ($this->super_model->select_join_where("et_head", "et_details", $query, "et_id") AS $et){
                $data['user_id'] =$_SESSION['fullname'];
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
                $condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
                $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
                $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
                $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
                $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
                $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
                $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no='';
                foreach($this->super_model->select_row_where("et_details", "et_id", $et->et_id) AS $ser){
                    $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
                }
                //$serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
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
                    'condition'=>$condition,
                    'company'=>$company,
                    'rack'=>$rack,
                    'placement'=>$placement,
                    'brand'=>$brand,
                    'remarks'=>$remarks,
                    'total'=>$total,
                    'serial_no'=>$serial_no,
                    'model'=>$model,
                    'employee'=>$employee,
                    'borrowed'=>$borrowed,
                    'damaged'=>$damaged,
                    'lost'=>$lost,
                    'change_location'=>$change_location,
                    'location'=>$location,
                );
            }
        }else {
            foreach($this->super_model->select_join_where('et_head','et_details', 'accountability_id!=0 AND save_temp=1 AND lost=0 AND cancelled=0','et_id') AS $et){
            //foreach($this->super_model->select_custom_where('et_head', 'accountability_id!=0 AND save_temp=1 AND cancelled=0') AS $et){
                $data['user_id'] =$_SESSION['fullname'];
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
                $condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
                $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
                $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
                $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
                $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
                $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
                $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no='';
                foreach($this->super_model->select_row_where("et_details", "et_id", $et->et_id) AS $ser){
                    $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
                }
                //$serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
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
                    'condition'=>$condition,
                    'company'=>$company,
                    'rack'=>$rack,
                    'placement'=>$placement,
                    'brand'=>$brand,
                    'remarks'=>$remarks,
                    'total'=>$total,
                    'serial_no'=>$serial_no,
                    'model'=>$model,
                    'employee'=>$employee,
                    'borrowed'=>$borrowed,
                    'damaged'=>$damaged,
                    'lost'=>$lost,
                    'change_location'=>$change_location,
                    'location'=>$location,
                );
            }
        }
        $this->load->view('report/report_print_draft',$data);
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
        //$data['condition'] = $this->super_model->select_all_order_by('physical_condition', 'condition_name', 'ASC');
        $data['company'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        $data['placement'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['rack'] = $this->super_model->select_all_order_by('rack', 'rack_name', 'ASC');
        $x=1;
        foreach($this->super_model->select_row_where("et_head","et_id",$id) AS $nxt){
            $category = $this->super_model->select_column_where("category", "category_name", "category_id", $nxt->category_id);
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $nxt->subcat_id);
            $employee_name = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $nxt->accountability_id);
            $department = $this->super_model->select_column_where("employees", "department", "employee_id", $nxt->accountability_id);
            $unit = $this->super_model->select_column_where("unit", "unit_name", "unit_id", $nxt->unit_id);
            $subcat_prefix= $this->super_model->select_column_where('subcategory', 'subcat_prefix', 'subcat_id', $nxt->subcat_id);
            $location= $this->super_model->select_column_where('subcategory', 'location', 'subcat_id', $nxt->subcat_id);
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
            $data['location'] = $location;
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

            $row = $this->super_model->count_rows_where('et_details','et_id',$nxt->et_id);
            if($row!=0){  
                foreach($this->super_model->select_row_where('et_details','et_id',$nxt->et_id) AS $det){
                    $data['details'][] = array(
                        'et_id'=>$det->et_id,
                        'ed_id'=>$det->ed_id,
                        'date'=>$det->acquisition_date,
                        'asset_control_no'=>$det->asset_control_no,
                        'date_issued'=>$det->date_issued,
                        'serial'=>$det->serial_no,
                        'brand'=>$det->brand,
                        'model'=>$det->model,
                        'type'=>$det->type,
                        'price'=>$det->unit_price,
                        'currency'=>$det->currency_id,
                        'physical'=>$det->physical_condition,
                        'rack_id'=>$det->rack_id,
                        'company'=>$det->company_id,
                        'placement'=>$det->placement_id,
                        'acquired_by'=>$det->acquired_by,
                        'remarks'=>$det->remarks,
                        'picture1'=>$det->picture1,
                        'picture2'=>$det->picture2,
                        'picture3'=>$det->picture3,
                    );
                }
            }else {
                $data['details']=array();
            }
        }
        $this->load->view('report/edit_encode',$data);
        $this->load->view('template/scripts_report');
    }

    public function edit_encode_draft(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar'); 
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);  
        $data['edid']=$this->uri->segment(4);
        $edid=$this->uri->segment(4); 
        $data['qty'] = $this->super_model->select_column_where("et_head", "qty", "et_id", $id);
        $data['currency'] = $this->super_model->select_all_order_by('currency', 'currency_name', 'ASC');
        //$data['condition'] = $this->super_model->select_all_order_by('physical_condition', 'condition_name', 'ASC');
        $data['company'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        $data['placement'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['rack'] = $this->super_model->select_all_order_by('rack', 'rack_name', 'ASC');
        $x=1;
        foreach($this->super_model->select_row_where("et_head","et_id",$id) AS $nxt){
            $category = $this->super_model->select_column_where("category", "category_name", "category_id", $nxt->category_id);
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $nxt->subcat_id);
            $employee_name = $this->super_model->select_column_where("employees", "employee_name", "employee_id", $nxt->accountability_id);
            $department = $this->super_model->select_column_where("employees", "department", "employee_id", $nxt->accountability_id);
            $unit = $this->super_model->select_column_where("unit", "unit_name", "unit_id", $nxt->unit_id);
            $subcat_prefix= $this->super_model->select_column_where('subcategory', 'subcat_prefix', 'subcat_id', $nxt->subcat_id);
            $location= $this->super_model->select_column_where('subcategory', 'location', 'subcat_id', $nxt->subcat_id);
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
            $data['location'] = $location;
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

            $row = $this->super_model->count_rows_where('et_details','et_id',$nxt->et_id);
            if($row!=0){  
                foreach($this->super_model->select_row_where('et_details','et_id',$nxt->et_id) AS $det){
                    $data['details'][] = array(
                        'et_id'=>$det->et_id,
                        'ed_id'=>$det->ed_id,
                        'date'=>$det->acquisition_date,
                        'asset_control_no'=>$det->asset_control_no,
                        'date_issued'=>$det->date_issued,
                        'serial'=>$det->serial_no,
                        'brand'=>$det->brand,
                        'model'=>$det->model,
                        'type'=>$det->type,
                        'price'=>$det->unit_price,
                        'currency'=>$det->currency_id,
                        'physical'=>$det->physical_condition,
                        'rack_id'=>$det->rack_id,
                        'company'=>$det->company_id,
                        'placement'=>$det->placement_id,
                        'acquired_by'=>$det->acquired_by,
                        'remarks'=>$det->remarks,
                        'picture1'=>$det->picture1,
                        'picture2'=>$det->picture2,
                        'picture3'=>$det->picture3,
                    );
                }
            }else {
                $data['details']=array();
            }
        }
        $this->load->view('report/edit_encode_draft',$data);
        $this->load->view('template/scripts_report');
    }

    public function update_encode(){
        $id = $this->input->post('et_id');
        $qty = $this->super_model->select_column_where("et_head", "qty", "et_id", $id);
        /*$serial = array();*/
        $row = $this->super_model->count_rows_where('et_details','et_id',$id);
        if($row!=0){
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
                    'physical_condition'=>$this->input->post('condition['.$x.']'),
                    'placement_id'=>$this->input->post('placement['.$x.']'),
                    'company_id'=>$this->input->post('company['.$x.']'),
                    'rack_id'=>$this->input->post('rack['.$x.']'),
                );

                if($this->super_model->update_where("et_details", $data, "ed_id", $edid)){
                    $data_up = array(
                        'save_temp'=>0,
                    );
                    $this->super_model->update_where("et_head", $data_up, "et_id", $id);

                    if($this->input->post('saved') == 'Submit'){
                        $assetdetails=explode("-", $this->input->post('acn['.$x.']'));
                        $subcat_prefix1=$assetdetails[0];
                        $subcat_prefix2=$assetdetails[1];
                        $location=$assetdetails[2];
                        $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
                        $series = $assetdetails[3];
                        $asset_data= array(
                            'subcat_prefix'=>$subcat_prefix,
                            'location'=>$location,
                            'series'=>$series
                        );
                        $this->super_model->insert_into("asset_series", $asset_data);

                        echo "<script>alert('Equipment/Tool successfully Updated!'); 
                        window.location ='".base_url()."index.php/report/report_main'; </script>";
                    }else {
                        echo "<script>alert('Equipment/Tool successfully Updated!'); 
                        window.location ='".base_url()."index.php/report/report_main'; </script>";
                    }
                }    
            }
        }else{
            for($x=0;$x<$qty;$x++){
                $serial = $this->input->post('sn['.$x.']');
                $error_ext=0;
                $dest= realpath(APPPATH . '../uploads/');
                if(!empty($_FILES['pic1']['name'][$x])){
                     $img1= basename($_FILES['pic1']['name'][$x]);
                     $img1=explode('.',$img1);
                     $ext1=$img1[1];
                    
                    if($ext1=='php' || ($ext1!='png' && $ext1 != 'jpg' && $ext1!='jpeg')){
                        $error_ext++;
                    } else {
                        $filename1=$serial.'-1.'.$ext1;
                        move_uploaded_file($_FILES['pic1']['tmp_name'][$x], $dest.'/'.$filename1);
                    }
                } else {
                    $filename1="";
                }
            
            
                if(!empty($_FILES['pic2']['name'][$x])){
                     $img2= basename($_FILES['pic2']['name'][$x]);
                     $img2=explode('.',$img2);
                     $ext2=$img2[1];
                     
                    if($ext2=='php' || ($ext2!='png' && $ext2 != 'jpg' && $ext2!='jpeg')){
                        $error_ext++;
                    } else {
                        $filename2=$serial.'-2.'.$ext2;
                        move_uploaded_file($_FILES["pic2"]['tmp_name'][$x], $dest.'/'.$filename2);
                    }
                } else {
                    $filename2="";
                }

                if(!empty($_FILES['pic3']['name'][$x])){
                     $img3= basename($_FILES['pic3']['name'][$x]);
                     $img3=explode('.',$img3);
                     $ext3=$img3[1];
                    
                    if($ext3=='php' || ($ext3!='png' && $ext3 != 'jpg' && $ext3!='jpeg')){
                        $error_ext++;
                    } else {
                        $filename3=$serial.'-3.'.$ext3;
                        move_uploaded_file($_FILES["pic3"]['tmp_name'][$x], $dest.'/'.$filename3);

                    }
                } else {
                    $filename3="";
                }
            
                $data = array(
                    'et_id'=>$this->input->post('et_id'),
                    'acquisition_date'=>$this->input->post('acq_date['.$x.']'),
                    'date_issued'=>$this->input->post('date_issued['.$x.']'),
                    'asset_control_no'=>$this->input->post('acn['.$x.']'),
                    'serial_no'=>$this->input->post('sn['.$x.']'),
                    'brand'=>$this->input->post('brand['.$x.']'),
                    'model'=>$this->input->post('model['.$x.']'),
                    'type'=>$this->input->post('type['.$x.']'),
                    'unit_price'=>$this->input->post('price['.$x.']'),
                    'acquired_by'=>$this->input->post('acquired_by['.$x.']'),
                    'remarks'=>$this->input->post('remarks['.$x.']'),
                    'currency_id'=>$this->input->post('cur['.$x.']'),
                    'physical_condition'=>$this->input->post('condition['.$x.']'),
                    'placement_id'=>$this->input->post('placement['.$x.']'),
                    'company_id'=>$this->input->post('company['.$x.']'),
                    'rack_id'=>$this->input->post('rack['.$x.']'),
                    'picture1'=>$filename1,
                    'picture2'=>$filename2,
                    'picture3'=>$filename3
                );
            
                if($this->super_model->insert_into("et_details", $data)){
                    $assetdetails=explode("-", $this->input->post('acn['.$x.']'));
                    $subcat_prefix1=$assetdetails[0];
                    $subcat_prefix2=$assetdetails[1];
                    $subcat_prefix3=$assetdetails[2];
                    $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3;
                    $series = $assetdetails[3];
                    $asset_data= array(
                        'subcat_prefix'=>$subcat_prefix,
                        'series'=>$series
                    );
                    $this->super_model->insert_into("asset_series", $asset_data);
                    echo "<script>alert('Equipment/Tool successfully Updated!'); 
                        window.location ='".base_url()."index.php/report/report_main'; </script>";
                }
            }
        }
    }

    public function report_main_hist(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        /*foreach($this->super_model->select_custom_where("et_head", "accountability_id=0") AS $check){
            $data['available_qty']=$this->super_model->count_custom_where("et_details", "damage='0'");           
        }*/
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']=$this->row_avail();
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
            $data['borrowed'] =$this->super_model->select_column_where("et_details", "borrowed", "ed_id", $cur->ed_id);
            $data['changeloc'] =$this->super_model->select_column_where("et_details", "change_location", "ed_id", $cur->ed_id);
            $data['lost'] =$this->super_model->select_column_where("et_details", "lost", "ed_id", $cur->ed_id);
            $location_id=$this->super_model->select_column_where("et_details", "location_id", "ed_id", $cur->ed_id);
            $data['location'] =$this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
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
                            "jo_no"=>$d->jo_no,
                            "supplier"=>$d->supplier,
                            "repair_price"=>$d->repair_price,
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

        $row_lost=$this->super_model->count_rows_where("lost_items", "ed_id",$id);
        foreach($this->super_model->select_row_where('lost_items', 'ed_id', $id) AS $l){
            $accountable =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $l->employee_id);
            $rep_id =$this->super_model->select_column_where("lost_items", "replacement", "ed_id", $l->ed_id);
            $etid =$this->super_model->select_column_where("et_details", "et_id", "ed_id", $l->ed_id);
            $et_id =$this->super_model->select_column_where("et_head", "et_id", "et_id", $etid);
            $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $et_id);
            $ed = $this->super_model->select_column_where("et_details", "et_id", "ed_id", $rep_id);
            $replacement =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $ed);

            if($row_lost!=0){
                $data['losts'][] = array(
                    "employee"=>$accountable,
                    "item"=>$item,
                    "replacement"=>$replacement,
                    "remarks"=>$l->remarks,
                    "lost_date"=>$l->lost_date,
                );
            } else {
                $data['losts']=array();
            }
        }

        $this->load->view('report/history_view',$data);
        $this->load->view('template/scripts');
    }

    public function row_avail(){

         $row_avail=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0' and change_location = '0' AND lost ='0'",'et_id');
         return $row_avail;
    }

    public function report_main_avail(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $row=$this->super_model->count_custom_where("et_head", "accountability_id!=0");

        $row_avail = $this->row_avail();
        /*foreach($this->super_model->select_custom_where("et_head", "accountability_id='0'") AS $check){
            $data['available_qty']=$this->super_model->count_custom_where("et_details", "damage='0'");           
        }*/
        /*$data['available_qty']=$this->super_model->count_join_where('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');*/
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']= $this->row_avail();
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        if($row_avail!=0){
            //foreach($this->super_model->select_custom_where('et_head', 'accountability_id=0') AS $et){
            //foreach($this->super_model->select_join_where("et_head","et_details","damage='0' AND accountability_id = '0' and change_location = '0'","et_id") as $et){
            foreach($this->super_model->select_join_where("et_head","et_details","damage='0' AND accountability_id = '0' AND change_location = '0' AND lost='0' AND cancelled = '0'","et_id") as $et){
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
                        'accountability'=>'',
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

    public function report_print_avail(){
        $data['report']=array();
        foreach($this->super_model->select_custom_where('et_head', 'accountability_id=0 AND cancelled=0') AS $et){
            $data['user_id'] = $_SESSION['fullname'];
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
            $physical_condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
            $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
            $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
            $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
            $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
            $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
            $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
            $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
            $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
            $total = $et->qty*$unit_price;
            $serial_no='';
            foreach($this->super_model->select_row_where("et_details", "et_id", $et->et_id) AS $ser){
                $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
            }
            //$serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
            $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
            $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
            $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
            $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
            $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
            $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
            $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
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
                'condition'=>$physical_condition,
                'company'=>$company,
                'rack'=>$rack,
                'placement'=>$placement,
                'brand'=>$brand,
                'remarks'=>$remarks,
                'total'=>$total,
                'serial_no'=>$serial_no,
                'model'=>$model,
                'employee'=>$employee,
                'borrowed'=>$borrowed,
                'damaged'=>$damaged,
                'change_location'=>$change_location,
                'location'=>$location,
            );
        }
        $this->load->view('report/report_print_avail',$data);
        $this->load->view('template/scripts');
    }

    public function row_set_avail(){
         $row_set_avail=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0' and change_location = '0' AND set_id!='0' AND cancelled='0'",'et_id');
         return $row_set_avail;
    }

    public function report_set_avail(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $row=$this->super_model->count_custom_where("et_head", "accountability_id=0 AND cancelled=0");

        $row_set_avail = $this->row_set_avail();
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']= $this->row_avail();
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        if($row_set_avail!=0){
            foreach($this->super_model->select_custom_where('et_head', "accountability_id='0' AND cancelled='0'") AS $et){
                //foreach($this->super_model->select_join_where("et_head","et_details","damage='0' AND accountability_id = '0' and change_location = '0' AND set_id!='0' AND lost='0' AND cancelled='0'","et_id") as $et){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $et->et_id);
                foreach($this->super_model->select_custom_where("et_details", "damage='0' AND change_location = '0' AND set_id!='0' AND et_id ='$et->et_id' ORDER BY set_id ASC") AS $det){
                    //$damage =$this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                    //$item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $et->et_id);
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                    //$qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $et->et_id);
                    //$empid =$this->super_model->select_column_where("et_head", "accountability_id", "et_id", $et->et_id);
                    /*$brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                    $serial =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                    $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                    $acn =$this->super_model->select_column_where("et_details", "asset_control_no", "et_id", $et->et_id);
                    $acquisition_date =$this->super_model->select_column_where("et_details", "acquisition_date", "et_id", $et->et_id);*/
                    //$ed_id =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $et->et_id);
                    //if($det->damage==0){
                        $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $det->set_id);
                        $data['avail'][] = array(
                            'et_id'=>$et->et_id,
                            'ed_id'=>$det->ed_id,
                            'empid'=>$et->accountability_id,
                            'unit'=>$unit,
                            'damaged'=>$det->damage,
                            'department'=>$et->department,
                            'et_desc'=>$et->et_desc,
                            'category'=>$category,
                            'subcat'=>$subcat,
                            'qty'=>$et->qty,
                            'set_name'=>$set_name,
                            'set_id'=>$det->set_id,
                            /*'serial_no'=>$serial,
                            'asset_control'=>$acn,
                            'acquisition_date'=>$acquisition_date,
                            'brand'=>$brand
                            'model'=>$model,*/
                        );
                    //}
                }
            }
        }else {
            $data['avail'] = array();
        }

        $this->load->view('report/report_set_avail',$data);
        $this->load->view('template/scripts');
    }
/*
    public function count_set($set_id){
       $count_next_set= $this->super_model->count_rows_where("et_details","set_id",$set_id);
       return $count_next_set;
    }*/
    public function set_print_avail1(){  
        $this->load->view('template/header');
        $this->load->view('template/print_head');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $row=$this->super_model->count_custom_where("et_head","accountability_id='0' AND cancelled='0'");
        if($row!=0){
            foreach($this->super_model->select_row_where('et_head','accountability_id=0 AND cancelled=0') AS $aaf){
                //$data['type'] = $this->super_model->select_column_where("employees", "type", "employee_id", $aaf->accountability_id); 
                /*foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$aaf->accountability_id) AS $em){
                    $data['child'][] = array( 
                        'emp'=> $this->super_model->select_column_where("employees", "employee_name", "employee_id", $em->child_id), 
                    );
                }*/
                //$data['date_issued'] =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $aaf->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $aaf->unit_id);
                //$data['user_id'] =$_SESSION['fullname'];
                //$data['username'] =$this->super_model->select_column_where("users", "fullname", "user_id", $aaf->user_id);
                //$accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $aaf->accountability_id);
                //$data['department'] =$aaf->department;
                $qty = 1;
                //if(!isset($id)){
                    foreach($this->super_model->select_custom_where('et_details', "et_id = '$aaf->et_id' AND set_id = '$id' AND damage = '0' ORDER BY set_id DESC") AS $det){
                        $count_set = $this->super_model->count_custom("SELECT et_head.et_id FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '0' AND set_id ='$det->set_id'");
                         $count_distinct_set = $this->super_model->custom_query_single("ct","SELECT COUNT(DISTINCT set_id) AS ct FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '0' AND  set_id != '0'");
                        
                        //$data['count_set']=$count_set;
                        $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $det->currency_id);
                        $set_price = $this->super_model->select_column_where("et_set", "set_price", "set_id", $det->set_id);
                        $set_name = $this->super_model->select_column_where("et_set", "set_name", "set_id", $det->set_id);
                        $set_lot = $this->super_model->select_column_where("et_set", "set_serial_no", "set_id", $det->set_id);
                        //echo $currency;
                        $total=$qty*$set_price;
                        $data['details'][] = array(
                            'set_id'=>$det->set_id,
                            'acquisition_date'=>$det->acquisition_date,
                            'asset_control_no'=>$det->asset_control_no,
                            'et_desc'=>$aaf->et_desc,
                            'unit'=>$unit,
                            'qty'=>$qty,
                            'date_issued'=>$det->date_issued,
                            'unit_price'=>$set_price,
                            'set_name'=>$set_name,
                            'set_lot'=>$set_lot,
                            'currency'=>$currency,
                            'total'=>$total,
                            'count_set'=>$count_set,
                            'count_distinct'=>$count_distinct_set
                        );
                         $data['set'][]=$count_set;
                    }
                   
                /*}else {
                    foreach($this->super_model->select_custom_where('et_details', "et_id = '$aaf->et_id' AND set_id = '$id' ORDER BY set_id DESC") AS $det){
                        $count_set = $this->super_model->count_custom("SELECT et_head.et_id FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '0' AND cancelled='0' AND set_id ='$id'");
                        //$data['count_set']=$count_set;
                        $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $det->currency_id);
                        $set_price = $this->super_model->select_column_where("et_set", "set_price", "set_id", $det->set_id);
                        $set_name = $this->super_model->select_column_where("et_set", "set_name", "set_id", $det->set_id);
                        $set_lot = $this->super_model->select_column_where("et_set", "set_serial_no", "set_id", $det->set_id);
                        $total=$qty*$set_price;
                        $data['details'][] = array(
                            'set_id'=>$det->set_id,
                            'acquisition_date'=>$det->acquisition_date,
                            'asset_control_no'=>$det->asset_control_no,
                            'et_desc'=>$aaf->et_desc,
                            'unit'=>$unit,
                            'qty'=>$qty,
                            'date_issued'=>$det->date_issued,
                            'unit_price'=>$set_price,
                            'set_name'=>$set_name,
                            'set_lot'=>$set_lot,
                            'currency'=>$currency,
                            'total'=>$total,
                            'count_set'=>$count_set,
                        );

                         $data['set'][]=$count_set;
                    }

                }*/
            }
        }else {
            $data['details'] = array();
            /*$data['department'] =  '';
            $data['type'] =  '';
            $data['date_issued'] =  '';
            $data['user_id'] =  '';*/
        }
        $this->load->view('report/set_print_avail1',$data);
        $this->load->view('template/scripts');
    }

    public function set_print_avail(){  
        $this->load->view('template/header');
        $this->load->view('template/print_head');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $qty=1;
        foreach($this->super_model->select_custom_where("et_head","accountability_id='0' AND cancelled='0'") AS $a){
            $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $a->unit_id);
            foreach($this->super_model->select_custom_where("et_details","et_id='$a->et_id' AND set_id='$id'  AND damage = '0'") AS $b){
                $count_set = $this->super_model->count_custom("SELECT et_head.et_id FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '0' AND set_id ='$id' AND damage = '0'");
                $count_distinct_set = $this->super_model->custom_query_single("ct","SELECT COUNT(DISTINCT set_id) AS ct FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '0' AND  set_id != '0' AND damage = '0'");
                $set_name = $this->super_model->select_column_where("et_set","set_name","set_id",$id);
                $set_lot = $this->super_model->select_column_where("et_set","set_serial_no","set_id",$id);
                $set_price = $this->super_model->select_column_where("et_set","set_price","set_id",$id);
                $total=$qty*$set_price;
                $data['details'][]=array(
                    'set_id'=>$b->set_id,
                    'et_desc'=>$a->et_desc,
                    'asset_control_no'=>$b->asset_control_no,
                    'acquisition_date'=>$b->acquisition_date,
                    'set_name'=>$set_name,
                    'set_lot'=>$set_lot,
                    'unit_price'=>$set_price,
                    'unit'=>$unit,
                    'qty'=>$qty,
                    'total'=>$total,
                    'count_set'=>$count_set,
                    'count_distinct'=>$count_distinct_set
                );
                $data['set'][]=$count_set;
            }
        }
        $this->load->view('report/set_print_avail',$data);
        $this->load->view('template/scripts');
    }

    public function set_print_account(){  
        $this->load->view('template/header');
        $this->load->view('template/print_head');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $empid=$this->uri->segment(4);
        $data['employee'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $empid);
        $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $empid);
        $data['aaf_no'] =$this->super_model->select_column_where("employees", "aaf_no", "employee_id", $empid);
        $data['user_id'] =$_SESSION['fullname'];
        foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$empid) AS $em){
            $data['child'][] = array( 
                'emp'=> $this->super_model->select_column_where("employees", "employee_name", "employee_id", $em->child_id), 
            );
        }
        $qty=1;
        foreach($this->super_model->select_custom_where("et_head","accountability_id='$empid' AND cancelled='0'") AS $a){
            $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $a->unit_id);
            $data['type'] = $this->super_model->select_column_where("employees", "type", "employee_id", $a->accountability_id); 
            $data['department'] = $a->department;
            foreach($this->super_model->select_custom_where("et_details","et_id='$a->et_id' AND set_id='$id'  AND damage = '0'") AS $b){
                $count_set = $this->super_model->count_custom("SELECT et_head.et_id FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '0' AND set_id ='$id' AND damage = '0'");
                $count_distinct_set = $this->super_model->custom_query_single("ct","SELECT COUNT(DISTINCT set_id) AS ct FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '0' AND  set_id != '0' AND damage = '0'");
                $set_name = $this->super_model->select_column_where("et_set","set_name","set_id",$id);
                $set_lot = $this->super_model->select_column_where("et_set","set_serial_no","set_id",$id);
                $set_price = $this->super_model->select_column_where("et_set","set_price","set_id",$id);
                $data['date_issued'] = $b->date_issued;
                $total=$qty*$set_price;
                $data['details'][]=array(
                    'set_id'=>$b->set_id,
                    'et_desc'=>$a->et_desc,
                    'asset_control_no'=>$b->asset_control_no,
                    'acquisition_date'=>$b->acquisition_date,
                    'set_name'=>$set_name,
                    'set_lot'=>$set_lot,
                    'unit_price'=>$set_price,
                    'unit'=>$unit,
                    'qty'=>$qty,
                    'brand'=>$b->brand,
                    'type'=>$b->type,
                    'model'=>$b->model,
                    'serial_no'=>$b->serial_no,
                    'total'=>$total,
                    'count_set'=>$count_set,
                    'count_distinct'=>$count_distinct_set
                );
                $data['set'][]=$count_set;
            }
        }
        $this->load->view('report/set_print_account',$data);
        $this->load->view('template/scripts');
    }

    public function set_print_avail_all(){  
        $this->load->view('template/header');
        $this->load->view('template/print_head');
        $qty=1;
        foreach($this->super_model->select_custom_where("et_head","accountability_id='0' AND cancelled='0'") AS $a){
            $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $a->unit_id);
            $set_id = $this->super_model->select_column_where("et_details", "set_id", "et_id", $a->et_id);
            foreach($this->super_model->select_custom_where("et_details","et_id='$a->et_id' AND set_id!='0'  AND damage = '0'") AS $b){
                $et_set_id = $this->super_model->select_column_where("et_set", "set_id", "set_id", $b->set_id);
                $count_set = $this->super_model->count_custom("SELECT et_head.et_id FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '0' AND set_id ='$et_set_id' AND damage = '0'");
                $set_name = $this->super_model->select_column_where("et_set","set_name","set_id",$b->set_id);
                $set_lot = $this->super_model->select_column_where("et_set","set_serial_no","set_id",$b->set_id);
                $set_price = $this->super_model->select_column_where("et_set","set_price","set_id",$b->set_id);
                $total=$qty*$set_price;
                $data['details'][]=array(
                    'set_id'=>$b->set_id,
                    'et_desc'=>$a->et_desc,
                    'asset_control_no'=>$b->asset_control_no,
                    'acquisition_date'=>$b->acquisition_date,
                    'set_name'=>$set_name,
                    'set_lot'=>$set_lot,
                    'unit_price'=>$set_price,
                    'unit'=>$unit,
                    'qty'=>$qty,
                    'total'=>$total,
                    'count_set'=>$count_set,
                );
                $data['set'][]=$count_set;
            }
        }
        $this->load->view('report/set_print_avail_all',$data);
        $this->load->view('template/scripts');
    }

    public function report_main_emp(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        /*foreach($this->super_model->select_custom_where("et_head", "accountability_id=0") AS $check){
            $data['available_qty']=$this->super_model->count_custom_where("et_details", "damage='0'");           
        }*/
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']=$this->row_avail();
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        /*$data['available_qty']=$this->super_model->select_sum("et_head", "qty", "accountability_id", "0");*/
        $data['location'] = $this->super_model->select_all_order_by('location', 'location_name', 'ASC');
        foreach($this->super_model->select_all_order_by("employees", "employee_name", "ASC") AS $emp){
            /*$count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id'");*/
            //$count = $this->super_model->select_sum("et_head", "qty", "accountability_id",$emp->employee_id);
            $count = $this->super_model->select_sum_where("et_head", "qty", "accountability_id='$emp->employee_id' AND cancelled='0'");
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

    public function report_history(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $ret_id =$this->super_model->select_column_where("return_head", "accountability_id", "accountability_id", $id);
        $count =$this->super_model->count_rows_where("return_head", "accountability_id", $id);
        if($count==0){
            foreach($this->super_model->select_custom_where('et_head', "accountability_id='$id' AND cancelled = '0'") AS $sub){
                foreach($this->super_model->select_custom_where('et_details', "et_id='$sub->et_id' GROUP BY et_id") AS $s){
                    $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                    $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                    $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $s->set_id);
                    $data['sub'][] = array(
                        'et_id'=>$sub->et_id,
                        'ed_id'=>$s->ed_id,
                        'set_id'=>$s->set_id,
                        'set_name'=>$set_name,
                        'cat'=>$category,
                        'subcat'=>$subcat,
                        'unit'=>$unit,
                        'department'=>$sub->department,
                        'et_desc'=>$sub->et_desc,
                        'qty'=>$sub->qty,
                        'accountability'=>$accountability,
                        'accountabilitys'=>'',
                        'empid'=>$sub->accountability_id,
                        'unit_price'=>$s->unit_price,
                        'lost'=>$s->lost,
                        'date_issued'=>'',
                        'date_returned'=>'',
                        'remarks_all'=>'',
                        'remarks'=>'',
                        'damaged'=>'',
                        'incident_description'=>'',
                    );
                }
            }
        }else {
            foreach($this->super_model->select_custom_where('et_head', "accountability_id='$id' AND cancelled = '0'") AS $sub){
                foreach($this->super_model->select_custom_where('et_details', "et_id='$sub->et_id' GROUP BY et_id") AS $s){
                    $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                    $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                    $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $s->set_id);
                    $data['sub'][] = array(
                        'et_id'=>$sub->et_id,
                        'ed_id'=>$s->ed_id,
                        'set_id'=>$s->set_id,
                        'set_name'=>$set_name,
                        'cat'=>$category,
                        'subcat'=>$subcat,
                        'unit'=>$unit,
                        'department'=>$sub->department,
                        'et_desc'=>$sub->et_desc,
                        'qty'=>$sub->qty,
                        'accountability'=>$accountability,
                        'accountabilitys'=>'',
                        'empid'=>$sub->accountability_id,
                        'unit_price'=>$s->unit_price,
                        'lost'=>$s->lost,
                        'date_issued'=>'',
                        'date_returned'=>'',
                        'remarks_all'=>'',
                        'remarks'=>'',
                        'damaged'=>'',
                        'incident_description'=>'',
                    );
                }
            }

            foreach($this->super_model->select_row_where('return_head', "accountability_id",$id) AS $ret){
                foreach($this->super_model->select_row_where('return_details', "return_id",$ret->return_id) AS $r){
                    foreach($this->super_model->select_custom_where('et_details', "ed_id='$r->ed_id'") AS $sa){
                        foreach($this->super_model->select_custom_where('et_head', "et_id='$r->et_id'") AS $sab){
                            $accountabilitys=$this->super_model->select_column_where("employees","employee_name","employee_id",$sab->accountability_id);
                        }
                    }
                    $et_id = $this->super_model->select_column_where("return_details", "et_id", "return_id", $ret->return_id);
                    $unit_id =$this->super_model->select_column_where("et_head", "unit_id", "et_id", $r->et_id);
                    $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $unit_id);
                    $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ret->accountability_id);
                    $category_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $r->et_id);
                    $subcat_id =$this->super_model->select_column_where("et_head", "subcat_id", "et_id", $r->et_id);
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat_id);
                    $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $r->et_id);
                    $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $r->et_id);
                    $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $r->et_id);
                    $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                    $department =$this->super_model->select_column_where("et_head", "department", "et_id", $r->et_id);
                    $et_desc =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $r->et_id);
                    $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $r->et_id);
                    $date_returned =$this->super_model->select_column_where("return_head", "return_date", "return_id", $ret->return_id);
                    $date_issued =$this->super_model->select_column_where("return_details", "date_issued", "return_id", $ret->return_id);
                    $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $r->et_id);
                    $remarks = $ret->return_remarks;
                    $remarks_all = "Turn over to";
                    $damaged = $this->super_model->select_column_where("et_details","damage","et_id",$r->et_id);
                    $rep_edid = $this->super_model->select_column_where("repair_details","ed_id","ed_id",$r->ed_id);
                    $counts = $this->super_model->count_custom_where("et_head","et_id='$r->et_id' AND accountability_id='$id'");
                    if($damaged==0 && $rep_edid==0 && $counts==0){
                        $data['sub'][] = array(
                            'et_id'=>$r->et_id,
                            'ed_id'=>$r->ed_id,
                            'set_id'=>$set_id,
                            'set_name'=>$set_name,
                            'cat'=>$category,
                            'subcat'=>$subcat,
                            'unit'=>$unit,
                            'department'=>$department,
                            'et_desc'=>$et_desc,
                            'qty'=>$qty,
                            'accountability'=>$accountability,
                            'accountabilitys'=>$accountabilitys,
                            'empid'=>$ret->accountability_id,
                            'unit_price'=>$unit_price,
                            'lost'=>$lost,
                            'date_issued'=>$date_issued,
                            'date_returned'=>$date_returned,
                            'remarks_all'=>$remarks_all,
                            'remarks'=>$remarks,
                            'damaged'=>'',
                            'incident_description'=>'',
                        );
                    }
                
                    $dam_etid = $this->super_model->select_column_where("damage_info","et_id","et_id",$et_id);
                    if($et_id == $dam_etid && $damaged==1){
                        foreach($this->super_model->select_row_where("damage_info","et_id",$dam_etid) AS $dam){
                            $remarks="Damaged - ".$dam->incident_date;
                            $et_desc =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $dam->et_id);
                            $unit_id =$this->super_model->select_column_where("et_head", "unit_id", "et_id", $dam->et_id);
                            $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $dam->et_id);
                            $department =$this->super_model->select_column_where("et_head", "department", "et_id", $dam->et_id);
                            $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $unit_id);
                            $accountability_id =$this->super_model->select_column_where("et_head", "accountability_id", "et_id", $dam->et_id);
                            $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $accountability_id);
                            $category_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $dam->et_id);
                            $category =$this->super_model->select_column_where("category", "category_name", "category_id", $category_id);
                            $subcat_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $dam->et_id);
                            $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat_id);
                            $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $dam->et_id);
                            $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $dam->et_id);
                            $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                            $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $dam->et_id);
                            $data['sub'][] = array(
                                'et_id'=>$dam->et_id,
                                'ed_id'=>$dam->ed_id,
                                'set_id'=>$set_id,
                                'set_name'=>$set_name,
                                'cat'=>$category,
                                'subcat'=>$subcat,
                                'unit'=>$unit,
                                'department'=>$department,
                                'et_desc'=>$et_desc,
                                'qty'=>$qty,
                                'accountability'=>$accountability,
                                'accountabilitys'=>'',
                                'empid'=>$accountability_id,
                                'unit_price'=>$unit_price,
                                'lost'=>$lost,
                                'date_issued'=>'',
                                'date_returned'=>'',
                                'remarks'=>$remarks,
                                'remarks_all'=>'',
                                'damaged'=>$damaged,
                                'incident_description'=>$dam->incident_description,
                            );
                        }
                    }

                    if($edid == $rep_edid && $damaged==0){
                        foreach($this->super_model->select_row_where("repair_details","ed_id",$rep_edid) AS $rep){
                            $remarks=$rep->remarks;
                            $remarks_all="Repaired - ".$rep->repair_date;
                            $et_id = $this->super_model->select_column_where("et_details", "et_id", "ed_id", $rep->ed_id);
                            $et_desc =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $et_id);
                            $unit_id =$this->super_model->select_column_where("et_head", "unit_id", "et_id", $et_id);
                            $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $et_id);
                            $department =$this->super_model->select_column_where("et_head", "department", "et_id", $et_id);
                            $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $unit_id);
                            $accountability_id =$this->super_model->select_column_where("et_head", "accountability_id", "et_id", $et_id);
                            $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $accountability_id);
                            $category_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $et_id);
                            $category =$this->super_model->select_column_where("category", "category_name", "category_id", $category_id);
                            $subcat_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $et_id);
                            $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat_id);
                            $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $et_id);
                            $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $et_id);
                            $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                            $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $et_id);
                            $data['sub'][] = array(
                                'et_id'=>$et_id,
                                'ed_id'=>$rep->ed_id,
                                'set_id'=>$set_id,
                                'set_name'=>$set_name,
                                'cat'=>$category,
                                'subcat'=>$subcat,
                                'unit'=>$unit,
                                'department'=>$department,
                                'et_desc'=>$et_desc,
                                'qty'=>$qty,
                                'accountability'=>$accountability,
                                'accountabilitys'=>'',
                                'empid'=>$accountability_id,
                                'unit_price'=>$unit_price,
                                'lost'=>$lost,
                                'date_issued'=>'',
                                'date_returned'=>'',
                                'remarks'=>$remarks,
                                'remarks_all'=>$remarks_all,
                                'damaged'=>'',
                                'incident_description'=>'',
                            );
                        }
                    }
                } 
            }
        }
        $this->load->view('report/report_history',$data);
        $this->load->view('template/scripts');
    }

    public function print_history(){  
        $this->load->view('template/header');
        $this->load->view('template/print_head');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $data['user_id'] =$_SESSION['fullname'];
        $ret_id =$this->super_model->select_column_where("return_head", "accountability_id", "accountability_id", $id);
        $count =$this->super_model->count_rows_where("return_head", "accountability_id", $id);
        $location_id= $this->super_model->select_column_where('employees', 'location_id', 'employee_id', $id);
        $location= $this->super_model->select_column_where('location', 'location_prefix', 'location_id', $location_id);
        $date_format=date("Y");
        $acf_nos= $this->super_model->select_column_where('employees', 'acf_no', 'employee_id', $id);
        if($acf_nos==''){
            $acf = $location."-".$date_format."-1001";
        }else{
            $acf = $acf_nos;
        }

        $acf_pref=explode("-", $acf);
        $one=$acf_pref[0];
        $two=$acf_pref[1];
        $three=$acf_pref[2];
        $four = (!empty($acf_pref[3])) ? $acf_pref[3] : '';
        if(!empty($one) && !empty($two) && !empty($three) && !empty($four)){ 
            $acf_prefix1=$acf_pref[0];
            $acf_prefix2=$acf_pref[1];
            $acf_prefix3=$acf_pref[2];
            $acf_prefix=$acf_prefix1."-".$acf_prefix2."-".$acf_prefix3;
            $series = $acf_pref[3];
        }else {
            $acf_prefix1=$acf_pref[0];
            $acf_prefix2=$acf_pref[1];
            $acf_prefix=$acf_prefix1."-".$acf_prefix2;
            $series = $acf_pref[2];
        }

        $check_existing = $this->super_model->count_custom_where("acf_series", "acf_prefix='$acf_prefix'");
        if($check_existing==0){
            $acf_no= $location."-".$date_format."-1001";
        } else {
            $series = $this->super_model->get_max_where("acf_series", "series","acf_prefix='$acf_prefix'");
            $next=$series+1;
            $acf_no = $location."-".$date_format."-".$next;
        }

        if($acf_nos==''){
            $data['acf_no'] =$acf_no;
        }else {
            $data['acf_no'] =$acf_nos;
        }

        if($count==0){
            foreach($this->super_model->select_custom_where('et_head',"accountability_id='$id' AND cancelled = '0'") AS $sub){
                foreach($this->super_model->select_custom_where('et_details',"et_id='$sub->et_id' GROUP BY et_id") AS $s){
                    $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                    $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                    $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $sub->et_id);
                    $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $sub->et_id);
                    $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $sub->et_id);
                    $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $s->set_id);
                    $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $sub->et_id);
                    $data['sub'][] = array(
                        'et_id'=>$sub->et_id,
                        'ed_id'=>$s->ed_id,
                        'set_id'=>$s->set_id,
                        'set_name'=>$set_name,
                        'cat'=>$category,
                        'subcat'=>$subcat,
                        'unit'=>$unit,
                        'department'=>$sub->department,
                        'et_desc'=>$sub->et_desc,
                        'qty'=>$sub->qty,
                        'accountability'=>$accountability,
                        'accountabilitys'=>'',
                        'empid'=>$sub->accountability_id,
                        'unit_price'=>$s->unit_price,
                        'lost'=>$s->lost,
                        'date_issued'=>'',
                        'date_returned'=>'',
                        'remarks'=>'',
                    );
                }
            }
        }else {
            foreach($this->super_model->select_custom_where('et_head', "accountability_id='$id' AND cancelled = '0'") AS $sub){
                foreach($this->super_model->select_custom_where('et_details', "et_id='$sub->et_id' GROUP BY et_id") AS $s){
                    $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                    $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                    $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $sub->et_id);
                    $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $sub->et_id);
                    $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $sub->et_id);
                    $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $s->set_id);
                    $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $sub->et_id);
                    $data['sub'][] = array(
                        'et_id'=>$sub->et_id,
                        'ed_id'=>$s->ed_id,
                        'set_id'=>$s->set_id,
                        'set_name'=>$set_name,
                        'cat'=>$category,
                        'subcat'=>$subcat,
                        'unit'=>$unit,
                        'department'=>$sub->department,
                        'et_desc'=>$sub->et_desc,
                        'qty'=>$sub->qty,
                        'accountability'=>$accountability,
                        'accountabilitys'=>'',
                        'empid'=>$sub->accountability_id,
                        'unit_price'=>$s->unit_price,
                        'lost'=>$s->lost,
                        'date_issued'=>'',
                        'date_returned'=>'',
                        'remarks'=>'',
                    );
                }
            }

            foreach($this->super_model->select_row_where('return_head', "accountability_id",$id) AS $ret){
                foreach($this->super_model->select_row_where('return_details', "return_id",$ret->return_id) AS $r){
                    foreach($this->super_model->select_custom_where('et_details', "ed_id='$r->ed_id'") AS $sa){
                        foreach($this->super_model->select_custom_where('et_head', "et_id='$r->et_id'") AS $sab){
                            $accountabilitys=$this->super_model->select_column_where("employees","employee_name","employee_id",$sab->accountability_id);
                        }
                    }
                    $et_id = $this->super_model->select_column_where("return_details", "et_id", "return_id", $ret->return_id);
                    $unit_id =$this->super_model->select_column_where("et_head", "unit_id", "et_id", $r->et_id);
                    $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $unit_id);
                    $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $ret->accountability_id);
                    $category_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $r->et_id);
                    $subcat_id =$this->super_model->select_column_where("et_head", "subcat_id", "et_id", $r->et_id);
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat_id);
                    $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $r->et_id);
                    $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $r->et_id);
                    $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $r->et_id);
                    $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                    $department =$this->super_model->select_column_where("et_head", "department", "et_id", $r->et_id);
                    $et_desc =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $r->et_id);
                    $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $r->et_id);
                    $date_returned =$this->super_model->select_column_where("return_head", "return_date", "return_id", $ret->return_id);
                    $date_issued =$this->super_model->select_column_where("return_details", "date_issued", "return_id", $ret->return_id);
                    $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $r->et_id);
                    //$data['atf_no'] =$this->super_model->select_column_where("return_head", "atf_no", "return_id", $ret->return_id);
                    if(!empty($accountabilitys)){
                        $remarks = $ret->return_remarks;
                    }else {
                        if(!empty($ret->return_remarks)){
                            $remarks = $ret->return_remarks.' - Returned';
                        }else {
                            $remarks = 'Returned';
                        }
                    }
                    $damaged = $this->super_model->select_column_where("et_details","damage","et_id",$r->et_id);
                    $rep_edid = $this->super_model->select_column_where("repair_details","ed_id","ed_id",$r->ed_id);
                    $counts = $this->super_model->count_custom_where("et_head","et_id='$r->et_id' AND accountability_id='$id'");
                    if($damaged==0 && $rep_edid==0 && $counts==0){
                        $data['sub'][] = array(
                            'et_id'=>$r->et_id,
                            'ed_id'=>$r->ed_id,
                            'set_id'=>$set_id,
                            'set_name'=>$set_name,
                            'cat'=>$category,
                            'subcat'=>$subcat,
                            'unit'=>$unit,
                            'department'=>$department,
                            'et_desc'=>$et_desc,
                            'qty'=>$qty,
                            'accountability'=>$accountability,
                            'accountabilitys'=>$accountabilitys,
                            'empid'=>$ret->accountability_id,
                            'unit_price'=>$unit_price,
                            'lost'=>$lost,
                            'date_issued'=>$date_issued,
                            'date_returned'=>$date_returned,
                            'remarks'=>$remarks
                        );
                    }

                    $dam_etid = $this->super_model->select_column_where("damage_info","et_id","et_id",$et_id);
                    if($et_id == $dam_etid && $damaged==1){
                        foreach($this->super_model->select_row_where("damage_info","et_id",$dam_etid) AS $dam){
                            $remarks="Damaged - ".$dam->incident_date;
                            $et_desc =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $dam->et_id);
                            $et_desc =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $dam->et_id);
                            $unit_id =$this->super_model->select_column_where("et_head", "unit_id", "et_id", $dam->et_id);
                            $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $dam->et_id);
                            $department =$this->super_model->select_column_where("et_head", "department", "et_id", $dam->et_id);
                            $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $unit_id);
                            $accountability_id =$this->super_model->select_column_where("et_head", "accountability_id", "et_id", $dam->et_id);
                            $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $accountability_id);
                            $category_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $dam->et_id);
                            $category =$this->super_model->select_column_where("category", "category_name", "category_id", $category_id);
                            $subcat_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $dam->et_id);
                            $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat_id);
                            $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $dam->et_id);
                            $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $dam->et_id);
                            $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                            $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $dam->et_id);
                            $data['sub'][] = array(
                                'et_id'=>$dam->et_id,
                                'ed_id'=>$dam->ed_id,
                                'set_id'=>$set_id,
                                'set_name'=>$set_name,
                                'cat'=>$category,
                                'subcat'=>$subcat,
                                'unit'=>$unit,
                                'department'=>$department,
                                'et_desc'=>$et_desc,
                                'qty'=>$qty,
                                'accountability'=>$accountability,
                                'accountabilitys'=>'',
                                'empid'=>$accountability_id,
                                'unit_price'=>$unit_price,
                                'lost'=>$lost,
                                'date_issued'=>'',
                                'date_returned'=>'',
                                'remarks'=>$remarks,
                            );
                        }
                    }

                    if($edid == $rep_edid && $damaged==0){
                        foreach($this->super_model->select_row_where("repair_details","ed_id",$rep_edid) AS $rep){
                            $remarks="Repaired - ".$rep->repair_date." - ".$rep->remarks;
                            $et_id = $this->super_model->select_column_where("et_details", "et_id", "ed_id", $rep->ed_id);
                            $et_desc =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $et_id);
                            $unit_id =$this->super_model->select_column_where("et_head", "unit_id", "et_id", $et_id);
                            $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $et_id);
                            $department =$this->super_model->select_column_where("et_head", "department", "et_id", $et_id);
                            $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $unit_id);
                            $accountability_id =$this->super_model->select_column_where("et_head", "accountability_id", "et_id", $et_id);
                            $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $accountability_id);

                            $category_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $et_id);
                            $category =$this->super_model->select_column_where("category", "category_name", "category_id", $category_id);
                            $subcat_id =$this->super_model->select_column_where("et_head", "category_id", "et_id", $et_id);
                            $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat_id);
                            $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $et_id);
                            $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $et_id);
                            $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                            $unit_price =$this->super_model->select_column_where("et_details", "unit_price", "et_id", $et_id);
                            $data['sub'][] = array(
                                'et_id'=>$sub->et_id,
                                'ed_id'=>$edid,
                                'set_id'=>$set_id,
                                'set_name'=>$set_name,
                                'cat'=>$category,
                                'subcat'=>$subcat,
                                'unit'=>$unit,
                                'department'=>$department,
                                'et_desc'=>$et_desc,
                                'qty'=>$qty,
                                'accountability'=>$accountability,
                                'accountabilitys'=>'',
                                'empid'=>$accountability_id,
                                'unit_price'=>$unit_price,
                                'lost'=>$lost,
                                'date_issued'=>'',
                                'date_returned'=>'',
                                'remarks'=>$remarks,
                            );
                        }
                    }
                } 
            } 
        }
        $this->load->view('report/print_history',$data);
        $this->load->view('template/scripts');
    }

    public function insert_acfno(){
        $acf_no = $this->input->post('acf_no');
        $emp_id = $this->input->post('employee_id');
        $acf= $this->super_model->select_column_where('employees', 'acf_no', 'employee_id', $emp_id);
        $acfdetails=explode("-", $acf_no);
        $one=$acfdetails[0];
        $two=$acfdetails[1];
        $three=$acfdetails[2];
        $four = (!empty($acfdetails[3])) ? $acfdetails[3] : '';

        if(!empty($one) && !empty($two) && !empty($three) && !empty($four)){ 
            $acf_prefix1=$acfdetails[0];
            $acf_prefix2=$acfdetails[1];
            $acf_prefix3=$acfdetails[2];
            $acf_prefix=$acf_prefix1."-".$acf_prefix2."-".$acf_prefix3;
            $series = $acfdetails[3];
            $acf_no = $acf_prefix."-".$series;
        }else {
            $acf_prefix1=$acfdetails[0];
            $acf_prefix2=$acfdetails[1];
            $acf_prefix=$acf_prefix1."-".$acf_prefix2;
            $series = $acfdetails[2];
            $acf_no = $acf_prefix."-".$series;
        }

        if($acf==''){
            $acf_data= array(
                'acf_prefix'=>$acf_prefix,
                'series'=>$series,
            );

            if($this->super_model->insert_into("acf_series", $acf_data)){
                $acf_up = array(
                    'acf_no'=>$acf_no
                ); 
                $this->super_model->update_where("employees", $acf_up, "employee_id", $emp_id);
            }
        }
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
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND cancelled = '0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        /*$data['available_qty']=$this->super_model->select_sum("et_head", "qty", "accountability_id", "0");*/
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $data['location'] = $this->super_model->select_all_order_by('location', 'location_name', 'ASC');
        foreach($this->super_model->custom_query($query) AS $emp){
            $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id' AND cancelled='0'");
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

    public function search_report(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $url=$this->uri->segment(2);
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

        if(!empty($this->input->post('condition'))){
            $data['condition'] = $this->input->post('condition');
        } else {
            $data['condition'] = "null";
        }

        if(!empty($this->input->post('placement'))){
            $data['placement'] = $this->input->post('placement');
        } else {
            $data['placement'] = "null";
        }

        if(!empty($this->input->post('company'))){
            $data['company'] = $this->input->post('company');
        } else {
            $data['company'] = "null";
        }

        if(!empty($this->input->post('rack'))){
            $data['rack'] = $this->input->post('rack');
        } else {
            $data['rack'] = "null";
        }

        $sql="";
        $filter = "";
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

        if(!empty($this->input->post('condition'))){
            $condition = $this->input->post('condition');
            $sql.=" et_details.physical_condition LIKE '%$condition%' AND";
            $filter .= "Physical Condition - ".$condition.", ";
        }

        if(!empty($this->input->post('placement'))){
            $placement = $this->input->post('placement');
            $sql.=" et_details.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= "Placement - ".$place.", ";
        }

        if(!empty($this->input->post('company'))){
            $company = $this->input->post('company');
            $sql.=" et_details.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .= "company - ".$rr.", ";
        }

        if(!empty($this->input->post('rack'))){
            $rack = $this->input->post('rack');
            $sql.=" et_details.rack_id = '$rack' AND";
            $rak = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack);
            $filter .= "Rack - ".$rak.", ";
        }

        $query=substr($sql, 0, -3);
        $data['filt']=substr($filter, 0, -2);
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "damage='0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $data['company1'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        $data['placement1'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['rack1'] = $this->super_model->select_all_order_by('rack', 'rack_name', 'ASC');
        foreach ($this->super_model->select_join_where("et_head", "et_details", "cancelled='0' AND save_temp='0' AND $query", "et_id") AS $et){
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
                    'empid'=>$et->accountability_id,
                );
        }
        foreach($this->super_model->select_all_order_by("employees", "employee_name", "ASC") AS $emp){
            $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id' AND cancelled='0'");
            $data['employees'][] = array(
                'employee_id'=>$emp->employee_id,
                'employee'=>$emp->employee_name,
                'count'=>$count
            );
        }

        $this->load->view('report/report_main',$data);
        /*if($url=='report_main'){
            $this->load->view('report/report_main',$data);
        }else{
            $this->load->view('report/report_draft',$data);
        }*/
        $this->load->view('template/scripts');
    }

    public function search_report_draft(){
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $url=$this->uri->segment(2);
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

        if(!empty($this->input->post('condition'))){
            $data['condition'] = $this->input->post('condition');
        } else {
            $data['condition'] = "null";
        }

        if(!empty($this->input->post('placement'))){
            $data['placement'] = $this->input->post('placement');
        } else {
            $data['placement'] = "null";
        }

        if(!empty($this->input->post('company'))){
            $data['company'] = $this->input->post('company');
        } else {
            $data['company'] = "null";
        }

        if(!empty($this->input->post('rack'))){
            $data['rack'] = $this->input->post('rack');
        } else {
            $data['rack'] = "null";
        }

        $sql="";
        $filter = "";
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

        if(!empty($this->input->post('condition'))){
            $condition = $this->input->post('condition');
            $sql.=" et_details.physical_condition LIKE '%$condition%' AND";
            $filter .= "Physical Condition - ".$condition.", ";
        }

        if(!empty($this->input->post('placement'))){
            $placement = $this->input->post('placement');
            $sql.=" et_details.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= "Placement - ".$place.", ";
        }

        if(!empty($this->input->post('company'))){
            $company = $this->input->post('company');
            $sql.=" et_details.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .= "company - ".$rr.", ";
        }

        if(!empty($this->input->post('rack'))){
            $rack = $this->input->post('rack');
            $sql.=" et_details.rack_id = '$rack' AND";
            $rak = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack);
            $filter .= "Rack - ".$rak.", ";
        }

        $query=substr($sql, 0, -3);
        $data['filt']=substr($filter, 0, -2);
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']=$this->super_model->select_count_join_inner('et_head','et_details', "cancelled = '0' AND damage='0' AND accountability_id = '0'",'et_id');
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        $data['cat'] = $this->super_model->select_all_order_by('category', 'category_name', 'ASC');
        $data['company1'] = $this->super_model->select_all_order_by('company', 'company_name', 'ASC');
        $data['placement1'] = $this->super_model->select_all_order_by('placement', 'placement_name', 'ASC');
        $data['rack1'] = $this->super_model->select_all_order_by('rack', 'rack_name', 'ASC');
        foreach ($this->super_model->select_join_where("et_head", "et_details", "cancelled='0' AND save_temp=1 AND $query", "et_id") AS $et){
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
                    'empid'=>$et->accountability_id,
                );
        }
        foreach($this->super_model->select_all_order_by("employees", "employee_name", "ASC") AS $emp){
            $count = $this->super_model->count_custom_where('et_head',"accountability_id = '$emp->employee_id' AND cancelled='0'");
            $data['employees'][] = array(
                'employee_id'=>$emp->employee_id,
                'employee'=>$emp->employee_name,
                'count'=>$count
            );
        }

        $this->load->view('report/report_draft',$data);
        /*if($url=='report_main'){
            $this->load->view('report/report_main',$data);
        }else{
            $this->load->view('report/report_draft',$data);
        }*/
        $this->load->view('template/scripts');
    }

    public function report_sub(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        //$row=$this->super_model->count_custom_where("et_head","accountability_id = '$id'");
        $row=$this->super_model->count_join_where('et_head','et_details', "accountability_id='$id' AND cancelled = '0'","et_id");
        if($row!=0){
            foreach($this->super_model->select_join_where('et_head','et_details', "accountability_id='$id' AND cancelled = '0'","et_id") AS $sub){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $sub->et_id);
                $lost =$this->super_model->select_column_where("et_details", "lost", "et_id", $sub->et_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $sub->et_id);
                $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
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
                    'accountability'=>$accountability,
                    'empid'=>$sub->accountability_id,
                    'lost'=>$lost,
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
        $data['ed_id']=$this->uri->segment(4);
        $ed_id=$this->uri->segment(4);
        $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $sets = $this->super_model->select_column_where("et_details","set_id","ed_id",$ed_id);
        $data['set']=$this->super_model->select_row_where("et_set","set_id",$sets);
        $row=$this->super_model->count_custom_where("et_head","accountability_id = '$id' AND cancelled ='0'");
        if($row!=0){
            foreach($this->super_model->select_custom_where('et_head', "accountability_id='$id' AND cancelled ='0' ORDER BY et_desc ASC") AS $sub){
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $sub->et_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $sub->et_id);
                $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                $rows = $this->super_model->count_rows_where("et_details","ed_id",$edid);
                if($rows!=0){
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
                        'employee_id'=>$sub->accountability_id,
                        'accountability'=>$accountability
                    );
                }
            }
        }else {
            $data['sub'] = array();
        }
        $this->load->view('report/create_set',$data);
        $this->load->view('template/scripts');
    }

    public function insert_set(){
        $id=$this->input->post('id');
        $count = $this->input->post('count');
        $edid = $this->input->post('edid');
        $set_ed = $this->input->post('set_ed');
        $sets = $this->input->post('set_id');
        $name = $this->input->post('name');
        $price = $this->input->post('price');
        $serial = $this->input->post('serial');
        $checked =count($edid);
        $rows_et=$this->super_model->count_rows("et_set");
        if($rows_et==0){
            $set_id= 1;
        } else {
            $series = $this->super_model->get_max("et_set", "set_id");
            $set_id = $series+1;
        }

        if(empty($set_ed)){
            $set_data = array(
                'set_id'=>$set_id,
                'set_name'=>$name,
                'set_price'=>$price,
                'set_serial_no'=>$serial,
            );
            $this->super_model->insert_into("et_set", $set_data);
        }else {
            $set_data = array(
                'set_name'=>$name,
                'set_price'=>$price,
                'set_serial_no'=>$serial,
            );

            $this->super_model->update_where("et_set", $set_data, "set_id", $sets);
        }

        for($x=0;$x<$checked;$x++){
            $det_data = array(
                'set_id'=>$set_id
            ); 
            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
        }

        if(!empty($set_ed)){
        ?>
        <script>alert('Successfully Updated!'); window.location.href ='<?php echo base_url(); ?>index.php/report/create_set/<?php echo $id; ?>/<?php echo $set_ed; ?>'</script>
        <?php
        }else{
        ?>
        <script>alert('Successfully Set!'); window.location.href ='<?php echo base_url(); ?>index.php/report/create_set/<?php echo $id; ?>'</script>
        <?php
        }
    }

    public function rem_set(){
        $edid=$this->uri->segment(3);
        $id=$this->uri->segment(4);
        $det_data = array(
            'set_id'=>0
        ); 
        $this->super_model->update_where("et_details", $det_data, "ed_id", $edid);
        ?>
        <script>window.location.href ='<?php echo base_url(); ?>index.php/report/create_set/<?php echo $id; ?>'</script>
        <?php
    }

    public function create_set_avail(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $data['ed_id']=$this->uri->segment(3);
        $ed_id=$this->uri->segment(3);
        $sets = $this->super_model->select_column_where("et_details","set_id","ed_id",$ed_id);
        $data['set']=$this->super_model->select_row_where("et_set","set_id",$sets);
        $row=$this->super_model->count_custom_where("et_head","accountability_id = '0' AND cancelled = '0'");
        if($row!=0){
            foreach($this->super_model->select_custom_where('et_head', 'accountability_id=0 AND cancelled=0') AS $sub){
                $data['name'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $sub->unit_id);
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $sub->accountability_id);
                $category =$this->super_model->select_column_where("category", "category_name", "category_id", $sub->category_id);
                $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $sub->subcat_id);
                $edid =$this->super_model->select_column_where("et_details", "ed_id", "et_id", $sub->et_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $sub->et_id);
                $set_name =$this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                $rows = $this->super_model->count_custom_where("et_details","ed_id='$edid' AND damage='0'");
                if($rows!=0){
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
            }
        }else {
            $data['sub'] = array();
        }
        $this->load->view('report/create_set_avail',$data);
        $this->load->view('template/scripts');
    }

    public function insert_set_avail(){
        $count = $this->input->post('count');
        $edid = $this->input->post('edid');
        $set_ed = $this->input->post('set_ed');
        $sets = $this->input->post('set_id');
        $name = $this->input->post('name');
        $price = $this->input->post('price');
        $serial = $this->input->post('serial');
        $checked =count($edid);
        $rows_et=$this->super_model->count_rows("et_set");
        if($rows_et==0){
            $set_id= 1;
        } else {
            $series = $this->super_model->get_max("et_set", "set_id");
            $set_id = $series+1;
        }

        if(empty($set_ed)){
            $set_data = array(
                'set_id'=>$set_id,
                'set_name'=>$name,
                'set_price'=>$price,
                'set_serial_no'=>$serial,
            );
            $this->super_model->insert_into("et_set", $set_data);
        }else {
            $set_data = array(
                'set_name'=>$name,
                'set_price'=>$price,
                'set_serial_no'=>$serial,
            );
            $this->super_model->update_where("et_set", $set_data, "set_id", $sets);
        }

        for($x=0;$x<$checked;$x++){
            $det_data = array(
                'set_id'=>$set_id
            ); 
            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
        }
        
        if(!empty($set_ed)){
        ?>
        <script>alert('Successfully Updated!'); window.location.href ='<?php echo base_url(); ?>index.php/report/create_set_avail/<?php echo $set_ed; ?>'</script>
        <?php
        }else{
        ?>
        <script>alert('Successfully Set!'); window.location.href ='<?php echo base_url(); ?>index.php/report/create_set_avail'</script>
        <?php
        }
    }

    public function rem_set_avail(){
        $edid=$this->uri->segment(3);
        $det_data = array(
            'set_id'=>0
        ); 
        $this->super_model->update_where("et_details", $det_data, "ed_id", $edid);
        ?>
        <script>window.location.href ='<?php echo base_url(); ?>index.php/report/create_set_avail'</script>
        <?php
    }

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
                    $company = $this->super_model->select_column_where("company", "company_name", "company_id", $det->company_id);
                    $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $det->rack_id);
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
                        'physical_condition'=>$det->physical_condition,
                        'currency'=>$currency,
                        'company'=>$company,
                        'rack'=>$rack,
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
        $data['quantity'] = $this->super_model->select_column_custom_where('et_head', 'qty', "cancelled = '0' AND accountability_id = '$id' AND et_id = '$et_id'");
        $data['location'] = $this->super_model->select_all_order_by("location","location_name","ASC");
        $row=$this->super_model->count_custom_where("et_head","accountability_id='$id' AND cancelled='0'");
        if($row!=0){
            foreach($this->super_model->select_custom_where("et_head", "et_id='$et_id' AND cancelled='0'") AS $head){
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
        $changeloc = $this->input->post('changeloc');
        $location_id = $this->input->post('location_id');
        $received_by = $this->input->post('rec_id');
        $head_rows = $this->super_model->count_rows("return_head");
        if($head_rows==0){
            $return_id=1;
        } else {
            $maxid=$this->super_model->get_max("return_head", "return_id");
            $return_id=$maxid+1;
        }

        foreach($this->super_model->select_row_where("employees","employee_id", $id) AS $l){
            $locations = $this->super_model->select_column_where("location","location_id",'location_id',$l->location_id);
            $location_prefix = $this->super_model->select_column_where("location","location_prefix",'location_id',$l->location_id);
            if($locations == $l->location_id){
                $location = $location_prefix;
            }else {
                $location = 'NA';
            }
        }

        $atf_format = date("Y");
        $ret_prefix= $this->super_model->select_column_custom_where("return_head", "atf_no", "return_date LIKE '$atf_format%'");
        
        $ret_pref=explode("-", $ret_prefix);
        $ret_one=$ret_pref[0];
        $ret_two=(!empty($ret_pref[1])) ? $ret_pref[1] : '';
        $ret_three=$ret_pref[2];
        $ret_four = (!empty($ret_pref[3])) ? $ret_pref[3] : '';
        if(!empty($ret_one) && !empty($ret_two) && !empty($ret_three) && !empty($ret_four)){
            $atf_pref1=$ret_pref[0];
            $atf_pref2=$ret_pref[1];
            $atf_pref3=$ret_pref[2];
            $atf_pref=$atf_pref1."-".$atf_pref2."-".$atf_pref3;
            $series = $ret_pref[3];
        }else if(!empty($ret_one) && !empty($ret_two) && !empty($ret_three)){
            $atf_pref1=$ret_pref[0];
            $atf_pref=$atf_pref1;
            $series = $ret_pref[1];
        }else {
            $atf_pref1=$ret_pref[0];
            $atf_pref2=$ret_pref[1];
            $atf_pref=$atf_pref1."-".$atf_pref2;
            $series = $ret_pref[2];
        }

        $rows=$this->super_model->count_custom_where("atf_series","atf_prefix = '$atf_pref'");
        if($rows==0){
            $atf_no= $location."-".$atf_format."-1001";
        } else {
            $series = $this->super_model->get_max_where("atf_series", "series","atf_prefix = '$atf_pref'");
            $next=$series+1;
            $atf_no = $location."-".$atf_format."-".$next;
        }

        $atfdetails=explode("-", $atf_no);
        $atf_one=$atfdetails[0];
        $atf_two=(!empty($atfdetails[1])) ? $atfdetails[1] : '';
        $atf_three=$atfdetails[2];
        $atf_four = (!empty($atfdetails[3])) ? $atfdetails[3] : '';
        if(!empty($atf_one) && !empty($atf_two) && !empty($atf_three) && !empty($atf_four)){
            $atf_prefix1=$atfdetails[0];
            $atf_prefix2=$atfdetails[1];
            $atf_prefix3=$atfdetails[2];
            $atf_prefix=$atf_prefix1."-".$atf_prefix2."-".$atf_prefix3;
            $series = $atfdetails[3];
        }else if(!empty($atf_one) && !empty($atf_two) && !empty($atf_three)){
            $atf_prefix1=$atfdetails[0];
            $atf_prefix=$atf_prefix1;
            $series = $atfdetails[1];
        }else {
            $atf_prefix1=$atfdetails[0];
            $atf_prefix2=$atfdetails[1];
            $atf_prefix=$atf_prefix1."-".$atf_prefix2;
            $series = $atfdetails[2];
        }
        

        $atf_data= array(
            'atf_prefix'=>$atf_prefix,
            'series'=>$series
        );
        $this->super_model->insert_into("atf_series", $atf_data);

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
            $ars = $this->input->post('ars_no');
            $assetdetails=explode("-", $ars);
            $one=$assetdetails[0];
            $two=(!empty($assetdetails[1])) ? $assetdetails[1] : '';
            $three=$assetdetails[2];
            $four = $assetdetails[3];
            $five = (!empty($assetdetails[4])) ? $assetdetails[4] : '';
            if(!empty($one) && !empty($two) && !empty($three) && !empty($four) && !empty($five)){
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix3=$assetdetails[2];
                $subcat_prefix4=$assetdetails[3];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3."-".$subcat_prefix4;
                $series = $assetdetails[4];
            }else if(!empty($one) && !empty($two) && !empty($three)){
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
                $series = $assetdetails[2];
            }else {
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix3=$assetdetails[2];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3;
                $series = $assetdetails[3];
            }

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
                                'change_location'=>$changeloc,
                                'location_id'=>$location_id,
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
                                'date_issued'=>'',
                                'change_location'=>$changeloc,
                                'location_id'=>$location_id,
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
        
        $rows=$this->super_model->count_custom_where("employees","status = '0' AND employee_name LIKE '%$checked%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "status = '0' AND employee_name LIKE '%$checked%'") AS $acct){ 
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
        
        $rows=$this->super_model->count_custom_where("employees","status = '0' AND employee_name LIKE '%$submitted%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "status = '0' AND employee_name LIKE '%$submitted%'") AS $acct){ 
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
        
        $rows=$this->super_model->count_custom_where("employees","status = '0' AND employee_name LIKE '%$noted%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "status = '0' AND employee_name LIKE '%$noted%'") AS $acct){ 
                    ?>
                   <li onClick="selectNtd('<?php echo $acct->employee_id; ?>','<?php echo $acct->employee_name; ?>','<?php echo $id; ?>')"><?php echo $acct->employee_name; ?></li>
                <?php 
            }
             echo "<ul>";
        }
    }

    public function rec_list(){
        $rec=$this->input->post('rec');
        $rows=$this->super_model->count_custom_where("employees","status = '0' AND employee_name LIKE '%$rec%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "status = '0' AND employee_name LIKE '%$rec%'") AS $acct){ 
                   
                    ?>
                   <li onClick="selectRec('<?php echo $acct->employee_id; ?>','<?php echo $acct->employee_name; ?>')"><?php echo $acct->employee_name; ?></li>
                <?php 
            }
             echo "<ul>";
        }
    }

    public function getArs(){
        $date = $this->input->post('date');
        $id = $this->input->post('ids');
        foreach($this->super_model->select_row_where("employees","employee_id", $id) AS $l){
            /*$location = $this->super_model->select_column_where("location","location_name",'location_id',$l->location_id);
            if($location == 'Bacolod'){
                $location = 'BCD';
            }else {
                $location = 'BS';
            }*/
            $locations = $this->super_model->select_column_where("location","location_id",'location_id',$l->location_id);
            $location_prefix = $this->super_model->select_column_where("location","location_prefix",'location_id',$l->location_id);
            if($locations == $l->location_id){
                $location = $location_prefix;
            }else {
                $location = 'NA';
            }
        }

        $date_format = date("Y-m",strtotime($date));
        $prefix= $this->super_model->select_column_custom_where("return_head", "ars_no", "return_date LIKE '$date_format%'");
        //secho $prefix;
        $assetdetails=explode("-", $prefix);
        $one=$assetdetails[0];
        $two=$assetdetails[1];
        $three=(!empty($prefix[2])) ? $prefix[2] : '';
        $four = $assetdetails[3];
        $five = (!empty($prefix[4])) ? $prefix[4] : '';
        if(!empty($one) && !empty($two) && !empty($three) && !empty($four) && !empty($five)){
            $subcat_prefix1=$assetdetails[0];
            $subcat_prefix2=$assetdetails[1];
            $subcat_prefix3=$assetdetails[2];
            $subcat_prefix4=$assetdetails[3];
            $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3."-".$subcat_prefix4;
            $series = $assetdetails[4];
        }else if(!empty($one) && !empty($two) && !empty($three)){
            $subcat_prefix1=$assetdetails[0];
            $subcat_prefix2=$assetdetails[1];
            $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2;
            $series = $assetdetails[2];
        }else {
            $subcat_prefix1=$assetdetails[0];
            $subcat_prefix2=$assetdetails[1];
            $subcat_prefix3=$assetdetails[2];
            $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3;
            $series = $assetdetails[3];
        }

        $rows=$this->super_model->count_custom_where("returned_series","prefix = '$subcat_prefix'");
        if($rows==0){
            $ars_no= $location."-".$date_format."-1001";
        } else {
            $series = $this->super_model->get_max("returned_series", "series","prefix = '$subcat_prefix'");
            $next=$series+1;
            $ars_no = $location."-".$date_format."-".$next;
        }
        echo '<option value="'. $ars_no .'">'. $ars_no .'</option>';
    }

    public function getEtdr(){
        $date = $this->input->post('date');
        $id = $this->input->post('id');

        if($id!=0){
            foreach($this->super_model->select_row_where("employees","employee_id", $id) AS $l){
                /*$location = $this->super_model->select_column_where("location","location_name",'location_id',$l->location_id);
                if($location == 'Bacolod'){
                    $location = 'BCD';
                }else {
                    $location = 'BS';
                }*/
                $locations = $this->super_model->select_column_where("location","location_id",'location_id',$l->location_id);
                $location_prefix = $this->super_model->select_column_where("location","location_prefix",'location_id',$l->location_id);
                if($locations == $l->location_id){
                    $location = $location_prefix;
                }else {
                    $location = 'NA';
                }
            }
        }else {
            $location = 'NA';
        }
        $date_format = date("Y-m",strtotime($date));
        $prefix= $this->super_model->select_column_custom_where("damage_info", "etdr_no", "incident_date LIKE '$date_format%'");
        //secho $prefix;
        $rows=$this->super_model->count_custom_where("damage_info","etdr_no = '$prefix'");
        if($rows==0){
            $etdr_no= $location."-".$date_format."-1001";
        } else {
            $series = $this->super_model->get_max("damage_series", "series","damge_prefix = '$prefix'");
            $next=$series+1;
            $etdr_no = $location."-".$date_format."-".$next;
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
        $data['quantity'] = $this->super_model->select_column_custom_where('et_head', 'qty', "cancelled = '0' AND accountability_id = '$id' AND et_id = '$et_id'");
        $row=$this->super_model->count_custom_where("et_head","accountability_id='$id' AND cancelled='0'");
        if($row!=0){
            foreach($this->super_model->select_custom_where("et_head", "et_id='$et_id' AND cancelled='0'") AS $head){
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
                            ); 
                            $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                        }
                    }
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
                            foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $det){
                                $det_data = array(
                                    'date_issued'=>'',
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
        foreach($this->super_model->select_custom_where('et_head', "et_id='$et_id' AND cancelled='0'") AS $head){ 
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
            foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid) AS $det){
                $det_data = array(
                    'damage'=>1
                ); 
                $this->super_model->update_where("et_details", $det_data, "ed_id", $edid);
            }

            if($id!=0){ 
                foreach($this->super_model->select_row_where("employees","employee_id", $id) AS $l){
                    $locations = $this->super_model->select_column_where("location","location_id",'location_id',$l->location_id);
                    $location_prefix = $this->super_model->select_column_where("location","location_prefix",'location_id',$l->location_id);
                    if($locations == $l->location_id){
                        $location1 = $location_prefix;
                    }else {
                        $location1 = 'NA';
                    }
                }
            }else {
                $location1 = 'NA';
            }

            $date_format = date("Y-m");
            $damage_no= $this->super_model->select_column_custom_where("damage_info", "etdr_no", "incident_date LIKE '$date_format%'");
            $dam_pref=explode("-", $damage_no);
            $one1=$dam_pref[0];
            $two1=$dam_pref[1];
            $three1=(!empty($dam_pref[2])) ? $dam_pref[2] : '';
            $four1 = $dam_pref[3];
            $five1 = (!empty($dam_pref[4])) ? $dam_pref[4] : '';
            if(!empty($one1) && !empty($two1) && !empty($three1) && !empty($four1) && !empty($five1)){
                $dam_prefix1=$dam_pref[0];
                $dam_prefix2=$dam_pref[1];
                $dam_prefix3=$dam_pref[2];
                $dam_prefix4=$dam_pref[3];
                $dam_prefix=$dam_prefix1."-".$dam_prefix2."-".$dam_prefix3."-".$dam_prefix4;
                //$series = $dam_pref[4];
            }else {
                $dam_prefix1=$dam_pref[0];
                $dam_prefix2=$dam_pref[1];
                $dam_prefix3=$dam_pref[2];
                $dam_prefix=$dam_prefix1."-".$dam_prefix2."-".$dam_prefix3;
                //$series = $dam_pref[3];
            }

            $rows=$this->super_model->count_custom_where("damage_series","damage_prefix = '$dam_prefix'");
            if($rows==0){
                $etdr_no= $location1."-".$date_format."-1001";
            } else {
                $series = $this->super_model->get_max_where("damage_series", "series","damage_prefix = '$dam_prefix'");
                $next=$series+1;
                $etdr_no = $location1."-".$date_format."-".$next;
            }

            $damagedetails=explode("-", $etdr_no);
            $dam_one=$damagedetails[0];
            $dam_two=$damagedetails[1];
            $dam_three=(!empty($damagedetails[2])) ? $damagedetails[2] : '';
            $dam_four = $damagedetails[3];
            $dam_five = (!empty($damagedetails[4])) ? $damagedetails[4] : '';
            if(!empty($dam_one) && !empty($dam_two) && !empty($dam_three) && !empty($dam_four) && !empty($dam_five)){
                $damage_prefix1=$damagedetails[0];
                $damage_prefix2=$damagedetails[1];
                $damage_prefix3=$damagedetails[2];
                $damage_prefix4=$damagedetails[3];
                $damage_prefix=$damage_prefix1."-".$damage_prefix2."-".$damage_prefix3."-".$damage_prefix4;
                $series = $damagedetails[4];
            }else {
                $damage_prefix1=$damagedetails[0];
                $damage_prefix2=$damagedetails[1];
                $damage_prefix3=$damagedetails[2];
                $damage_prefix=$damage_prefix1."-".$damage_prefix2."-".$damage_prefix3;
                $series = $damagedetails[3];
            }
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
        }

        $atf_format = date("Y");
        $return_prefix= $this->super_model->select_column_custom_where("return_head", "atf_no", "return_date LIKE '$atf_format%'");
        $ret_pref=explode("-", $return_prefix);
        $one3=$ret_pref[0];
        $two3=(!empty($ret_pref[1])) ? $ret_pref[1] : '';
        $three3=$ret_pref[2];
        $four3 = (!empty($ret_pref[3])) ? $ret_pref[3] : '';
        if(!empty($one3) && !empty($two3) && !empty($three3) && !empty($four3)){
            $ret_prefix1=$ret_pref[0];
            $ret_prefix2=$ret_pref[1];
            $ret_prefix3=$ret_pref[2];
            $ret_prefix=$ret_prefix1."-".$ret_prefix2."-".$ret_prefix3;
            //$series = $ret_pref[3];
        }else {
            $ret_prefix1=$ret_pref[0];
            $ret_prefix2=$ret_pref[1];
            $ret_prefix=$ret_prefix1."-".$ret_prefix2;
            //$series = $ret_pref[2];
        }

        $row=$this->super_model->count_custom_where("atf_series","atf_prefix = '$ret_prefix'");
        if($row==0){
            $atf_no= $location1."-".$atf_format."-1001";
        } else {
            $series = $this->super_model->get_max_where("atf_series", "series","atf_prefix = '$ret_prefix'");
            $next=$series+1;
            $atf_no = $location1."-".$atf_format."-".$next;
        }

        $atfdetails=explode("-", $atf_no);
        $atf_one=$atfdetails[0];
        $atf_two=(!empty($atfdetails[1])) ? $atfdetails[1] : '';
        $atf_three=$atfdetails[2];
        $atf_four = (!empty($atfdetails[3])) ? $atfdetails[3] : '';
        if(!empty($atf_one) && !empty($atf_two) && !empty($atf_three) && !empty($atf_four)){
            $atf_prefix1=$atfdetails[0];
            $atf_prefix2=$atfdetails[1];
            $atf_prefix3=$atfdetails[2];
            $atf_prefix=$atf_prefix1."-".$atf_prefix2."-".$atf_prefix3;
            $series = $atfdetails[3];
        }else {
            $atf_prefix1=$atfdetails[0];
            $atf_prefix2=$atfdetails[1];
            $atf_prefix=$atf_prefix1."-".$atf_prefix2;
            $series = $atfdetails[2];
        }

        $atf_data= array(
            'atf_prefix'=>$atf_prefix,
            'series'=>$series
        );
        $this->super_model->insert_into("atf_series", $atf_data);


        $date_format = date("Y-m",strtotime($date));
        $arsprefix= $this->super_model->select_column_custom_where("return_head", "ars_no", "return_date LIKE '$date_format%'");
        $pref=explode("-", $arsprefix);
        $one2=$pref[0];
        $two2=$pref[1];
        $three2=(!empty($pref[2])) ? $pref[2] : '';
        $four2 = $pref[3];
        $five2 = (!empty($pref[4])) ? $pref[4] : '';
        if(!empty($one2) && !empty($two2) && !empty($three2) && !empty($four2) && !empty($five2)){
            $sub_prefix1=$pref[0];
            $sub_prefix2=$pref[1];
            $sub_prefix3=$pref[2];
            $sub_prefix4=$pref[3];
            $sub_prefix=$sub_prefix1."-".$sub_prefix2."-".$sub_prefix3."-".$sub_prefix4;
            //$series = $pref[4];
        }else{
            $sub_prefix1=$pref[0];
            $sub_prefix2=$pref[1];
            $sub_prefix3=$pref[2];
            $sub_prefix=$sub_prefix1."-".$sub_prefix2."-".$sub_prefix3;
            //$series = $pref[3];
        }

        $rowss=$this->super_model->count_custom_where("returned_series","prefix = '$sub_prefix'");
        if($rowss==0){
            $ars_no= $location1."-".$date_format."-1001";
        } else {
            $series = $this->super_model->get_max_where("returned_series", "series","prefix = '$sub_prefix'");
            $next=$series+1;
            $ars_no = $location1."-".$date_format."-".$next;
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
            $asset_one=$assetdetails[0];
            $asset_two=$assetdetails[1];
            $asset_three=(!empty($assetdetails[2])) ? $assetdetails[2] : '';
            $asset_four = $assetdetails[3];
            $asset_five = (!empty($assetdetails[4])) ? $assetdetails[4] : '';
            if(!empty($asset_one) && !empty($asset_two) && !empty($asset_three) && !empty($asset_four) && !empty($asset_five)){
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix3=$assetdetails[2];
                $subcat_prefix4=$assetdetails[3];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3."-".$subcat_prefix4;
                $series = $assetdetails[4];
            }else{
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix3=$assetdetails[2];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3;
                $series = $assetdetails[3];
            }
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
        foreach($this->super_model->select_custom_where('et_head', "et_id='$et_id' AND cancelled='0'") AS $head){ 
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
        $this->load->view('template/print_head');
        $data['id']=$this->uri->segment(3);
        $damage_id=$this->uri->segment(3);
        foreach($this->super_model->select_row_where('damage_info', 'damage_id', $damage_id) AS $dam){
            foreach($this->super_model->select_row_where('et_head', 'et_id', $dam->et_id) AS $head){ 
                $item = $this->super_model->select_column_where("et_head", "et_desc", "et_id", $head->et_id);
            }
            $data['type'] = $this->super_model->select_column_custom_where("employees", "type", "status = '0' AND employee_id ='$dam->submitted_by'"); 
            $types = $this->super_model->select_column_custom_where("employees", "type", "status = '0' AND employee_id ='$dam->submitted_by'");
            $typec = $this->super_model->select_column_custom_where("employees", "type", "status = '0' AND employee_id ='$dam->checked_by'");
            $typen = $this->super_model->select_column_custom_where("employees", "type", "status = '0' AND employee_id ='$dam->noted_by'");
            foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$dam->submitted_by) AS $em){
                $status = $this->super_model->select_column_custom_where("employees", "status", "status = '0' AND employee_id='$em->child_id'");
                $data['child'][] = array( 
                    'emp'=> $this->super_model->select_column_custom_where("employees", "employee_name", "status = '0' AND employee_id='$em->child_id'"), 
                    'status'=> $status, 
                );
            }
            $data['user_id'] =$_SESSION['fullname'];
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
                'types'=> $types,
                'typec'=> $typec,
                'typen'=> $typen,
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
        $this->load->view('template/print_head'); 
        $data['employee'] = $this->super_model->select_all_order_by("employees","employee_name","ASC"); 
        $data['user_id'] = $_SESSION['fullname'];
        $this->load->view('report/aaf_assign_rep',$data);
        $this->load->view('template/scripts');
    }

    public function assignlist(){
        $assign=$this->input->post('assign');
        $rows=$this->super_model->count_custom_where("employees","status = '0' AND employee_name LIKE '%$assign%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "status = '0' AND employee_name LIKE '%$assign%'") AS $emp){ 
                if($emp->type == '1'){
            ?>
                <li onClick="selectAssign('<?php echo $emp->employee_id; ?>','<?php echo $emp->employee_name; ?>','<?php echo $emp->department; ?>','<?php echo $emp->position; ?>','<?php echo $emp->aaf_no; ?>', '0', '1')"><?php echo $emp->employee_name; ?></li>
                <?php 
                } else { 
                    $ch = '';
                     foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$emp->employee_id) AS $child){
                        $ch.=$this->super_model->select_column_custom_where("employees", "employee_name", "status = '0' AND employee_id='$child->child_id'"). ", ";
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
            foreach($this->super_model->select_custom_where("et_head", "accountability_id='0' AND cancelled='0' AND et_desc LIKE '%$item%'") AS $itm){
                foreach($this->super_model->select_custom_where("et_details", "damage='0' AND et_id ='$itm->et_id' AND change_location = '0' AND lost='0'") AS $det){  
                    $qty = 1;
                    $unit = $this->super_model->select_column_where("unit", "unit_name", "unit_id", $itm->unit_id);
                    $total = $det->unit_price*$qty;
            ?>
                   <li onClick="selectItem('<?php echo $itm->et_id; ?>','<?php echo $det->set_id; ?>','<?php echo $det->ed_id; ?>','<?php echo $itm->et_desc; ?>','<?php echo $det->asset_control_no;?>','<?php echo $det->acquisition_date; ?>','<?php echo $det->type; ?>','<?php echo $det->serial_no; ?>','<?php echo $det->brand; ?>','<?php echo $det->model; ?>','<?php echo $qty; ?>','<?php echo $unit; ?>','<?php echo $det->unit_price; ?>','<?php echo $total; ?>',)"><?php echo $itm->et_desc." - ".$det->brand." - ".$det->type." - ".$det->serial_no." - ".$det->model; ?></li>
            <?php 
                }
            }
            echo "<ul>";
        }
    }

    public function rep_itm(){
        $item=$this->input->post('item');
        $rows=$this->super_model->count_custom_where("et_head","cancelled='0' AND et_desc LIKE '%$item%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("et_head", "cancelled='0' AND et_desc LIKE '%$item%'") AS $itm){
            ?>
                   <li onClick="selectItems('<?php echo $itm->et_id; ?>','<?php echo $itm->et_desc; ?>')"><?php echo $itm->et_desc; ?></li>
            <?php 
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
        $type=$this->input->post('type');
        $model=$this->input->post('model');
        $brand=$this->input->post('brand');
        $qty=$this->input->post('qty');
        $price=$this->input->post('price');
        $total=$this->input->post('price')*$this->input->post('qty');
        $data['list'] = array(
            'et_id'=>$this->input->post('itemid'),
            'ed_id'=>$this->input->post('edid'),
            'set_id'=>$this->input->post('setid'),
            'brand'=>$brand,
            'type'=>$type,
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
                        'accountability_id'=>$assign,
                        'department'=>$this->input->post('department'),
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
        $this->load->view('template/print_head');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        foreach($this->super_model->select_row_where('return_head','return_id',$id) AS $ret){
            $data['test'] = $this->super_model->select_column_where("et_head", "accountability_id", "accountability_id", $ret->accountability_id);
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
                $type = $this->super_model->select_column_where("et_details", "type", "ed_id", $det->ed_id);
                $model = $this->super_model->select_column_where("et_details", "model", "ed_id", $det->ed_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $det->ed_id);
                $set_id = $this->super_model->select_column_where("et_details", "set_id", "ed_id", $det->ed_id);
                $currency_id = $this->super_model->select_column_where("et_details", "currency_id", "ed_id", $det->ed_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $currency_id);
                $qty = '1';
                $total = $qty * $price;
                $data['lost'] = '0';
                foreach($this->super_model->select_row_where('et_head','et_id',$det->et_id) AS $u){
                    $unit = $this->super_model->select_column_where('unit', 'unit_name', 'unit_id', $u->unit_id);
                    $data['user_id'] =$_SESSION['fullname'];
                    $data['department'] =$u->department;
                }

                $data['details'][] = array(
                    'return_id'=>$det->return_id,
                    'set_id'=>$set_id,
                    'qty'=>$qty,
                    'item'=>$item,
                    'brand'=>$brand,
                    'type'=>$type,
                    'serial'=>$serial,
                    'model'=>$model,
                    'price'=>$price,
                    'total'=>$total,
                    'lost'=>0,
                    'currency'=>$currency,
                    'unit'=>$unit
                );
            }
            $data['return'][] = array(
                'return_id'=>$ret->return_id,
            ); 

            foreach($this->super_model->select_custom_where("lost_items", "employee_id = '$ret->accountability_id' AND replacement = '0'") AS $l){
                $etid = $this->super_model->select_column_where("et_details","et_id","ed_id",$l->ed_id);
                $item_lost = $this->super_model->select_column_where("et_head", "et_desc", "et_id", $etid);
                $price = $this->super_model->select_column_where("et_details", "unit_price", "ed_id", $l->ed_id);
                $brand = $this->super_model->select_column_where("et_details", "brand", "ed_id", $l->ed_id);
                $type = $this->super_model->select_column_where("et_details", "type", "ed_id", $l->ed_id);
                $model = $this->super_model->select_column_where("et_details", "model", "ed_id", $l->ed_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $l->ed_id);
                $set_id = $this->super_model->select_column_where("et_details", "set_id", "ed_id", $l->ed_id);
                $currency_id = $this->super_model->select_column_where("et_details", "currency_id", "ed_id", $l->ed_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $currency_id);
                $qty = '1';
                $total = $qty * $price;
                foreach($this->super_model->select_row_where('et_head','et_id',$etid) AS $u){
                    $unit = $this->super_model->select_column_where('unit', 'unit_name', 'unit_id', $u->unit_id);
                    $data['user_id'] =$_SESSION['fullname'];
                    $data['department'] =$u->department;
                }
                $lost = $this->super_model->select_column_custom_where("et_details", "lost", "ed_id = $l->ed_id");
                $data['lost'] = $this->super_model->select_column_custom_where("et_details", "lost", "ed_id = $l->ed_id");
                $data['details'][] = array(
                    'return_id'=>$det->return_id,
                    'set_id'=>$set_id,
                    'qty'=>$qty,
                    'item'=>$item_lost,
                    'brand'=>$brand,
                    'type'=>$type,
                    'serial'=>$serial,
                    'model'=>$model,
                    'price'=>$price,
                    'total'=>$total,
                    'lost'=>$lost,
                    'currency'=>$currency,
                    'unit'=>$unit
                );
            }
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

    public function seaaf_report(){  
        $this->load->view('template/header');
        $this->load->view('template/print_head');
        $data['id']=$this->uri->segment(3);
        $id=$this->uri->segment(3);
        $data['employee'] =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $id);
        $data['position'] =$this->super_model->select_column_where("employees", "position", "employee_id", $id);
        $data['aaf_no'] =$this->super_model->select_column_where("employees", "aaf_no", "employee_id", $id);
        $row=$this->super_model->count_custom_where("et_head","accountability_id='$id' AND cancelled='0'");
        if($row!=0){
            foreach($this->super_model->select_row_where('employee_inclusion','parent_id',$id) AS $em){
                $data['child'][] = array( 
                    'emp'=> $this->super_model->select_column_where("employees", "employee_name", "employee_id", $em->child_id), 
                );
            }
            foreach($this->super_model->select_custom_where('et_head',"accountability_id='$id' AND cancelled = '0' ORDER BY et_desc ASC") AS $aaf){
                $data['type'] = $this->super_model->select_column_where("employees", "type", "employee_id", $aaf->accountability_id); 
                $data['date_issued'] =$this->super_model->select_column_where("et_details", "date_issued", "et_id", $aaf->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $aaf->unit_id);
                $data['user_id'] =$_SESSION['fullname'];
                $accountability =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $aaf->accountability_id);
                $data['department'] =$aaf->department;
                $qty = 1;
                foreach($this->super_model->select_row_where('et_details', 'et_id', $aaf->et_id) AS $det){
                    $et_set_id = $this->super_model->select_column_where("et_set","set_id",'set_id',$det->set_id);
                    $count_set = $this->super_model->count_custom("SELECT et_head.et_id FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id = '$id' AND set_id ='$et_set_id'");
                    $data['count_set']=$count_set;
                    $total=$qty*$det->unit_price;
                    $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $det->currency_id);
                    $set_price = $this->super_model->select_column_where("et_set","set_price",'set_id',$det->set_id);
                    $set_total=$qty*$set_price;
                    $data['details'][] = array(
                        'set_id'=>$det->set_id,
                        'et_set_id'=>$et_set_id,
                        'acquisition_date'=>$det->acquisition_date,
                        'asset_control_no'=>$det->asset_control_no,
                        'et_desc'=>$aaf->et_desc,
                        'unit'=>$unit,
                        'qty'=>$qty,
                        'date_issued'=>$det->date_issued,
                        'unit_price'=>$det->unit_price,
                        'brand'=>$det->brand,
                        'type'=>$det->type,
                        'model'=>$det->model,
                        'serial'=>$det->serial_no,
                        'currency'=>$currency,
                        'set_price'=>$set_price,
                        'set_total'=>$set_total,
                        'total'=>$total,
                        'count_set'=>$count_set,
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
        $this->load->view('template/print_head');
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
                $type = $this->super_model->select_column_where("et_details", "type", "ed_id", $det->ed_id);
                $model = $this->super_model->select_column_where("et_details", "model", "ed_id", $det->ed_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $det->ed_id);
                $qty = '1';
                $total = $qty * $price;
                foreach($this->super_model->select_row_where('et_head','et_id',$det->et_id) AS $u){
                    $unit = $this->super_model->select_column_where('unit', 'unit_name', 'unit_id', $u->unit_id);
                    $data['user_id'] =$_SESSION['fullname'];
                    $data['department'] =$u->department;
                }
                $data['details'][] = array(
                    'return_id'=>$det->return_id,
                    'qty'=>$qty,
                    'date_issued'=>$date_issued,
                    'asset_control_no'=>$asset_control_no,
                    'item'=>$item,
                    'brand'=>$brand,
                    'type'=>$type,
                    'serial'=>$serial,
                    'model'=>$model,
                    'price'=>$price,
                    'total'=>$total,
                    'lost'=>0,
                    'unit'=>$unit
                );
            }
            $data['return'][] = array(
                'return_id'=>$ret->return_id,
            ); 

            foreach($this->super_model->select_custom_where("lost_items", "employee_id = '$ret->accountability_id' AND replacement = '0'") AS $l){
                $date_issued = $this->super_model->select_column_where("return_details", "date_issued", "ed_id", $l->ed_id);
                $asset_control_no = $this->super_model->select_column_where("et_details", "asset_control_no", "ed_id", $l->ed_id);
                $etid = $this->super_model->select_column_where("et_details","et_id","ed_id",$l->ed_id);
                $item_lost = $this->super_model->select_column_where("et_head", "et_desc", "et_id", $etid);
                $price = $this->super_model->select_column_where("et_details", "unit_price", "ed_id", $l->ed_id);
                $brand = $this->super_model->select_column_where("et_details", "brand", "ed_id", $l->ed_id);
                $type = $this->super_model->select_column_where("et_details", "type", "ed_id", $l->ed_id);
                $model = $this->super_model->select_column_where("et_details", "model", "ed_id", $l->ed_id);
                $serial = $this->super_model->select_column_where("et_details", "serial_no", "ed_id", $l->ed_id);
                $set_id = $this->super_model->select_column_where("et_details", "set_id", "ed_id", $l->ed_id);
                $currency_id = $this->super_model->select_column_where("et_details", "currency_id", "ed_id", $l->ed_id);
                $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $currency_id);
                $qty = '1';
                $total = $qty * $price;
                foreach($this->super_model->select_row_where('et_head','et_id',$etid) AS $u){
                    $unit = $this->super_model->select_column_where('unit', 'unit_name', 'unit_id', $u->unit_id);
                    $data['user_id'] =$_SESSION['fullname'];
                    $data['department'] =$u->department;
                }
                $lost = $this->super_model->select_column_custom_where("et_details", "lost", "ed_id = $l->ed_id");
                $data['lost'] = $this->super_model->select_column_custom_where("et_details", "lost", "ed_id = $l->ed_id");
                $data['details'][] = array(
                    'return_id'=>$det->return_id,
                    'qty'=>$qty,
                    'date_issued'=>$date_issued,
                    'asset_control_no'=>$asset_control_no,
                    'item'=>$item_lost,
                    'brand'=>$brand,
                    'type'=>$type,
                    'serial'=>$serial,
                    'model'=>$model,
                    'price'=>$price,
                    'total'=>$total,
                    'lost'=>$lost,
                    'unit'=>$unit
                );
            }  
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
        foreach ($et as $k=>$subArray) {
            foreach ($subArray as $id=>$value) {
                $sumArray[$id]+=$value;
            }
        }
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
        $row=$this->super_model->count_custom_where("et_head","accountability_id='$id' AND cancelled='0'");
        if($row!=0){
            foreach($this->super_model->select_custom_where("et_head", "accountability_id='$id' AND cancelled='0'") AS $mul){
                $data['multi'][] = array(
                    'id'=>$mul->et_id,
                    'item'=>$mul->et_desc
                );
                foreach($this->super_model->select_custom_where("et_details", "et_id = '$mul->et_id' AND lost ='0'") AS $det){
                    $currency = $this->super_model->select_column_where("currency", "currency_name", "currency_id", $det->currency_id);
                    $data['details'][] = array(
                        'set_id'=>$det->set_id,
                        'edid'=>$det->ed_id,
                        'id'=>$det->et_id,
                        'acn'=>$det->asset_control_no,
                        'serial'=>$det->serial_no,
                        'price'=>$det->unit_price,
                        'lost'=>$det->lost,
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
        $edid = $this->input->post('edid');
        $checked =count($edid);
        $date = $this->input->post('date');
        $remarks = $this->input->post('remarks');
        $ars_no = $this->input->post('ars_no');
        $received_by = $this->input->post('rec_id');
        foreach($this->super_model->select_row_where("employees","employee_id", $accountability_id) AS $l){
            /*$location = $this->super_model->select_column_where("location","location_name",'location_id',$l->location_id);
            if($location == 'Bacolod'){
                $location = 'BCD';
            }else {
                $location = 'BS';
            }*/
            $locations = $this->super_model->select_column_where("location","location_id",'location_id',$l->location_id);
            $location_prefix = $this->super_model->select_column_where("location","location_prefix",'location_id',$l->location_id);
            if($locations == $l->location_id){
                $location = $location_prefix;
            }else {
                $location = 'NA';
            }
        }
        $atf_format = date("Y");
        $atfprefix= $this->super_model->select_column_custom_where("return_head", "atf_no", "return_date LIKE '$atf_format%'");

        $atfpref=explode("-", $atfprefix);
        $atf_one=$atfpref[0];
        $atf_two=$atfpref[1];
        $atf_three=$atfpref[2];
        $atf_four = (!empty($atfpref[3])) ? $atfpref[3] : '';
        if(!empty($atf_one) || !empty($atf_two) || !empty($atf_three) || !empty($atf_four)){
            $atf_pref1=$atfpref[0];
            $atf_pref2=$atfpref[1];
            $atf_pref3=$atfpref[2];
            $atf_pref=$atf_pref1."-".$atf_pref2."-".$atf_pref3;
        }else{
            $atf_pref1=$atfpref[0];
            $atf_pref2=$atfpref[1];
            $atf_pref=$atf_pref1."-".$atf_pref2;
        }
        $rows=$this->super_model->count_custom_where("atf_series","atf_prefix = '$atf_pref'");
        if($rows==0){
            $atf_no= $location."-".$atf_format."-1001";
        } else {
            $series = $this->super_model->get_max_where("atf_series", "series","atf_prefix = '$atf_pref'");
            $next=$series+1;
            $atf_no = $location."-".$atf_format."-".$next;
        }

        $atfdetails=explode("-", $atf_no);
        $atfone=$atfdetails[0];
        $atftwo=$atfdetails[1];
        $atfthree=$atfdetails[2];
        $atffour = (!empty($atfdetails[3])) ? $atfdetails[3] : '';
        if(!empty($atfone) || !empty($atftwo) || !empty($atfthree) || !empty($atffour)){
            $atf_prefix1=$atfdetails[0];
            $atf_prefix2=$atfdetails[1];
            $atf_prefix3=$atfdetails[2];
            $atf_prefix=$atf_prefix1."-".$atf_prefix2."-".$atf_prefix3;
            $series = $atfdetails[3];
        }else {
            $atf_prefix1=$atfdetails[0];
            $atf_prefix2=$atfdetails[1];
            $atf_prefix=$atf_prefix1."-".$atf_prefix2;
            $series = $atfdetails[2];
        }

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
            $ars_one=$assetdetails[0];
            $ars_two=$assetdetails[1];
            $ars_three=$assetdetails[2];
            $ars_four =$assetdetails[3];
            $ars_five = (!empty($assetdetails[4])) ? $assetdetails[4] : '';
            if(!empty($ars_one) || !empty($ars_two) || !empty($ars_three) || !empty($ars_four) || !empty($ars_five)){
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix3=$assetdetails[2];
                $subcat_prefix4=$assetdetails[3];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3."-".$subcat_prefix4;
                $series = $assetdetails[4];
            }else {
                $subcat_prefix1=$assetdetails[0];
                $subcat_prefix2=$assetdetails[1];
                $subcat_prefix3=$assetdetails[2];
                $subcat_prefix=$subcat_prefix1."-".$subcat_prefix2."-".$subcat_prefix3;
                $series = $assetdetails[3]; 
            }
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
        foreach ($et as $k=>$subArray) {
            foreach ($subArray as $id=>$value) {
                @$sumArray[$id]+=$value;
            }
        }
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
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F2', "Type");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G2', "Model");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H2', "Serial No.");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I2', "QTY");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J2', "UOM");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K2', "Date Issued ");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L2', "Accountability");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M2', "Status");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N2', "Office / Department");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O2', "Placement");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P2', "Company");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('Q2', "Rack");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('R2', "Physical Condition");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('S2', "Set Name");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('T2', "Unit Cost");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('U2', "Total Cost");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('V2', "Remarks");
        $styleArray = array(
          'borders' => array(
            'allborders' => array(
              'style' => PHPExcel_Style_Border::BORDER_THIN
            )
          )
        );
        foreach(range('A','V') as $columnID){
            $objPHPExcel->getActiveSheet()->getColumnDimension($columnID)->setAutoSize(true);
        }
        $num=3;
        $t=4;

        $from=$this->uri->segment(3);
        $to=$this->uri->segment(4);
        $category=$this->uri->segment(5);
        $subcat=$this->uri->segment(6);
        $department=str_replace("%20"," ",$this->uri->segment(7));
        if(stripos($this->uri->segment(8), "%20%20") !== false) {
            $item=str_replace("%20%20",", ",$this->uri->segment(8));
        } else if(stripos($this->uri->segment(8), "%20") !== false) {
            $item=str_replace("%20"," ",$this->uri->segment(8));
        }else{
            $item=$this->uri->segment(8);
        }
        $brand=str_replace("%20"," ",$this->uri->segment(9));
        $model=str_replace("%20"," ",$this->uri->segment(10));
        $type=str_replace("%20"," ",$this->uri->segment(11));
        $serial=str_replace("%20"," ",$this->uri->segment(12));
        $damage=$this->uri->segment(13);
        $condition=$this->uri->segment(14);
        $placement=$this->uri->segment(15);
        $company=$this->uri->segment(16);
        $rack=$this->uri->segment(17);

        $sql="";
        $filter = " ";

        if($from!='null' && $to!='null'){
           $sql.= " et_details.acquisition_date BETWEEN '$from' AND '$to' AND";
           $filter .= $from.''.$to;
        }

        if($category!='null'){
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= $cat;
        }

        if($subcat!='null'){
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= $subcat;
        }

        if($department!='null'){
            $sql.=" et_head.department LIKE '%$department%' AND";
            $filter .=$department;
        }

        if($item!='null'){
            $sql.=" et_head.et_desc LIKE '%$item%' AND";

            $filter .= $item;
        }

        if($brand!='null'){
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= $brand;
        }

        if($model!='null'){
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= $model;
        }

        if($type!='null'){
            $sql.=" et_details.type LIKE '%$type%' AND";
            $filter .= $type;
        }

        if($serial!='null'){
            $sql.=" et_details.serial_no LIKE '%$serial%' AND";
            $filter .= $serial;
        }

        if($damage!='null'){
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= $damage;
        }

        if($condition!='null'){
            $sql.=" et_details.physical_condition LIKE '%$condition%' AND";
            $filter .= $condition;
        }

        if($placement!='null'){
            $sql.=" et_details.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= $place;
        }

        if($company!='null'){
            $sql.=" et_details.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .=$rr;
        }

        if($rack!='null'){
            $sql.=" et_details.rack_id = '$rack' AND";
            $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack);
            $filter .=$rack;
        }

        $array = array($from,$to);
        $query=substr($sql, 0, -3);
        $filter=substr($filter, 0, -2);
        if($filter!=''){
            foreach ($this->super_model->select_join_where("et_head", "et_details", "cancelled='0' AND save_temp=0 AND $query", "et_id") AS $et){
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
                $condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
                $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
                $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
                $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
                $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
                $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
                $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no='';
                foreach($this->super_model->select_row_where("et_details", "et_id", $et->et_id) AS $ser){
                    $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
                }
                //$serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $type =$this->super_model->select_column_where("et_details", "type", "et_id", $et->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $et->et_id);
                $set_name = $this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                if($et->accountability_id!=0 && $borrowed==0 && $lost==0){
                    $status = 'Assigned';
                }else if($et->accountability_id==0 && $change_location==1){
                    $status = "Moved to ".$location;
                }else if($et->accountability_id==0 && $damaged==0 && $change_location==0){
                    $status = 'Available';
                }else if($borrowed==1){
                    $status = 'Borrowed';
                }else if($damaged==1){
                    $status = 'Damaged';
                }else if($lost==1){
                    $status = 'Lost Item / '.$accountability;
                }
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$num, $category);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B'.$num, $asset_control_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C'.$num, $acquisition_date);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D'.$num, $et->et_desc);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E'.$num, $brand);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F'.$num, $type);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G'.$num, $model);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H'.$num, $serial_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I'.$num, $et->qty);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J'.$num, $unit);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K'.$num, $date_issued);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L'.$num, $employee);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M'.$num, $status);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N'.$num, $department);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O'.$num, $placement);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P'.$num, $company);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('Q'.$num, $rack);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('R'.$num, $condition);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('S'.$num, $set_name);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('T'.$num, $unit_price.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('U'.$num, $total.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('V'.$num, $remarks);
                $objPHPExcel->getActiveSheet()->getStyle('A'.$num.":V".$num)->applyFromArray($styleArray);
                $objPHPExcel->getActiveSheet()->getStyle('H'.$num)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $objPHPExcel->getActiveSheet()->getStyle('H'.$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getStyle('S'.$num.":T".$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getProtection()->setSheet(true);    
                $objPHPExcel->getActiveSheet()->protectCells('A'.$num.":V".$num,'admin');
                $num++;
            }
        }else {
            //foreach($this->super_model->select_custom_where('et_head', "cancelled ='0' AND accountability_id!='0' AND save_temp='0' ORDER BY et_desc ASC") AS $et){
            foreach ($this->super_model->select_join_where_order("et_head", "et_details", "accountability_id!='0' AND cancelled='0' AND save_temp='0'", "et_id", "set_id","DESC") AS $et){
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
                $condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
                $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
                $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
                $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
                $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
                $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
                $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no='';
                foreach($this->super_model->select_custom_where("et_details", "et_id='$et->et_id' ORDER BY set_id ASC") AS $ser){
                    $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
                }
                //$serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $type =$this->super_model->select_column_where("et_details", "type", "et_id", $et->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $et->et_id);
                $set_name = $this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                $et_set_id = $this->super_model->select_column_where("et_set", "set_id", "set_id", $set_id);
                if($et->accountability_id!=0 && $borrowed==0 && $lost==0){
                    $status = 'Assigned';
                }else if($et->accountability_id==0 && $change_location==1){
                    $status = "Moved to ".$location;
                }else if($et->accountability_id==0 && $damaged==0 && $change_location==0){
                    $status = 'Available';
                }else if($borrowed==1){
                    $status = 'Borrowed';
                }else if($damaged==1){
                    $status = 'Damaged';
                }else if($lost==1){
                    $status = 'Lost Item / '.$accountability;
                }
                /*$count_set = $this->super_model->count_custom("SELECT et_head.et_id FROM et_details INNER JOIN et_head ON et_head.et_id = et_details.et_id WHERE accountability_id != '0' AND set_id='$et_set_id'");
                if($set_id==$et_set_id){
                    $objPHPExcel->getActiveSheet()->mergeCells('S'.$num.":S".$t);
                    $objPHPExcel->getActiveSheet()->mergeCells('T'.$num.":T".$t);
                    $objPHPExcel->getActiveSheet()->mergeCells('U'.$num.":U".$t);
                    $t++;   
                }*/


                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$num, $category);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B'.$num, $ser->asset_control_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C'.$num, $ser->acquisition_date);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D'.$num, $et->et_desc);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E'.$num, $ser->brand);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F'.$num, $ser->type);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G'.$num, $ser->model);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H'.$num, $serial_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I'.$num, $et->qty);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J'.$num, $unit);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K'.$num, $ser->date_issued);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L'.$num, $employee);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M'.$num, $status);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N'.$num, $department);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O'.$num, $placement);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P'.$num, $company);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('Q'.$num, $rack);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('R'.$num, $condition);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('S'.$num, $set_name);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('T'.$num, $ser->unit_price.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('U'.$num, $total.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('V'.$num, $remarks);
                $objPHPExcel->getActiveSheet()->getStyle('A'.$num.":V".$num)->applyFromArray($styleArray);
                $objPHPExcel->getActiveSheet()->getStyle('H'.$num)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $objPHPExcel->getActiveSheet()->getStyle('H'.$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getStyle('T'.$num.":U".$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getProtection()->setSheet(true);    
                $objPHPExcel->getActiveSheet()->protectCells('A'.$num.":V".$num,'admin');
                $num++;
            }
        }
        $objPHPExcel->getActiveSheet()->getStyle('A2:V2')->applyFromArray($styleArray);
        $objPHPExcel->getActiveSheet()->getStyle('A2:V2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objPHPExcel->getActiveSheet()->getStyle('A2:V2')->getFont()->setBold(true)->setName('Arial')->setSize(9.5);
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

    public function export_equipment_draft(){
        require_once(APPPATH.'../assets/js/phpexcel/Classes/PHPExcel/IOFactory.php');
        $objPHPExcel = new PHPExcel();
        $exportfilename="Equipment Tools.xlsx";
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1', "Equipment and Tools Fields");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A2', "Category");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B2', "Asset Control No.");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C2', "Acquisition Date");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D2', "Item Description");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E2', "Brand");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F2', "Type");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G2', "Model");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H2', "Serial No.");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I2', "QTY");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J2', "UOM");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K2', "Date Issued ");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L2', "Accountability");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M2', "Status");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N2', "Office / Department");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O2', "Placement");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P2', "Company");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('Q2', "Rack");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('R2', "Physical Condition");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('S2', "Set Name");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('T2', "Unit Cost");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('U2', "Total Cost");
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('V2', "Remarks");
        $styleArray = array(
          'borders' => array(
            'allborders' => array(
              'style' => PHPExcel_Style_Border::BORDER_THIN
            )
          )
        );
        foreach(range('A','V') as $columnID){
            $objPHPExcel->getActiveSheet()->getColumnDimension($columnID)->setAutoSize(true);
        }
        $num=3;

        $from=$this->uri->segment(3);
        $to=$this->uri->segment(4);
        $category=$this->uri->segment(5);
        $subcat=$this->uri->segment(6);
        $department=str_replace("%20"," ",$this->uri->segment(7));
        if(stripos($this->uri->segment(8), "%20%20") !== false) {
            $item=str_replace("%20%20",", ",$this->uri->segment(8));
        } else if(stripos($this->uri->segment(8), "%20") !== false) {
            $item=str_replace("%20"," ",$this->uri->segment(8));
        }else{
            $item=$this->uri->segment(8);
        }
        $brand=str_replace("%20"," ",$this->uri->segment(9));
        $model=str_replace("%20"," ",$this->uri->segment(10));
        $type=str_replace("%20"," ",$this->uri->segment(11));
        $serial=str_replace("%20"," ",$this->uri->segment(12));
        $damage=$this->uri->segment(13);
        $condition=$this->uri->segment(14);
        $placement=$this->uri->segment(15);
        $company=$this->uri->segment(16);

        $sql="";
        $filter = " ";

        if($from!='null' && $to!='null'){
           $sql.= " et_details.acquisition_date BETWEEN '$from' AND '$to' AND";
           $filter .= $from.' '.$to;
        }

        if($category!='null'){
            $sql.=" et_head.category_id = '$category' AND";
            $cat = $this->super_model->select_column_where("category", "category_name", "category_id", $category);
            $filter .= $cat;
        }

        if($subcat!='null'){
            $sql.=" et_head.subcat_id = '$subcat' AND";
            $subcat = $this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $subcat);
            $filter .= $subcat;
        }

        if($department!='null'){
            $sql.=" et_head.department LIKE '%$department%' AND";
            $filter .= $department;
        }

        if($item!='null'){
            $sql.=" et_head.et_desc LIKE '%$item%' AND";

            $filter .= $item;
        }

        if($brand!='null'){
            $sql.=" et_details.brand LIKE '%$brand%' AND";
            $filter .= $brand;
        }

        if($model!='null'){
            $sql.=" et_details.model LIKE '%$model%' AND";
            $filter .= $model;
        }

        if($type!='null'){
            $sql.=" et_details.type LIKE '%$type%' AND";
            $filter .= $type;
        }

        if($serial!='null'){
            $sql.=" et_details.serial_no LIKE '%$serial%' AND";
            $filter .= $serial;
        }

        if($damage!='null'){
            $sql.=" et_details.damage = '$damage' AND";
            $filter .= $damage;
        }

        if($condition!='null'){
            $sql.=" et_details.physical_condition LIKE '%$condition%' AND";
            $filter .= $condition;
        }

        if($placement!='null'){
            $sql.=" et_details.placement_id = '$placement' AND";
            $place = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement);
            $filter .= $place;
        }

        if($company!='null'){
            $sql.=" et_details.company_id = '$company' AND";
            $rr = $this->super_model->select_column_where("company", "company_name", "company_id", $company);
            $filter .=$rr;
        }

        if($rack!='null'){
            $sql.=" et_details.rack_id = '$rack' AND";
            $rak = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack);
            $filter .=$rak;
        }
        $array = array($from,$to);
        $query=substr($sql, 0, -3);
        $filter=substr($filter, 0, -2);
        if($filter!=''){
            foreach ($this->super_model->select_join_where("et_head", "et_details", "save_temp=1 AND cancelled=0 AND $query", "et_id") AS $et){
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
                $condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
                $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
                $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
                $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
                $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
                $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
                $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no='';
                foreach($this->super_model->select_row_where("et_details", "et_id", $et->et_id) AS $ser){
                    $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
                }
                //$serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $type =$this->super_model->select_column_where("et_details", "type", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
                //$location = $this->super_model->select_column_where("location", "location_name", "location_id", $et->location_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $et->et_id);
                $set_name = $this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);
                if($et->accountability_id!=0 && $borrowed==0){
                    $status = 'Assigned';
                }else if($et->accountability_id==0 && $change_location==1){
                    $status = "Moved to ".$location;
                }else if($et->accountability_id==0 && $damaged==0 && $change_location==0){
                    $status = 'Available';
                }else if($borrowed==1){
                    $status = 'Borrowed';
                }else if($damaged==1){
                    $status = 'Damaged';
                }else if($lost==1){
                    $status = 'Lost Item / '.$accountability;
                }
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$num, $category);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B'.$num, $asset_control_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C'.$num, $acquisition_date);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D'.$num, $et->et_desc);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E'.$num, $brand);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F'.$num, $type);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G'.$num, $model);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H'.$num, $serial_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I'.$num, $et->qty);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J'.$num, $unit);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K'.$num, $date_issued);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L'.$num, $employee);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M'.$num, $status);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N'.$num, $department);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O'.$num, $placement);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P'.$num, $company);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('Q'.$num, $rack);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('R'.$num, $condition);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('S'.$num, $set_name);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('T'.$num, $unit_price.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('U'.$num, $total.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('V'.$num, $remarks);
                $objPHPExcel->getActiveSheet()->getStyle('A'.$num.":V".$num)->applyFromArray($styleArray);
                $objPHPExcel->getActiveSheet()->getStyle('H'.$num)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $objPHPExcel->getActiveSheet()->getStyle('H'.$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getStyle('R'.$num.":S".$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getProtection()->setSheet(true);    
                $objPHPExcel->getActiveSheet()->protectCells('A'.$num.":V".$num,'admin');
                $num++;
            }
        }else {
            foreach($this->super_model->select_custom_where('et_head', 'accountability_id!=0 AND save_temp=1 AND cancelled=0') AS $et){
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
                $condition =$this->super_model->select_column_where("et_details", "physical_condition", "et_id", $et->et_id);
                $company_id =$this->super_model->select_column_where("et_details", "company_id", "et_id", $et->et_id);
                $company = $this->super_model->select_column_where("company", "company_name", "company_id", $company_id);
                $rack_id =$this->super_model->select_column_where("et_details", "rack_id", "et_id", $et->et_id);
                $rack = $this->super_model->select_column_where("rack", "rack_name", "rack_id", $rack_id);
                $placement_id =$this->super_model->select_column_where("et_details", "placement_id", "et_id", $et->et_id);
                $placement = $this->super_model->select_column_where("placement", "placement_name", "placement_id", $placement_id);
                $brand =$this->super_model->select_column_where("et_details", "brand", "et_id", $et->et_id);
                $remarks =$this->super_model->select_column_where("et_details", "remarks", "et_id", $et->et_id);
                $total = $et->qty*$unit_price;
                $serial_no='';
                foreach($this->super_model->select_row_where("et_details", "et_id", $et->et_id) AS $ser){
                    $serial_no .= (!empty($ser->serial_no)) ? $ser->serial_no.", " : '';
                }
                //$serial_no =$this->super_model->select_column_where("et_details", "serial_no", "et_id", $et->et_id);
                $type =$this->super_model->select_column_where("et_details", "type", "et_id", $et->et_id);
                $model =$this->super_model->select_column_where("et_details", "model", "et_id", $et->et_id);
                $unit =$this->super_model->select_column_where("unit", "unit_name", "unit_id", $et->unit_id);
                $employee =$this->super_model->select_column_where("employees", "employee_name", "employee_id", $et->accountability_id);
                $borrowed = $this->super_model->select_column_where("et_details", "borrowed", "et_id", $et->et_id);
                $damaged = $this->super_model->select_column_where("et_details", "damage", "et_id", $et->et_id);
                $lost = $this->super_model->select_column_where("et_details", "lost", "et_id", $et->et_id);
                $change_location = $this->super_model->select_column_where("et_details", "change_location", "et_id", $et->et_id);
                $location_id = $this->super_model->select_column_where("et_details", "location_id", "et_id", $et->et_id);
                $location = $this->super_model->select_column_where("location", "location_name", "location_id", $location_id);
                $set_id =$this->super_model->select_column_where("et_details", "set_id", "et_id", $et->et_id);
                $set_name = $this->super_model->select_column_where("et_set", "set_name", "set_id", $set_id);

                if($et->accountability_id!=0 && $borrowed==0 && $lost==0){
                    $status = 'Assigned';
                }else if($et->accountability_id==0 && $change_location==1){
                    $status = "Moved to ".$location;
                }else if($et->accountability_id==0 && $damaged==0 && $change_location==0){
                    $status = 'Available';
                }else if($borrowed==1){
                    $status = 'Borrowed';
                }else if($damaged==1){
                    $status = 'Damaged';
                }else if($lost==1){
                    $status = 'Lost Item / '.$accountability;
                }
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$num, $category);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('B'.$num, $asset_control_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('C'.$num, $acquisition_date);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('D'.$num, $et->et_desc);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('E'.$num, $brand);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('F'.$num, $type);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('G'.$num, $model);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('H'.$num, $serial_no);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('I'.$num, $et->qty);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('J'.$num, $unit);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('K'.$num, $date_issued);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('L'.$num, $employee);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('M'.$num, $status);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('N'.$num, $department);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('O'.$num, $placement);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('P'.$num, $company);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('Q'.$num, $rack);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('R'.$num, $condition);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('S'.$num, $set_name);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('T'.$num, $unit_price.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('U'.$num, $total.' '.$currency);
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue('V'.$num, $remarks);
                $objPHPExcel->getActiveSheet()->getStyle('A'.$num.":V".$num)->applyFromArray($styleArray);
                $objPHPExcel->getActiveSheet()->getStyle('H'.$num)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $objPHPExcel->getActiveSheet()->getStyle('H'.$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getStyle('R'.$num.":S".$num)->getNumberFormat()->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED1);
                $objPHPExcel->getActiveSheet()->getProtection()->setSheet(true);    
                $objPHPExcel->getActiveSheet()->protectCells('A'.$num.":V".$num,'admin');
                $num++;
            }
        }
        $objPHPExcel->getActiveSheet()->getStyle('A2:V2')->applyFromArray($styleArray);
        $objPHPExcel->getActiveSheet()->getStyle('A2:V2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objPHPExcel->getActiveSheet()->getStyle('A2:V2')->getFont()->setBold(true)->setName('Arial')->setSize(9.5);
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

    public function damage_report_blank(){  
        $this->load->view('template/header'); 
        $this->load->view('template/print_head'); 
        $this->load->view('report/damage_report_blank');
        $this->load->view('template/scripts');
    }

    public function lost_list(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $row_avail = $this->row_avail();
        $data['available_set_qty']= $this->row_set_avail();
        $data['available_qty']= $this->row_avail();
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        if($row_avail!=0){
            foreach($this->super_model->select_custom_where("et_details", "lost='1'") AS $det){
                $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                //$empid =$this->super_model->select_column_where("et_head", "accountability_id", "et_id", $det->et_id);
                $lost_date =$this->super_model->select_column_where("lost_items", "lost_date", "ed_id", $det->ed_id);
                $accountable =$this->super_model->select_column_where("lost_items", "employee_id", "ed_id", $det->ed_id);
                $accountability = $this->super_model->select_column_where("employees","employee_name","employee_id",$accountable);
                $remarks =$this->super_model->select_column_where("lost_items", "remarks", "ed_id", $det->ed_id);
                $rep_id =$this->super_model->select_column_where("lost_items", "replacement", "ed_id", $det->ed_id);
                $et_id =$this->super_model->select_column_where("et_head", "et_id", "et_id", $det->et_id);
                $ed = $this->super_model->select_column_where("et_details", "et_id", "ed_id", $rep_id);
                $replacement =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $ed);
                $lost_id =$this->super_model->select_column_where("lost_items", "lost_id", "ed_id", $det->ed_id);
                $data['lost'][] = array(
                    'et_id'=>$det->et_id,
                    'ed_id'=>$det->ed_id,
                    'lost_id'=>$lost_id,
                    'empid'=>$accountable,
                    'item'=>$item,
                    'replacement'=>$replacement,
                    'lost_date'=>$lost_date,
                    'accountable'=>$accountability,
                    'remarks'=>$remarks
                );
            }
        }else {
            $data['lost'] = array();
        }
        $this->load->view('report/lost_list',$data);
        $this->load->view('template/scripts');
    }

    public function replace_item(){  
        $this->load->view('template/header'); 
        $this->load->view('template/print_head'); 
        $empid = $this->uri->segment(3);
        $lost_id = $this->uri->segment(4);
        $data['empid'] = $this->uri->segment(3);
        $data['lost_id'] = $this->uri->segment(4);
        $data['employee_name'] = $this->super_model->select_column_where("employees","employee_name","employee_id",$empid);
        $data['position'] = $this->super_model->select_column_where("employees","position","employee_id",$empid);
        $data['department'] = $this->super_model->select_column_where("employees","department","employee_id",$empid);
        $data['aaf_no'] = $this->super_model->select_column_where("employees","aaf_no","employee_id",$empid);
        $data['employee'] = $this->super_model->select_all_order_by("employees","employee_name","ASC"); 
        $data['user_id'] = $_SESSION['fullname'];
        $this->load->view('report/replace_item',$data);
        $this->load->view('template/scripts');
    }

    public function insert_replace(){
        $count = $this->input->post('counter');
        $assign = $this->input->post('assign_id');
        $date = $this->input->post('date_issued');
        $lost_id = $this->input->post('lost_id');
        $ed = $this->input->post('ed_id');
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
                        'accountability_id'=>$assign,
                        'department'=>$this->input->post('department'),
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

        $rep_data = array(
            'replacement'=>$ed,
            'employee_id'=>$assign,
        );
        $this->super_model->update_where("lost_items", $rep_data, "lost_id", $lost_id);
    }
}

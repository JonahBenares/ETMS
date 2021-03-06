<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Repair extends CI_Controller {

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

    public function repair_list(){  
    	$this->load->view('template/header');
    	$this->load->view('template/sidebar');
        $row_avail=$this->super_model->count_custom_where("et_head", "accountability_id=0");
        foreach($this->super_model->select_custom_where("et_head", "accountability_id=0") AS $check){
            $data['available_qty']=$this->super_model->count_custom_where("et_details", "damage='0' AND et_id = '$check->et_id'");           
        }
        $data['damage_qty']=$this->super_model->count_custom_where("et_details", "damage='1'");
        if($row_avail!=0){
            foreach($this->super_model->select_custom_where('et_head', 'accountability_id=0') AS $et){
                foreach($this->super_model->select_custom_where("et_details", "damage='1' AND et_id ='$et->et_id'") AS $det){
                    $item =$this->super_model->select_column_where("et_head", "et_desc", "et_id", $det->et_id);
                    $category =$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);
                    $subcat =$this->super_model->select_column_where("subcategory", "subcat_name", "subcat_id", $et->subcat_id);
                    $qty =$this->super_model->select_column_where("et_head", "qty", "et_id", $det->et_id);
                    $empid =$this->super_model->select_column_where("et_head", "accountability_id", "et_id", $det->et_id);
                    $repair =$this->super_model->select_column_where("repair_details", "assessment", "ed_id", $det->ed_id);
                    $damage_id =$this->super_model->select_column_where("damage_info", "damage_id", "et_id", $det->et_id);
                    $data['damage'][] = array(
                        'damage_id'=>$damage_id,
                        'ed_id'=>$det->ed_id,
                        'empid'=>$empid,
                        'damaged'=>$det->damage,
                        'beyond_repair'=>$det->beyond_repair,
                        'repair'=>$repair,
                        'asset_control'=>$det->asset_control_no,
                        'acquisition_date'=>$det->acquisition_date,
                        'serial_no'=>$det->serial_no,
                        'model'=>$det->model,
                        'et_desc'=>$item,
                        'category'=>$category,
                        'subcat'=>$subcat,
                        'qty'=>$qty,
                        'brand'=>$det->brand
                    );
                }
            }
        }else {
            $data['damage'] = array();
        }
        $this->load->view('repair/repair_list',$data);
        $this->load->view('template/scripts');
    }

    public function repair_form(){  
        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        foreach($this->super_model->select_all("repair_details") AS $det){
            if($det->saved == 0 AND $det->unsaved==1){
                $data['rep'][]=array(
                    'repair_id'=>$det->repair_id,
                    'ed_id'=>$det->ed_id,
                    /*'et_id'=>$det->et_id,*/
                );
                foreach($this->super_model->select_custom_where("et_details", "ed_id='$det->ed_id'") AS $dets){
                    foreach($this->super_model->select_custom_where("et_head", "et_id='$dets->et_id'") AS $et){
                        $category=$this->super_model->select_column_where("category", "category_name", "category_id", $et->category_id);  
                    } 
                    $item=$this->super_model->select_column_where("et_head", "et_desc", "et_id", $dets->et_id);             
                    $model =$this->super_model->select_column_where("et_details", "model", "ed_id", $dets->ed_id);
                    $model =$this->super_model->select_column_where("et_details", "model", "ed_id", $dets->ed_id);
                    $serial =$this->super_model->select_column_where("et_details", "serial_no", "ed_id", $dets->ed_id);
                    $brand =$this->super_model->select_column_where("et_details", "brand", "ed_id", $dets->ed_id);
                    $acn =$this->super_model->select_column_where("et_details", "asset_control_no", "ed_id", $dets->ed_id);
                    $data['details'][]=array(
                        'ed_id'=>$dets->ed_id,
                        'item'=>$item,
                        'category'=>$category,
                        'brand'=>$brand,
                        'model'=>$model,
                        'serial'=>$serial,
                        'acn'=>$acn,
                    );
                }
            }
        }
        $this->load->view('repair/repair_form',$data);
        $this->load->view('template/scripts');
    }

    /*public function rec_list(){
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
    }*/

    public function rec_list(){
        $receive=$this->input->post('receive');
        $id=$this->input->post('id');
        $rows=$this->super_model->count_custom_where("employees","employee_name LIKE '%$receive%'");
        if($rows!=0){
             echo "<ul id='name-item'>";
            foreach($this->super_model->select_custom_where("employees", "employee_name LIKE '%$receive%'") AS $acct){ 
                    ?>
                   <li onClick="selectRec('<?php echo $acct->employee_id; ?>','<?php echo $acct->employee_name; ?>','<?php echo $id; ?>')"><?php echo $acct->employee_name; ?></li>
                <?php 
            }
             echo "<ul>";
        }
    }

    public function insert_redirect(){  
        $count = $this->input->post('count');
        $edid = $this->input->post('edid');
        /*$etid = $this->input->post('etid');*/
        $checked =count($edid);
        for($x=0;$x<$checked;$x++){
            foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid[$x]) AS $rep){
                //if($rep->beyond_repair == 0){
                    $rep_data = array(
                        'ed_id'=>$edid[$x],
                        'unsaved'=>1,
                    );
                    $this->super_model->insert_into("repair_details", $rep_data);
                /*}else {
                    for($x=0;$x<$checked;$x++){
                        $rep_data = array(
                            'ed_id'=>$edid[$x],
                            'repair_date'=>'',
                            'repair_price'=>'',
                            'jo_no'=>'',
                            'supplier'=>'',
                            'assessment'=>'',
                            'received_by'=>'',
                            'remarks'=>'',
                            'create_date'=>'',
                            'user_id'=>'',
                            'saved'=>0,
                            'unsaved'=>1,
                        );
                        $this->super_model->update_where("repair_details", $rep_data, "ed_id", $edid[$x]);

                        $det_data = array(
                            'beyond_repair'=>0
                        );
                        $this->super_model->update_where("et_details", $det_data, "ed_id", $edid[$x]);
                    }
                }*/
            }
        }
        
        echo "<script>window.location = '".base_url()."index.php/repair/repair_form';</script>";
    }

    public function insert_repair(){
        $count = $this->input->post('count');
        for($x=0;$x<$count;$x++){
            $edid = $this->input->post('ed_id'.$x);
            $date = $this->input->post('date'.$x);
            $price = $this->input->post('price'.$x);
            $jo = $this->input->post('jo'.$x);
            $supplier = $this->input->post('supplier'.$x);
            $radio = $this->input->post('repair'.$x);
            $remarks = $this->input->post('remarks'.$x);
            $user_id = $this->input->post('user_id'.$x);
            $received_by = $this->input->post('rec_id'.$x);
            foreach($this->super_model->select_row_where('repair_details', 'ed_id', $edid) AS $rep){
                $rep_data = array(
                    'repair_date'=>$date,
                    'repair_price'=>$price,
                    'jo_no'=>$jo,
                    'supplier'=>$supplier,
                    'assessment'=>$radio,
                    'received_by'=>$received_by,
                    'remarks'=>$remarks,
                    'create_date'=>date("Y-m-d H:i:s"),
                    'user_id'=>$user_id,
                    'saved'=>1,
                    'unsaved'=>0,
                );
                $this->super_model->update_where("repair_details", $rep_data, "ed_id", $edid);
            }
            foreach($this->super_model->select_row_where('et_details', 'ed_id', $edid) AS $det){
                if($radio=='1'){
                    $det_data = array(
                        'damage'=>0
                    ); 
                }else {
                    $det_data = array(
                        'beyond_repair'=>1
                    ); 
                }
                $this->super_model->update_where("et_details", $det_data, "ed_id", $edid);
            }
        }
        if($radio=='1'){
            echo "<script>alert('Successfully Repaired'); window.location = '".base_url()."index.php/repair/repair_list';</script>";
        }else {
            echo "<script>alert('Equipment is Beyond Repair'); window.location = '".base_url()."index.php/repair/repair_list';</script>";
        }
    }

    public function unsaved(){
        $count = $this->input->post('count');
        for($x=0;$x<$count;$x++){
            $edid = $this->input->post('ed_id'.$x);
            $data = array(
                'unsaved'=>0
            ); 
            $this->super_model->update_where("repair_details", $data, "ed_id", $edid);
        }
        echo "<script>window.location = '".base_url()."index.php/repair/repair_list';</script>";
    }

}
?>

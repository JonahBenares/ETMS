<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>

 <!-- MAIN CONTENT-->
<div class="m-t-20">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-12">
                    <form action="<?php echo base_url(); ?>index.php/borrow/insert_damage_form" method="POST">
                    <?php 
                    /*if(empty($count)){ */
                    foreach($dam AS $h){  
                        $x = 1;
                        foreach($details AS $det){     
                            switch($det){
                                case($h['ed_id'] == $det['ed_id']):
                                /*for($x=1;$x<=$qty;$x++){*/
                                    /*if($det['damage']!=0){*/
                    ?>
                    <div class="card bor-radius20 shadow encode_css_danger">
                        <div class=" card-body card-block">
                            <div class="rows">
                                <div class="col-lg-12">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-1">
                                                <center><a href=""  class="btn btn-danger btn-block btn-lg m-t-10"><?php echo $x;?></a></center>
                                            </div>
                                            <div class="col-11">
                                                <label for="" class="control-label mb-1">Date of Incident:</label>
                                                <input id="date" name="date<?php echo $x;?>" type="date" onChange="chooseEtdr();" class="form-control bor-radius5 cc-exp" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label for="" class="control-label mb-1">Activity that the equipment was being used for:</label>
                                                <textarea name="activity<?php echo $x;?>" id="" class="form-control" cols="30" rows="2"></textarea>
                                            </div>     
                                            <div class="col-lg-6">
                                                <label for="" class="control-label mb-1">Location where incident occurred:</label>
                                                <textarea name="location<?php echo $x;?>" id="" class="form-control" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-6">
                                                <label for="" class="control-label mb-1">Item Name:</label>
                                                <input id="" name="item" type="text" class="form-control bor-radius5 cc-exp" value = "<?php echo $det['item'];?>" style = "pointer-events:none;">
                                            </div>
                                            <div class="col-6">
                                                <label for="x_card_code" class="control-label mb-1">Model:</label>
                                                <div class="input-group">
                                                    <input id="" name="model" class="form-control bor-radius5 cc-cvc" type="text" value = "<?php echo $det['model']; ?>" style = "pointer-events:none;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-6">
                                                <label for="" class="control-label mb-1">Brand:</label>
                                                <input id="" name="brand" type="text" class="form-control bor-radius5 cc-exp"  value = "<?php echo $det['brand']; ?>" style = "pointer-events:none;">
                                            </div>
                                            <div class="col-6">
                                                <label for="x_card_code" class="control-label mb-1">Serial Number:</label>
                                                <div class="input-group">
                                                    <input id="" name="serial" class="form-control bor-radius5 cc-cvc" type="text" value = "<?php echo $det['serial']; ?>" style = "pointer-events:none;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-12">
                                                <label for="" class="control-label mb-1">Person(s) who were using the equipment/Memorandum Receipt/Accountability:</label>
                                                <textarea name="receipt<?php echo $x;?>" class="form-control" id="" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-12">
                                                <label for="" class="control-label mb-1">Provide a brief description of the incident:</label>
                                                <textarea name="incident<?php echo $x;?>" class="form-control" id="" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-12">
                                                <label for="" class="control-label mb-1">Fully describe the damage done to the equipment:</label>
                                                <textarea name="damage_done<?php echo $x;?>" class="form-control" id="" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-12">
                                                <label for="" class="control-label mb-1">Provide a recommendation on how the equipment is going to be repaired or replaced:</label>
                                                <textarea name="recommendation<?php echo $x;?>" class="form-control" id="" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-6">
                                                <label for="" class="control-label mb-1">Checked By:</label>
                                                <input name="checked_by" type="text" class="form-control bor-radius5 cc-exp checked" data-trigger="<?php echo $x;?>"  autocomplete = "off"  id = "checked<?php echo $x; ?>" value = "<?php echo $checked_by;?>" style = "pointer-events: none;">
                                                <input type="hidden" name="checked_id<?php echo $x;?>" id="checked_id<?php echo $x;?>" value = "<?php echo $checked_name; ?>">
                                            </div>
                                            <div class="col-6">
                                                <label for="x_card_code" class="control-label mb-1">Submitted By:</label>
                                                <input name="checked_by" type="text" class="form-control bor-radius5 cc-exp submitted" data-trigger="<?php echo $x;?>"  autocomplete = "off"  id = "submitted<?php echo $x; ?>">
                                                <span id="suggestion-submitted<?php echo $x;?>"></span>
                                                <input type="hidden" name="submitted_id<?php echo $x;?>" id="submitted_id<?php echo $x;?>">
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-6">
                                                <label for="" class="control-label mb-1">Noted By:</label>
                                                <input name="noted_by" type="text" class="form-control bor-radius5 cc-exp noted" data-trigger="<?php echo $x;?>"  autocomplete = "off"  id = "noted<?php echo $x; ?>" value = "<?php echo $noted_by;?>" style = "pointer-events: none;">
                                                <input type="hidden" name="noted_id<?php echo $x;?>" id="noted_id<?php echo $x;?>" value = "<?php echo $noted_id; ?>">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <input type = "hidden" name = "et_id<?php echo $x;?>" value="<?php echo $h['et_id'];?>">
                    <input type = "hidden" name = "ed_id<?php echo $x;?>" value="<?php echo $det['ed_id'];?>">
                <?php   
                    break;
                    default: 
                    } $x++; } }
                    $counter = $x - 1;
                    /*}else { 
                        for($x=1;$x<=$count;$x++){*/
                ?>
                <!-- <div class="card bor-radius20 shadow encode_css_danger">
                        <div class=" card-body card-block">
                            <div class="rows">
                                <div class="col-lg-12">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-1">
                                                <center><a href=""  class="btn btn-danger btn-block btn-lg m-t-10"><?php echo $x;?></a></center>
                                            </div>
                                            <div class="col-11">
                                                <label for="" class="control-label mb-1">Date of Incident:</label>
                                                <input id="date" name="date<?php echo $x;?>" type="date" onChange="chooseEtdr();" class="form-control bor-radius5 cc-exp" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label for="" class="control-label mb-1">Activity that the equipment was being used for:</label>
                                                <textarea name="activity<?php echo $x;?>" id="" class="form-control" cols="30" rows="2"></textarea>
                                            </div>     
                                            <div class="col-lg-6">
                                                <label for="" class="control-label mb-1">Location where incident occurred:</label>
                                                <textarea name="location<?php echo $x;?>" id="" class="form-control" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-6">
                                                <label for="" class="control-label mb-1">Item Name:</label>
                                                <input id="" name="item" type="text" class="form-control bor-radius5 cc-exp" value = "<?php echo $h['item'];?>" style = "pointer-events:none;">
                                            </div>
                                            <div class="col-6">
                                                <label for="x_card_code" class="control-label mb-1">Model:</label>
                                                <div class="input-group">
                                                    <input id="" name="model" class="form-control bor-radius5 cc-cvc" type="text" value = "<?php echo $det['model']; ?>" style = "pointer-events:none;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-6">
                                                <label for="" class="control-label mb-1">Brand:</label>
                                                <input id="" name="brand" type="text" class="form-control bor-radius5 cc-exp"  value = "<?php echo $det['brand']; ?>" style = "pointer-events:none;">
                                            </div>
                                            <div class="col-6">
                                                <label for="x_card_code" class="control-label mb-1">Serial Number:</label>
                                                <div class="input-group">
                                                    <input id="" name="serial" class="form-control bor-radius5 cc-cvc" type="text" value = "<?php echo $det['serial']; ?>" style = "pointer-events:none;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-12">
                                                <label for="" class="control-label mb-1">Person(s) who were using the equipment/Memorandum Receipt/Accountability:</label>
                                                <textarea name="receipt<?php echo $x;?>" class="form-control" id="" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-12">
                                                <label for="" class="control-label mb-1">Provide a brief description of the incident:</label>
                                                <textarea name="incident<?php echo $x;?>" class="form-control" id="" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-12">
                                                <label for="" class="control-label mb-1">Fully describe the damage done to the equipment:</label>
                                                <textarea name="damage_done<?php echo $x;?>" class="form-control" id="" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-12">
                                                <label for="" class="control-label mb-1">Provide a recommendation on how the equipment is going to be repaired or replaced:</label>
                                                <textarea name="recommendation<?php echo $x;?>" class="form-control" id="" cols="30" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-6">
                                                <label for="" class="control-label mb-1">Checked By:</label>
                                                <input name="checked_by" type="text" class="form-control bor-radius5 cc-exp checked" data-trigger="<?php echo $x;?>"  autocomplete = "off"  id = "checked<?php echo $x; ?>" value = "<?php echo $checked_by;?>" style = "pointer-events: none;">
                                                <input type="hidden" name="checked_id<?php echo $x;?>" id="checked_id<?php echo $x;?>" value = "<?php echo $checked_name; ?>">
                                            </div>
                                            <div class="col-6">
                                                <label for="x_card_code" class="control-label mb-1">Submitted By:</label>
                                                <input name="checked_by" type="text" class="form-control bor-radius5 cc-exp submitted" data-trigger="<?php echo $x;?>"  autocomplete = "off"  id = "submitted<?php echo $x; ?>">
                                                <span id="suggestion-submitted<?php echo $x;?>"></span>
                                                <input type="hidden" name="submitted_id<?php echo $x;?>" id="submitted_id<?php echo $x;?>">
                                            </div>
                                        </div>
                                        <div class="row">                                                 
                                            <div class="col-6">
                                                <label for="" class="control-label mb-1">Noted By:</label>
                                                <input name="noted_by" type="text" class="form-control bor-radius5 cc-exp noted" data-trigger="<?php echo $x;?>"  autocomplete = "off"  id = "noted<?php echo $x; ?>" value = "<?php echo $noted_by;?>" style = "pointer-events: none;">
                                                <input type="hidden" name="noted_id<?php echo $x;?>" id="noted_id<?php echo $x;?>" value = "<?php echo $noted_id; ?>">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <input type = "hidden" name = "ed_id<?php echo $x;?>" value="<?php echo $det['ed_id'];?>"> -->
                    <?php //} } ?>
                    <div class="card-footer">
                        <center> 
                            <input type = "submit" class="btn btn-success btn-block" value="Save">  
                            <!-- <input type = "text" name = "et_id" value="<?php echo $et_id;?>"> -->
                            <input type="hidden" id="id" name="id" class="form-control" value = "<?php echo $id;?>">    
                            <input type="hidden" id="count" name="count" class="form-control" value = "<?php echo $counter;?>">
                            <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                            <input type="hidden" id="user_id" name="user_id" value = "<?php echo $_SESSION['user_id'];?>">                   
                            <!-- <a href="<?php echo base_url(); ?>index.php/report/tag_damage_print" class="btn btn-success btn-block"  >Save</a> -->                      
                        </center>
                    </div>
                </div>
            </form>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <p>Copyright © <script>document.write(new Date().getFullYear())</script> Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/masterfile.js"></script>
 <!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-6 offset-lg-3">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a onclick="history.go(-1);" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <strong>UPDATE</strong> Employee
                        </div>
                        <form action="<?php echo base_url(); ?>index.php/masterfile/update_employee" method="POST" novalidate="novalidate">
                            <div class="card-body card-block">
                                <?php foreach($employee AS $emp){ ?>  
                                <label for="" class="control-label mb-1">Employee:</label>
                                <input id="" name="employee" type="text" value = "<?php echo $emp->employee_name;?>"  class="form-control bor-radius5" placeholder="">
                                <label for="" class="control-label mb-1">Position:</label>
                                <input id="" name="position" type="text" value = "<?php echo $emp->position;?>"  class="form-control bor-radius5" placeholder="">
                                <label for="" class="control-label mb-1">Department:</label>
                                <input id="" name="department" type="text" value = "<?php echo $emp->department;?>"  class="form-control bor-radius5" placeholder="">
                                <label for="" class="control-label mb-1">Location:</label>
                                <select name="location" id='location' class="form-control" onChange="chooseLoc();">
                                    <option value = ""></option>
                                    <?php foreach($location AS $loc){ ?>
                                    <option value = "<?php echo $loc->location_id;?>" <?php echo (($emp->location_id == $loc->location_id) ? ' selected' : '');?>><?php echo $loc->location_name;?></option>
                                    <?php } ?>
                                </select>
                                <label for="" class="control-label mb-1">AAF No.:</label>
                                <?php if(empty($emp->aaf_no)){ ?>
                                    <select id="aaf" name="aaf_no" class="form-control bor-radius5" readonly style = "pointer-events:none;-webkit-appearance: none;" ></select>
                                <?php }else { ?>
                                    <select id="aaf" name="aaf_no" class="form-control bor-radius5" readonly style = "pointer-events:none;-webkit-appearance: none;" ><option value = "<?php echo $emp->aaf_no; ?>"><?php echo $emp->aaf_no; ?></option></select>
                                <?php } ?>
                            </div>
                            <div class="card-footer">
                                <center>
                                    <input type = "submit" class="btn btn-info btn-sm bor-radius10 btn-block" placeholder="Update" value="update">
                                    <input type = "hidden" name = "employee_id" value="<?php echo $id; ?>">
                                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                </center>
                            </div>
                            <?php } ?>
                        </form>
                    </div>
                </div>
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
<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/masterfile.js"></script>
 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <a><h4 class="m-l-5 m-b-10">Employees</h4></a>
                            <a href="#" class="btn btn-primary bor-radius pull-right" data-toggle="modal" data-target="#mediumModal">
                                <span class="fa fa-plus" ></span>
                            </a>
                            <!-- --modal-- -->
                            <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="mediumModalLabel">Add New Employee</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form method = "POST" action="<?php echo base_url();?>index.php/masterfile/insert_employee">
                                                <div class="form-group">
                                                    <label for="" class="control-label mb-1">Employee:</label>
                                                    <input id="" name="employee" type="text" class="form-control bor-radius5" placeholder="">

                                                    <label for="" class="control-label mb-1">Position:</label>
                                                    <input id="" name="position" type="text" class="form-control bor-radius5" placeholder="">

                                                    <label for="" class="control-label mb-1">Department:</label>
                                                    <input id="" name="department" type="text" class="form-control bor-radius5" placeholder="">

                                                    <label for="" class="control-label mb-1">Location:</label>
                                                    <select name="location" class="form-control bor-radius5" id="location" onChange="chooseLoc();">
                                                        <option>-- Select Location --</option>
                                                        <?php 
                                                            foreach ($location AS $loc) {
                                                        ?>
                                                        <option value="<?php echo $loc->location_id; ?>"><?php echo $loc->location_name;?></option>
                                                        <?php } ?>
                                                    </select>

                                                    <label for="" class="control-label mb-1">Employee No.:</label>
                                                    <!-- <input id="aaf" name="aaf_no" type="text" class="form-control bor-radius5" placeholder=""> -->
                                                    <select id="aaf" name="aaf_no" class="form-control bor-radius5" readonly style = "pointer-events:none;-webkit-appearance: none;" ></select>
                                                </div>
                                                <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                <button type="submit" class="btn btn-primary">Add</button>
                                                <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                            </div>
                                            </form>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <!-- --modal-- -->                            
                        </div>
                        <div class=" table--no-card m-t-10 m-b-10" id="table_peret">                            
                            <table class="table table-borderless table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th width="1%" class="text-center"><span class="fa fa-bars"></span></th>
                                        <th>Employee No.</th>
                                        <th>Employee</th>
                                        <th>Department</th>
                                        <th>Postition</th>
                                        <th>Location</th>
                                    </tr>
                                </thead>
                                <?php 
                                    foreach($employee AS $emp){ 
                                        if($emp['type'] == '1' || $emp['type'] == '0'){
                                ?>
                                    <tr>
                                        <td>                                            
                                            <div class="table-data-feature">
                                                <a href="<?php echo base_url(); ?>index.php/masterfile/employee_update/<?php echo $emp['id']?>" class="btn btn-info item btn-sm" data-toggle="tooltip" data-placement="top" title="Update">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <a href="<?php echo base_url(); ?>index.php/masterfile/delete_employee/<?php echo $emp['id'];?>" onclick="confirmationDelete(this);return false;" class="btn btn-danger item btn-sm" data-toggle="tooltip" data-placement="top" title="Delete" title="Delete" alt='Delete'>
                                                    <i class="fa fa-trash"></i>
                                                </a>
                                        </td>
                                        <td><?php echo $emp['aaf_no'];?></td>
                                        <td>
                                            <p class="" ><?php echo $emp['name'];?></p>
                                        </td>
                                        <td><?php echo $emp['department'];?></td>
                                        <td><?php echo $emp['position'];?></td>
                                        <td><?php echo $emp['location'];?></td>
                                    </tr>
                                    <?php } } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
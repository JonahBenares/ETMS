<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                                <a href="<?php echo base_url(); ?>index.php/report/report_main" class="btn btn-primary">Equipment/Tools</a>
                                <a href="<?php echo base_url(); ?>index.php/report/report_main_hist" class="btn btn-primary">E/T History</a>
                                <a href="<?php echo base_url(); ?>index.php/report/report_main_emp" class="btn btn-primary" >E/T per Employee</a>
                                <a href="<?php echo base_url(); ?>index.php/report/report_main_avail" class="btn btn-primary" >Available E/T <span class="badge badge-light badge-md bor-radius100" ><?php echo number_format($available_qty,0); ?></span></a>
                                <a href="<?php echo base_url(); ?>index.php/report/inv_rep" class="btn text-white btn-warning" >Inv Report</a>
                                <a href="<?php echo base_url(); ?>index.php/repair/repair_list" class="btn btn-danger pull-right" >Damaged E/T <span class="badge badge-light badge-md bor-radius100" ><?php echo number_format($damage_qty,0); ?></span></a>
                        </div>

                        <div class="table--no-card m-t-10 m-b-10" >
                            <h2 class="m-l-30 m-b-30 m-t-30">Equipment/Tools per <u>EMPLOYEE</u>
                                <div class="pull-right m-r-10">
                                    <button type="button" class="btn btn-sm btn-success " data-toggle="modal" data-target="#locModal">
                                        <span class="fa fa-filter"></span> Filter
                                    </button>
                                </div>
                            </h2>
                            <?php if(!empty($filt)) { ?>     
                            <div class='sufee-alert alert with-close alert-success fade show m-l-30  m-r-30'><span class='btn btn-success disabled'>Filter Applied</span><?php echo $filt ?>, <a href='<?php echo base_url(); ?>index.php/report/report_main_emp' class='remove_filter alert-link pull-right btn'><span class="fa fa-times"></span></a>.</div>                    
                            <?php } ?>
                            <div class="modal fade" id="locModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="largeModalLabel"></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>

                                        </div>
                                        <form method='POST' action="<?php echo base_url(); ?>index.php/report/search_employee/">
                                            <div class="modal-body">
                                                <table width="100%">
                                                    <tr>
                                                        <td><p>Location:</p>
                                                            <select name="location" class="form-control bor-radius5" id="location">
                                                                <option value=''>-- Select Location --</option>
                                                                <?php 
                                                                    foreach ($location AS $l) {
                                                                ?>
                                                                <option value="<?php echo $l->location_id; ?>"><?php echo $l->location_name;?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="submit" class="btn btn-success btn-sm btn-block bor-radius" value='Filter'>
                                            </div>
                                             <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <table class="table table-borderless table-striped table-earning" id="myTable_peremp">
                                <thead>
                                    <tr>
                                        <th>Employee Name</th>
                                        <th>Number of Accountable Items</th>
                                        <th class="text-center" width="2%"><span class="fa fa-bars"></span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    if(!empty($employees)){
                                    foreach($employees AS $emp){ 
                                ?>
                                    <tr>
                                        <td>
                                            <a href="<?php echo base_url(); ?>index.php/report/report_sub/<?php echo $emp['employee_id']?>" class="btn btn-link" data-toggle="tooltip" data-placement="right" title="View">
                                                    <?php echo $emp['employee'];?>
                                                </a>                                            
                                        </td>
                                        <td><?php echo $emp['count'];?></td>
                                        <td>
                                            <div class="table-data-feature">
                                                
                                                <a href="<?php echo base_url(); ?>index.php/report/multi_return/<?php echo $emp['employee_id']?>" class="btn btn-success item btn-sm" data-toggle="tooltip" data-placement="top" title="Multiple Return">
                                                    <i class="fa fa-dedent"></i>
                                                </a>
                                                <!-- <a href="<?php echo base_url(); ?>index.php/report/multi_transfer/<?php echo $emp['employee_id']?>" class="btn text-white btn-warning item btn-sm" data-toggle="tooltip" data-placement="top" title="Multiple Transfer">
                                                    <i class="fa fa-indent"></i>
                                                </a> -->
                                                <a href="<?php echo base_url(); ?>index.php/report/seaaf_report/<?php echo $emp['employee_id']?>" class="btn text-white btn-primary item btn-sm" data-toggle="tooltip" data-placement="top"   title="Summary of Employee's Asset Accountability Form"><span class="fa fa-print"></span></a>
                                                     
                                                
                                            </div>
                                        </td>
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
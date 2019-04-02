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

                        <div class=" table--no-card m-t-10 m-b-10">
                            <h2 class="m-l-30 m-b-30 m-t-30">Available Equipment/Tools
                                <div class="btn-group pull-right m-r-30 ">
                                    <!-- <a href="<?php echo base_url(); ?>index.php/repair/repair_list" class="btn btn-primary text-white ">
                                        <span class="fa fa-wrench"></span> Repair
                                    </a> -->
                                    <a href="<?php echo base_url(); ?>index.php/report/aaf_assign_rep" class="btn btn-success">
                                        Assign
                                    </a>
                                </div>
                                
                            </h2>
                            <table class="table table-borderless table-striped table-earning" id="myTable_avail">
                                  <thead>
                                    <tr>
                                        <th width="3%" class="text-center"><span class="fa fa-bars"></span></th>
                                        <!-- <th>Asset Control #</th> -->
                                        <th>Category</th>
                                        <th>Subcategory</th>
                                        <th>Item</th>
                                        <th>Unit</th>
                                        <th>Quantity</th>
                                        <!-- <th>Department</th> -->                                   
                                    </tr>
                                </thead>
                                <tbody>
                                <?php if(!empty($avail)){ foreach($avail AS $a){ ?>
                                    <tr <?php if($a['damaged'] == 1){ echo "class='tr-damage'"; } else { echo ''; }?>>
                                        <td >  
                                            <div class="table-data-feature">
                                            <?php if($a['damaged']!=1){ ?>                                          
                                          
                                                <a class="btn btn-danger item btn-sm text-white" onClick="tagAsDamage(<?php echo $a['empid'];?>,<?php echo $a['et_id'];?>)" data-toggle="tooltip" data-placement="top" title="Tag as Damage">
                                                    <i class="fa fa-times"></i>
                                                </a>

                                            <?php } ?> 
                                            </div>
                                        </td>
                                        <!-- <td><?php echo $a['asset_control']; ?></td> -->
                                        <!-- <td><?php if(!empty($a['acquisition_date'])) { echo date('M j, Y',strtotime($a['acquisition_date'])); }else { echo ''; } ?></td> -->
                                        <td><?php echo $a['category']; ?></td>
                                        <td><?php echo $a['subcat']; ?></td>
                                        <td>
                                            <a href="<?php echo base_url(); ?>index.php/report/view_more/<?php echo $a['et_id']; ?>" class="btn btn-link pull-left" target="_blank" data-toggle="tooltip" data-placement="left" title="View">
                                            <?php echo $a['et_desc']; ?>
                                             </a>
                                            
                                        </td>
                                        <td align="center"><?php echo $a['unit']; ?></td>
                                        <td align="center"><?php echo $a['qty']; ?></td>
                                        <!-- <td><?php echo $a['department']; ?></td> -->
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
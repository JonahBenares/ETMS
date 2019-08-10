<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                      <?php include 'report_menu.php'; ?>

                        <div class=" table--no-card m-t-10 m-b-10">
                            <h2 class="m-l-30 m-b-30 m-t-30">Available Equipment/Tools
                                <div class="btn-group pull-right m-r-30 ">
                                    <!-- <a href="<?php echo base_url(); ?>index.php/repair/repair_list" class="btn btn-primary text-white ">
                                        <span class="fa fa-wrench"></span> Repair
                                    </a> -->
                                    <a href="<?php echo base_url(); ?>index.php/report/create_set_avail" class="btn btn-warning text-white bor-radius20 pull-right">Create Set</a>
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
                                            <a href="<?php echo base_url(); ?>index.php/report/view_more/<?php echo $a['et_id']; ?>" class="btn btn-link pull-left" data-toggle="tooltip" data-placement="left" title="View">
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
                       
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
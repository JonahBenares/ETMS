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
                            <h2 class="m-l-30 m-b-30 m-t-30">Available Set Equipment/Tools
                                <div class="btn-group pull-right m-r-30 ">
                                    <!-- <a href="<?php echo base_url(); ?>index.php/repair/repair_list" class="btn btn-primary text-white ">
                                        <span class="fa fa-wrench"></span> Repair
                                    </a> -->
                                    <!-- <a href="<?php echo base_url(); ?>index.php/report/create_set_avail" class="btn btn-warning text-white bor-radius20 pull-right">Create Set</a> -->
                                    <a href="<?php echo base_url(); ?>index.php/report/set_print_avail_all" class="btn btn-primary bor-radius100" title="Set Print">
                                    <span class="fa fa-print"></span></a>
                                    <?php if($_SESSION['usertype'] == 1){ ?> 
                                    <a href="<?php echo base_url(); ?>index.php/report/aaf_assign_rep" class="btn btn-success">
                                        Assign
                                    </a>
                                    <?php } ?>
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
                                        <th>Set Name</th>
                                        <!-- <th>Department</th> -->                                   
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    if(!empty($avail)){ 
                                        usort($avail, function($a, $b) {
                                            return $a['set_id'] - $b['set_id'];
                                        });
                                        foreach($avail AS $a){ 
                                ?>
                                    <tr <?php if($a['damaged'] == 1){ echo "class='tr-damage'"; } else { echo ''; }?>>
                                        <td >  
                                            <div class="table-data-feature">
                                            <?php if($a['damaged']!=1){ ?>         
                                                <?php if($_SESSION['usertype'] == 1){ ?>                                 
                                                <a class="btn btn-primary text-white item btn-sm" data-toggle="tooltip" data-placement="top" title="Update" href="<?php echo base_url(); ?>index.php/report/edit_encode/<?php echo $a['et_id'];?>">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a class="btn btn-danger item btn-sm text-white" onClick="tagAsDamage(<?php echo $a['empid'];?>,<?php echo $a['et_id'];?>)" data-toggle="tooltip" data-placement="top" title="Tag as Damage">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                                <?php } ?>

                                            <?php } ?> 
                                            </div>
                                        </td>
                                        <td><?php echo $a['category']; ?></td>
                                        <td><?php echo $a['subcat']; ?></td>
                                        <td>
                                            <a href="<?php echo base_url(); ?>index.php/report/view_more/<?php echo $a['et_id']; ?>" class="btn btn-link pull-left" data-toggle="tooltip" data-placement="left" title="View">
                                            <?php echo $a['et_desc']; ?>
                                             </a>
                                            
                                        </td>
                                        <td align="center"><?php echo $a['unit']; ?></td>
                                        <td align="center"><?php echo $a['qty']; ?></td>
                                        <td>
                                            <a href="<?php echo base_url(); ?>index.php/report/set_print_avail/<?php echo $a['set_id'];?>" class="btn btn-ilink" data-toggle="tooltip" data-placement="top" title="View Set"  style="white-space: normal!important;text-align: left">
                                                 <?php echo $a['set_name'];?>
                                            </a> 
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
                       
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
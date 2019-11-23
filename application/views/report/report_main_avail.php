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
                                    <?php if($_SESSION['usertype'] == 1){ ?>
                                    <a href="<?php echo base_url(); ?>index.php/report/create_set_avail" class="btn btn-warning text-white bor-radius20 pull-right">Create Set</a>
                                    <a href="<?php echo base_url(); ?>index.php/report/aaf_assign_rep" class="btn btn-success">
                                        Assign
                                    </a>
                                    <?php } ?>
                                    <a href = "<?php echo base_url(); ?>index.php/report/report_print_avail" class="btn btn-info"><span class="fa fa-print"></span> Print</a>
                                </div>
                                
                            </h2>
                            <div class="modal fade" id="lostTag" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="largeModalLabel"><span class="fa fa-filter"></span>  Lost Item</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <form method='POST' action="<?php echo base_url(); ?>index.php/report/insert_lost">
                                            <div class="modal-body">
                                                <table width="100%">
                                                    <tr>
                                                        <td><p>Lost Date:</p>
                                                            <input type="date" id="lost_date" name="lost_date" class="form-control bor-radius10" >
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><p>Accountable Person:</p>
                                                            <input type="text" style = "pointer-events: none;" name="accountable" id="accountable" class="form-control bor-radius10" >
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><p>Remarks:</p>
                                                            <textarea id="remarks" name="remarks" class="form-control bor-radius10"></textarea>
                                                        </td>
                                                    </tr>                                                        
                                                </table>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="submit" class="btn btn-success btn-sm btn-block bor-radius" value='Save'>
                                            </div>
                                            <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                            <input type="hidden" name="emp_id" id="emp_id">
                                            <input type="hidden" name="ed_id" id="ed_id">
                                            <input type="hidden" name="et_id" id="et_id">
                                        </form>
                                    </div>
                                </div>
                            </div>
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
                                                <?php if($_SESSION['usertype'] == 1){ ?>                                     
                                                <a class="btn btn-primary text-white item btn-sm" data-toggle="tooltip" data-placement="top" title="Update" href="<?php echo base_url(); ?>index.php/report/edit_encode/<?php echo $a['et_id'];?>">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a class="btn btn-secondary text-white item btn-sm" data-toggle="modal" id = "lost_button" data-id = "<?php echo $a['empid'];?>" data-name = "<?php echo $a['accountability'];?>" data-ab = "<?php echo $a['ed_id'];?>" data-ac = '<?php echo $a['et_id']; ?>' data-target="#lostTag" title="Lost">
                                                    <i class="fa fa-minus-circle"></i>
                                                </a>
                                                <?php } ?> 
                                                <a href = "<?php echo base_url(); ?>index.php/report/encode_report/<?php echo $a['et_id'];?>" class="btn btn-warning text-white item btn-sm" data-toggle="tooltip" data-placement="top" title="Print">
                                                    <i class="fa fa-print"></i>
                                                </a>
                                                <?php if($_SESSION['usertype'] == 1){ ?>
                                                <a class="btn btn-danger item btn-sm text-white" onClick="tagAsDamage(<?php echo $a['empid'];?>,<?php echo $a['et_id'];?>)" data-toggle="tooltip" data-placement="top" title="Tag as Damage">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                                <?php } ?> 
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
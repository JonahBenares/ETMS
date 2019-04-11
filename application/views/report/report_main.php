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
                            <h2 class="m-l-30 m-b-30 m-t-30">Equipment / Tools
                                <div class="pull-right m-r-10">
                                    <button type="button" class="btn btn-sm btn-info " data-toggle="modal" data-target="#largeModal">
                                        <span class="fa fa-filter"></span> Filter
                                    </button>
                                    <?php if(!empty($filt)){ ?>
                                    <a href = "<?php echo base_url(); ?>index.php/report/export_equipment/<?php echo $from;?>/<?php echo $to;?>/<?php echo $category;?>/<?php echo $subcat;?>/<?php echo $department;?>/<?php echo $item;?>/<?php echo $brand;?>/<?php echo $model;?>/<?php echo $item_type;?>/<?php echo $serial_no;?>/<?php echo $damage;?>" class="btn btn-sm btn-info"><span class="fa fa-report"></span>Export to Excel</a>

                                    <a href = "<?php echo base_url(); ?>index.php/report/report_print/<?php echo $from;?>/<?php echo $to;?>/<?php echo $category;?>/<?php echo $subcat;?>/<?php echo $department;?>/<?php echo $item;?>/<?php echo $brand;?>/<?php echo $model;?>/<?php echo $item_type;?>/<?php echo $serial_no;?>/<?php echo $damage;?>" class="btn btn-sm btn-info"><span class="fa fa-print"></span> Print</a>
                                    <?php }else { ?>
                                    <a href = "<?php echo base_url(); ?>index.php/report/export_equipment" class="btn btn-sm btn-info"><span class="fa fa-report"></span>Export to Excel</a>
                                    
                                    <a href = "<?php echo base_url(); ?>index.php/report/report_print" target="_blank" class="btn btn-sm btn-info"><span class="fa fa-print"></span> Print</a>
                                    <?php } ?>
                                </div>                                
                            </h2>
                            <?php if(!empty($filt)){  //if($from!='' && $to!='' && $category!='' && $subcat!='' && $department!='' && $item!='' && $brand!='' && $model!='' && $type!='' && $serial!='' && $damage!=''){ ?>     
                            <div class='sufee-alert alert with-close alert-success fade show m-l-30 m-r-30'><span class='btn btn-success disabled'>Filter Applied</span><?php echo $filt ?>, <a href='<?php echo base_url(); ?>index.php/report/report_main' class='remove_filter alert-link pull-right btn'><span class="fa fa-times"></span></a></div>                    
                            <?php } ?>

                            <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="largeModalLabel"><span class="fa fa-filter"></span>  Filter</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <form method='POST' action="<?php echo base_url(); ?>index.php/report/search_report/">
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <table width="100%">
                                                            <tr>
                                                                <td><p>Acquired Date (from):</p>
                                                                    <input type="date" id="acdfrom" name="from" class="form-control bor-radius10" >
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><p>Category:</p>
                                                                   <select name="category" class="form-control bor-radius5" id="category" onChange="chooseCategory();">
                                                                     <option value=''>-- Select Category --</option>
                                                                       <?php 
                                                                            foreach ($cat AS $cat) {
                                                                        ?>
                                                                        <option value="<?php echo $cat->category_id; ?>"><?php echo $cat->category_name;?></option>
                                                                        <?php } ?>
                                                                 </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><p>Sub Category:</p>
                                                                     <select id="subcat" name="subcat" class="form-control bor-radius5"></select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><p>Office/Department:</p>
                                                                    <input type="text" id="department" name="department" class="form-control bor-radius10">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><p>Item Description:</p>
                                                                    <input type="text" id="item" name="item" class="form-control bor-radius10">
                                                                </td>
                                                            </tr>                                                            
                                                            <tr>
                                                                <td><p>Damage</p><input type="checkbox" name="damage" id="damage" value='1'></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <table width="100%">
                                                            <tr>
                                                                <td><p>Acquired Date (to):</p>
                                                                    <input type="date" id="acdfrom" name="to" class="form-control bor-radius10" >
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><p>Brand:</p>
                                                                    <input type="text" id="brand" name="brand" class="form-control bor-radius10">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><p>Model:</p>
                                                                    <input type="text" id="model" name="model" class="form-control bor-radius10">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><p>Type:</p>
                                                                    <input type="text" id="item_type" name="item_type" class="form-control bor-radius10">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><p>Serial No. :</p>
                                                                    <input type="text" id="serial_no" name="serial_no" class="form-control bor-radius10">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="submit" class="btn btn-success btn-sm btn-block bor-radius" value='Filter'>
                                            </div>
                                             <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <table class="table table-borderless table-hover table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th>Employee Name</th>
                                        <th>Category</th>
                                        <th>Sub Category</th>
                                        <th>Item</th>
                                        <th>Unit</th>
                                        <th>Quantity</th>
                                        <th>Department</th>
                                        <th width="5%" class="text-center"><span class="fa fa-bars"></span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                if(!empty($main)){
                                foreach($main AS $m){ ?>
                                    <tr>                                        
                                        <td>
                                            <a href="<?php echo base_url(); ?>index.php/report/view_more/<?php echo $m['et_id'];?>" class="btn btn-link "  data-toggle="tooltip" data-placement="right" title="View" >
                                                <?php echo $m['accountability']; ?>
                                            </a>                                            
                                        </td>
                                        <td><?php echo $m['cat']; ?></td>
                                        <td><?php echo $m['subcat']; ?></td>
                                        <td><?php echo $m['et_desc']; ?></td>
                                        <td><?php echo $m['unit']; ?></td>
                                        <td><?php echo $m['qty']; ?></td>
                                        <td><?php echo $m['department']; ?></td>
                                        <td>                                            
                                            <div class="table-data-feature">
                                                <a class="btn btn-primary text-white item btn-sm" data-toggle="tooltip" data-placement="top" title="Update" href="<?php echo base_url(); ?>index.php/report/edit_encode/<?php echo $m['et_id'];?>">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a class="btn btn-success text-white item btn-sm" data-toggle="tooltip" data-placement="top" title="Return" onClick="viewReturn(<?php echo $m['empid'];?>,<?php echo $m['et_id'];?>)">
                                                    <i class="fa fa-refresh"></i>
                                                </a>
                                                <!-- <a class="btn btn-warning text-white item btn-sm" data-toggle="tooltip" data-placement="top" title="Transfer"  onClick="transferPop(<?php echo $m['empid'];?>,<?php echo $m['et_id'];?>)">
                                                    <i class="fa fa-reply"></i>
                                                </a> -->
                                                <a class="btn btn-danger item btn-sm text-white" onClick="tagAsDamage(<?php echo $m['empid'];?>,<?php echo $m['et_id'];?>)" data-toggle="tooltip" data-placement="top" title="Tag as Damage">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                <?php }
                                } ?>
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
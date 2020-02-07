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
                            <h2 class="m-l-30 m-b-30 m-t-30">Lost E/T</h2>
                            <table class="table table-borderless table-hover table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th>Date Lost</th>
                                        <th>Lost Item</th>
                                        <th>Replacement Item</th>
                                        <th>Accountable Person</th>
                                        <th>Remarks</th>
                                        <th width="5%" class="text-center"><span class="fa fa-bars"></span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                if(!empty($lost)){
                                foreach($lost AS $l){ ?>
                                    <tr>                                        
                                        <td><?php echo $l['lost_date']; ?></td>
                                        <td>
                                            <a href="<?php echo base_url(); ?>index.php/report/view_more/<?php echo $l['et_id'];?>" class=""  data-toggle="tooltip" data-placement="right" title="View" style="word-wrap: break-word;">
                                                <?php echo $l['item']; ?>
                                            </a> 
                                        </td>
                                        <td><?php echo $l['replacement']; ?></td>
                                        <td><?php echo $l['accountable']; ?></td>
                                        <td><?php echo $l['remarks']; ?></td>
                                        <td>                                            
                                            <div class="table-data-feature">
                                                <?php 
                                                    if($_SESSION['usertype'] == 1){ 
                                                ?>
                                                <a class="btn btn-success text-white item btn-sm <?php echo (!empty($l['replacement'])) ? "disabled" : ''; ?>" data-toggle="tooltip" data-placement="top" title="Replace Item" href="<?php echo base_url(); ?>index.php/report/replace_item/<?php echo $l['empid']; ?>/<?php echo $l['lost_id']; ?>">
                                                    <i class="fa fa-refresh"></i>
                                                </a>
                                                <?php } ?>
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
                       
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
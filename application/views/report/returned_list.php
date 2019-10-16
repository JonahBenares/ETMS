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
                            <h2 class="m-l-30 m-b-30 m-t-30">Returned List
                                <div class="pull-right m-r-10">                               
                            </h2>
                            <table class="table table-borderless table-hover table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th width = "10%">Returned Date</th>
                                        <th>Employee Name</th>
                                        <th>Item</th>
                                        <th>Received By</th>
                                        <th>Remarks</th>
                                        <th width="5%" class="text-center"><span class="fa fa-bars"></span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                if(!empty($main)){
                                foreach($main AS $m){ ?>
                                    <tr> 
                                        <td><?php echo $m['returned_date']; ?></td>                                       
                                        <td><?php echo $m['accountability']; ?></td>
                                        <td><?php echo $m['item_desc']; ?></td>
                                        <td><?php echo $m['received_by']; ?></td>
                                        <td><?php echo $m['remarks']; ?></td>
                                        <td>                                            
                                            <div class="table-data-feature">
                                                <a href = "<?php echo base_url(); ?>index.php/report/ars_report/<?php echo $m['return_id'];?>" class="btn btn-warning text-white item btn-sm" data-toggle="tooltip" data-placement="top" title="Print">
                                                    <i class="fa fa-print"></i>
                                                </a>
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
                       
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
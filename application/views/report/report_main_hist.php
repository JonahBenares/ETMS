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
                            <h2 class="m-l-30 m-b-30 m-t-30">Equipment / Tools <u>HISTORY</u></h2>                            
                            <table class="table table-borderless table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th>Item Name</th>
                                        <th>Brand</th>
                                        <th>Model</th>
                                        <th>S/N</th>                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                        foreach($item AS $i){ 
                                            foreach($details AS $det){ 
                                                switch($det){
                                                    case($i['et_id'] == $det['et_id']):
                                    ?>
                                    <tr >
                                        <td>
                                            <a href="<?php echo base_url(); ?>index.php/report/history_view/<?php echo $det['ed_id']; ?>" target="_blank" class="btn btn-link" data-toggle="tooltip" data-placement="right" title="View"  style="white-space: normal!important;text-align: left">
                                                    <?php echo $i['item']; ?>
                                            </a>                                            
                                        </td>
                                        <td><?php echo $det['brand']; ?></td>                                     
                                        <td><?php echo $det['model']; ?></td>                                     
                                        <td><?php echo $det['serial']; ?></td>                                     
                                    </tr>
                                    <?php  
                                        break;
                                        default: 
                                        } } } 
                                    ?>
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
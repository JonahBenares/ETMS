 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a onclick="history.go(-1);"  class="btn btn-default">
                                <span class="fa fa-arrow-left"></span>
                            </a>
                            <a href=''><h4 style="text-transform: uppercase"><?php echo $fullname; ?> RETURN REPORT</h4></a>
                        </div>
                        <div class="table--no-card m-t-10 m-b-10" id="table_peret">                            
                            <table class="table table-borderless table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th width="10%" class="text-center"><span class="fa fa-bars"></span></th>
                                        <th>Return Date</th>
                                        <th>ARS #</th>
                                        <th>Quantity</th>
                                        <th>Received By</th>
                                        <th>Remarks</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <?php 
                                        foreach($info AS $i){ 
                                    ?>
                                    <tr>
                                        <td>
                                            <div class="table-data-feature">
                                                <a href="<?php echo base_url(); ?>index.php/report/acf_report/<?php echo $i['return_id']?>" class="btn btn-warning m-r-5 text-white pull-right btn-sm">
                                                    <span class="fa fa-print"></span> ACF
                                                </a>
                                                <a href="<?php echo base_url(); ?>index.php/report/ars_report/<?php echo $i['return_id']?>" class="btn btn-success item btn-sm" data-toggle="tooltip" data-placement="top" title="Print Return Slip">
                                                    <i class="fa fa-print"></i>
                                                </a>
                                                <div class=" js-item-menu">
                                                    <a href="<?php echo base_url(); ?>index.php/report/report_sub/<?php echo $i['return_id']?>" class="btn btn-info item btn-sm" data-toggle="tooltip" data-placement="top" title="View Items">
                                                            <i class="fa fa-eye"></i>
                                                    </a>
                                                    <div class="mess-dropdown mess-sd js-dropdown view_det">
                                                        <div class="mess__title" style="padding: 5px">
                                                            <table class="table table-hover table-bordered">
                                                                <thead>
                                                                    <tr>
                                                                        <td>Item Desc:</td>
                                                                        <td>S/N</td>
                                                                        <td>Cost</td>
                                                                    </tr>
                                                                </thead>
                                                                <?php 
                                                                    foreach($details AS $det){ 
                                                                        switch($det){
                                                                            case($i['return_id'] == $det['return_id']):
                                                                ?>
                                                                <tr>
                                                                    <td><?php echo $det['item'];?></td>
                                                                    <td><?php echo $det['serial'];?></td>
                                                                    <td><?php echo $det['price'];?></td>
                                                                </tr>
                                                                <?php 
                                                                        break;
                                                                        default: 
                                                                        } 
                                                                    } 
                                                                ?>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>                                                
                                            </div>                                           
                                        </td>
                                        <td><?php echo $i['return_date']; ?></td>
                                        <td><?php echo $i['ars_no']; ?></td>
                                        <td><?php echo $i['quantity']; ?></td>
                                        <td><?php echo $i['receive_by']; ?></td>
                                        <td><?php echo $i['remarks']; ?></td>
                                       
                                    </tr>
                                   <?php } ?>
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
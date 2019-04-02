 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a onclick="history.go(-1);" class="btn btn-default">
                                <span class="fa fa-arrow-left"></span>
                            </a>
                         <a href=''><h4 style="text-transform: uppercase"><?php echo $fullname;?> TRANSFER REPORT</h4></a>
                        </div>
                        <div class=" table--no-card m-t-10 m-b-10" id="table_peret">                            
                            <table class="table table-borderless table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th>Turn Over Date</th>
                                        <th>Item Desc</th>
                                        <th>Quantity</th>
                                        <th>Transfer To</th>
                                        <th>Remarks</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <?php
                                    if(!empty($info)){
                                    foreach($info AS $i){ ?>
                                    <tr>
                                        <td><?php echo $i['turnover_date']; ?></td>
                                        <td>
                                            <div class="noti__item js-item-menu">
                                                <p class="animated headShake" style="color:#3194fa"><?php echo $i['item']; ?></p>
                                                <div class="mess-dropdown mess-sd js-dropdown" style="top: auto!important;left: -15px!important;">
                                                    <div class="mess__title" style="padding: 10px">
                                                        <table width="100%">
                                                            <?php 
                                                                foreach($details AS $det){ 
                                                                        switch($det){
                                                                            case($i['et_id'] == $det['et_id']):
                                                            ?>
                                                            <tr>
                                                                <td>Category:</td>
                                                                <td><?php echo $det['cat'];?></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sub Category:</td>
                                                                <td><?php echo $det['subcat'];?></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Model:</td>
                                                                <td><?php echo $det['model'];?></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brand:</td>
                                                                <td><?php echo $det['brand'];?></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Serial No.:</td>
                                                                <td><?php echo $det['serial'];?></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Type:</td>
                                                                <td><?php echo $det['type'];?></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Unit price:</td>
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
                                        </td>
                                        <td><?php echo $i['quantity']; ?></td>
                                        <td><?php echo $i['turnover_to']; ?></td>
                                        <td><?php echo $i['remarks']; ?></td>
                                       
                                    </tr>
                                   <?php } 
                               }?>
                                </tbody>
                            </table>
                            <hr>
                            <small>printed by: who | date | Equipment and Tool Management System </small>
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
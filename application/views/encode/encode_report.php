<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Print</title>
</head>
<style type="text/css">
    @media print{
        .hid{
            display: none;
        }
     }
    .table-main{
        border:2px solid black;
        border-bottom:0px solid black;
    }
    #head{
        font-size: 14px;
    }
    .table-bordered>tbody>tr>td, 
    .table-bordered>tbody>tr>th, 
    .table-bordered>tfoot>tr>td, 
    .table-bordered>tfoot>tr>th, 
    .table-bordered>thead>tr>td, 
    .table-bordered>thead>tr>th {
        border: 1px solid #000!important;
    }
    .nomarg{
        margin: 0px;
    }
    p, .main-tab, h5, label.nomarg{
        color:#000;
    }
    .select {
       text-align-last: center;
       text-align: center;
       -ms-text-align-last: center;
       -moz-text-align-last: center;
        padding: 5px 0px!important;
        width:100%;
        border:0px;
        background:none;
        text-align:center;
        -webkit-appearance: none;
    }
    @media print{
        #print, #printhide{
            display: none;
        }
    }
</style>
<body style="padding-top:20px">
    <div class="container">
        <a href="<?php echo base_url(); ?>index.php/encode/encode_et" class="btn btn-warning btn-sm text-white" id="back">Back</a>
        <table class = "table-main " style = "width:100%">
            <tr>
                <td style="padding:10px;border-bottom: 2px solid #000" width="15%">
                    <img src="<?php echo base_url(); ?>assets/default/logo_cenpri.png" width="100%" height="auto">
                </td>
                <td style="padding:10px;border-bottom: 2px solid #000;"  width="35%" >
                   <p id="head" style="margin: 0px"> <strong>CENTRAL NEGROS POWER RELIABILITY INC.</strong></p>
                    <p id="head" style="margin: 0px">Purok San Jose, Brgy. Calumangan, Bago City</p>
                    <p id="head" style="margin: 0px">Tel. No. 476-7382</p>
                </td>
                <td style="padding:10px;border-bottom: 2px solid #000;border-left: 2px solid #000" width="50%" align="center">
                    <h5><strong>ASSET ACCOUNTABILITY FORM</strong></h5>
                </td>
            </tr>
        </table>
        <form id='Assignform'>
            <div class="col-lg-12" style="margin:10px 0px 10px">
                <table width="100%">
                    <tr>
                        <td width="13%"><h5 class="nomarg">Employee</h5></td>
                        <td width="40%" style="border-bottom: 1px solid #999">
                            <!-- <input type="text" style="width: 100%"> -->
                            <input type="text" id = "assign" name = "assigned" autocomplete="off" style="width: 100%" value = "<?php echo $name;?>">
                        </td>
                        <td width="4%"></td>
                        <td width="13%"><h5 class="nomarg pull-right">Employee No.</h5></td>
                        <td colspan="3" style="border-bottom: 1px solid #999">
                            <input type="text" name = "aaf_no" id ="aaf_no" style="width: 100%" value = "<?php echo $employee_no;?>">
                        </td>
                    </tr>
                    <tr>
                        <td><h5 class="nomarg">Position</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="text" name = "position" id = "position" style="width: 100%" value = "<?php echo $position;?>">
                        </td>
                    </tr>
                    <!-- <tr>
                        <td><h5 class="nomarg">Date Issued</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="date" name = "date_issued" style="width: 100%" value = "<?php echo $date_issued;?>">
                        </td>
                    </tr> -->
                    <tr>
                        <td><h5 class="nomarg">Department</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="text" name = "department" id = "department" style="width: 100%" value = "<?php echo $department;?>">
                        </td>
                    </tr>              
                </table>
            </div>
            <!-- <div id="printhide">
                <div class="card p-b-10 p-t-10 p-l-10 p-r-10">
                    <div class="row">
                        <div class="col-lg-2"><label for="" class="control-label pull-right">Item Name:</label></div>
                        <div class="col-lg-7">                        
                            <input id="item" name="item" type="text" class="form-control" placeholder="" autocomplete="off">
                            <span id="suggestion-item"></span>
                        </div>
                        <div class="col-lg-3">
                            <a onclick='add_item()' class="btn btn-success bor-radius text-white">Add Item</a>
                        </div>
                    </div>
                </div>
                
                
            </div>  -->
            <div class="col-lg-12">
                <table width="100%" class="table-bordered">
                    <tr>                
                        <td class="main-tab" width="20%" align="center"><strong>Asset #</strong></td>
                        <td class="main-tab" width="10%" align="center"><strong>Acquisition Date</strong></td>
                        <td class="main-tab" width="40%" align="center"><strong>Description</strong></td>                    
                        <td class="main-tab" width="7%" align="center"><strong>Qty</strong></td>
                        <td class="main-tab" width="7%" align="center"><strong>U/M</strong></td>
                        <td class="main-tab" width="7%" align="center"><strong>Cost</strong></td>
                        <td class="main-tab" width="8%" align="center"><strong>Total</strong></td>
                    </tr>
                    <tr>
                        <?php 
                            if(!empty($head)){ 
                                foreach($head as $head){
                                    foreach($details AS $det){ 
                                        switch($det){
                                            case($head['et_id'] == $det['et_id']):
                        ?>
                        <tr>
                            <td class="main-tab" align="center"><?php echo $det['acn_no'];?></td>
                            <td class="main-tab" align="center"><?php echo $det['date'];?></td>
                            <td class="main-tab" align="center"><?php echo $det['item']." - ".$det['brand']." - ".$det['serial']." - ".$det['model'];?></td>
                            <td class="main-tab" align="center"><?php echo $det['qty'];?></td>
                            <td class="main-tab" align="center"><?php echo $det['unit'];?></td>
                            <td class="main-tab" align="center"><?php echo $det['price']." <small>".$det['currency']."</small>";?></td>
                            <td class="main-tab" align="center"><?php echo number_format($det['price'],2)." <small>".$det['currency']."</small>";?></td>
                        </tr>
                        <?php   
                            break;
                            default: 
                            } } } 
                            } else { 
                        ?>
                        <tr>
                            <td class="main-tab" align="center" colspan='9'><center>No Data Available.</center></td>
                        </tr>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td class="main-tab" colspan="9"><center>***nothing follows***</center></td>
                    </tr>  
                </table>
                <br>
                <table width = '100%'>
                        <tr>
                            <td width = '7%' style ="color:black;"><strong>Remarks:</strong></td>
                            <td style = "border-bottom: 1px solid #aeaeae">
                                <?php 
                                    foreach($remarks_it AS $rem){ 
                                ?>
                                <?php if($rem['remarks'] == ''){ ?>   
                                <?php } else { ?>
                                    <b><?php echo $rem['remarks']; ?> ,</b>
                                <?php } ?>
                                <?php } ?> 
                            </td>
                        </tr>
                </table>
                <br>
                <table width="100%">
                    <tr>
                        <td class="main-tab" style="text-indent:20%">I hereby acknowledge receipt of the company owned property/ies listed above for which I am accountable. I agree to maintain the property/ies in good condition and to return it when I cease working for the company, or earlier on request.  I promise to report any loss or damage immediately and further agree to use the said property for work related purposes.</td>
                    </tr>
                </table>
                <br>
                 <table width="100%">
                    <tr>
                        <td width="10%"></td>
                        <td width="26%" class="main-tab">Prepared by:</td>
                        <td width="10%"></td>
                        <td width="26%" class="main-tab">Received by:</td>
                        <td width="10%"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="border-bottom:1px solid #000">
                            <input class="select" type="text" name="" value="<?php echo $user_id;?>">
                        </td> 
                        <td></td>
                        <td style="border-bottom:1px solid #000">
                            <!-- <select class="select">
                                <option></option>
                                <?php foreach($employee AS $emp){ ?>
                                    <option value = "$emp->employee_id"><?php echo $emp->employee_name;?></option>
                                <?php } ?>
                            </select> -->
                            <input class="select" id = "receive_by" type="text" name="" value = "<?php echo $name;?>">
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input class="select" type="" name="" value="Asset Management Assistant" >
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table> 
                <br>
                <center>
                    <!-- id="print" -->
                    <input type='button' class="btn btn-primary" id='print' value='Print'>
                    <!-- <button  class="btn btn-primary " type = "submit">Save & Print</button> -->
                </center>
                <input type="hidden" id="user_id" name="user_id" value = "<?php echo $_SESSION['user_id'];?>"> 
                <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
            </form>
        </div>
    </div>
</body>
</html>
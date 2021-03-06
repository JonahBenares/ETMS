<!DOCTYPE html>
<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Print</title>
</head>
<style type="text/css">
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
        #back{
            display: none;
        }
    }
</style> 
    <!-- <body style="padding-top:20px">
        <div class="container">
            <button onclick="closeWindow()"  class="btn btn-warning btn-sm text-white" id="back">Back</button>
            <table class = "table-main " style = "width:100%">
                <tr>
                    <td style="padding:10px;border-bottom: 2px solid #000" width="15%">
                        <img src="<?php echo base_url(); ?>assets/default/logo_cenpri.png" width="100%" height="auto">
                    </td>
                    <td style="padding:10px;border-bottom: 2px solid #000;"  width="35%" >
                       <p id="head" style="margin: 0px"> <strong>CENTRAL NEGROS POWER RELIABILITY INC.</strong></p>
                        <p id="head" style="margin: 0px">Purok San Jose, Brgy. Calumangan, Bago City</p>
                        <p id="head" style="margin: 0px">Tel. No. 476-7382</p>
                    </td> -->
                    <td style="padding:10px;border-bottom: 2px solid #000;border-left: 2px solid #000" width="50%" align="center">
                        <h5><strong>ASSET CLEARANCE FORM</strong></h5>
                    </td>
                </tr>
            </table>
        <form id='ACFform'>
            <div class="col-lg-12" style="margin:10px 0px 10px">
                <table width="100%">
                    <tr>
                        <td width="5%"><h5 class="nomarg">Date</h5></td>
                        <td width="20%" style="border-bottom: 1px solid #999"> <label class="nomarg">: <?php echo date('Y-m-d');?></label></td>
                        <td width="34%"></td>
                        <td width="13%"><h5 class="nomarg pull-right">ACF No.</h5></td>
                        <td colspan="3" style="border-bottom: 1px solid #999"> <label class="nomarg">: <input type = "text" name = "acf_no" id = "acf_no" value = "<?php echo $acf_no; ?>" readonly></label></td>
                    </tr>            
                </table>
            </div>
            <div class="col-lg-12">
                <table width="100%" class="table-bordered">
                    <tr>                
                        <td class="main-tab" width="10%" align="center"><strong>Date Returned</strong></td>
                        <td class="main-tab" width="10%" align="center"><strong>Date Issued</strong></td>
                        <td class="main-tab" width="10%" align="center"><strong>Item</strong></td>                     
                        <td class="main-tab" width="7%" align="center"><strong>Qty</strong></td>
                        <td class="main-tab" width="7%" align="center"><strong>U/M</strong></td>
                        <td class="main-tab" width="7%" align="center"><strong>Unit Price</strong></td>
                        <td class="main-tab" width="8%" align="center"><strong>Remarks</strong></td>
                    </tr>
                    <tr>
                    <?php 
                        if(!empty($sub)){
                                foreach($sub AS $det){ 
                    ?>
                        <tr style = "<?php echo ($det['lost']!=0) ? "background-color:#ec7070!important" : ''; ?>">
                            <td class="main-tab" align="center"><?php echo ($det['lost']==0) ? $det['date_returned'] : '';?></td>
                            <td class="main-tab" align="center"><?php echo $det['date_issued'];?></td>
                            <td class="main-tab" align="center"><?php echo ($det['lost']!=0) ? $det['et_desc']." - <b>Lost Item</b>" : $det['et_desc'];;?></td>
                            <td class="main-tab" align="center"><?php echo $det['qty'];?></td>
                            <td class="main-tab" align="center"><?php echo $det['unit'];?></td>
                            <td class="main-tab" align="center"><?php echo $det['unit_price'];?></td>
                            <?php if(!empty($det['accountabilitys'])){ ?>
                                <td class="main-tab" align="center"><?php echo (!empty($det['remarks'])) ? $det['remarks']." - Turn over to ".$det['accountabilitys'] : $det['remarks']." Turn over to ".$det['accountabilitys']?></td>
                            <?php }else{ ?>
                                <td class="main-tab" align="center"><?php echo $det['remarks'];?></td>
                            <?php }?>
                        </tr>
                        <?php } } else { ?>
                        <tr>
                            <td class="main-tab" align="center" colspan='11'><center>No Data Available.</center></td>
                        </tr>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td class="main-tab" colspan="11"><center>***nothing follows***</center></td>
                    </tr>   
                </table>
                <br>
                <table width="100%">
                    <tr>
                        <td class="main-tab" style="text-indent:20%">This is to certify that <span style="border-bottom: 1px solid #a2a2a2"><?php echo $name;?></span> cleared from any liabilites from the company. </td>
                    </tr>
                </table>
                <br>
                 <table width="100%">
                    <tr>
                        <td width="10%"></td>
                        <td width="26%" class="main-tab">Prepared by:</td>
                        <td width="10%"></td>
                        <td width="26%" class="main-tab">Noted by:</td>
                        <td width="10%"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="border-bottom:1px solid #000">
                            <input class="select" type="" name="" value="<?php echo $user_id;?>">
                        </td> 
                        <td></td>
                        <td style="border-bottom:1px solid #000">
                            <input class="select" type="" name="" value="">
                        </td>
                        <td></td>
                    </tr>
                </table> 
                <hr>
                <small>printed by: <?php echo $_SESSION['fullname'];?> ||date:: <?php echo date('Y-m-d');?> || Equipment and Tool Management System </small>
            </div>
        </div>
        <br>
        <br>
        <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
        <input type="hidden" name="employee_id" id="employee_id" value="<?php echo $id; ?>">
        <center><input type='button' class="btn btn-success m-b-50 animated headShake" id='print' onclick='saveACF()' value='Print'></center>
        <!-- <a href="" id="print" onclick='saveACF()' class="btn btn-success m-b-50 animated headShake">Print</a> -->
    </form>
    <script>
    function iprint() {
      window.print();
    }
    </script>
</body>
</html>
<?php $ci =& get_instance(); ?>
<!DOCTYPE html>
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
        #back{
            display: none;
        }
    }
</style>
<!-- <body style="padding-top:20px">
    <div class="container">
        <button onclick="history.go(-1);" class="btn btn-warning btn-sm text-white" id="back">Back</button>
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
                    <h5><strong>AVAILABLE SET FORM</strong></h5>
                </td>
            </tr>
        </table>
        <div class="col-lg-12" style="margin:10px 0px 10px">
            <table width="100%">
                <tr>
                    <td width="10%"><h5 class="nomarg">Employee</h5></td>
                    <td width="40%" style="border-bottom: 1px solid #999"> <label class="nomarg">: <?php echo $employee;?></label></td>
                    <td width="4%"></td>
                    <td width="10%"><h5 class="nomarg ">Employee No.</h5></td>
                    <td colspan="3" style="border-bottom: 1px solid #999"> <label class="nomarg">: <?php echo $aaf_no;?></label></td>
                </tr>
                <tr>
                    <td><h5 class="nomarg">Position</h5></td>
                    <td style="border-bottom: 1px solid #999"> <label class="nomarg">: <?php echo $position;?></label></td>
                    <td></td>
                </tr>
                <tr>
                    <td><h5 class="nomarg">Department</h5></td>
                    <td style="border-bottom: 1px solid #999"> <label class="nomarg">: <?php echo $department;?></label></td>
                </tr>              
            </table>
        </div>
        <!-- <div class="col-lg-12"> -->
            <table width="100%" class="table-bordered">
                <tr>                
                    <td class="main-tab" width="10%" align="center"><strong>Asset #</strong></td>
                    <td class="main-tab" width="10%" align="center"><strong>Acquisition Date</strong></td>
                    <td class="main-tab" width="40%" align="center"><strong>Description</strong></td>                    
                    <td class="main-tab" width="7%" align="center"><strong>Qty</strong></td>
                    <td class="main-tab" width="7%" align="center"><strong>U/M</strong></td>
                    <td class="main-tab" width="20%" align="center"><strong>Set Name</strong></td>
                    <td class="main-tab" width="20%" align="center"><strong>Lot No. </strong></td>
                    <td class="main-tab" width="7%" align="center"><strong>Cost</strong></td>
                    <td class="main-tab" width="8%" align="center"><strong>Total</strong></td>
                </tr>
                <tr>
                <?php 
                    if(!empty($details)){ 
                        $a=0;
                        $b=0;
                        $ct_set =count(array_unique($set));
                        $new_set = array_unique($set);
                        foreach($details AS $det){          
                ?>
                    <tr>
                        <td class="main-tab" align="center"><?php echo $det['asset_control_no'];?></td>
                        <td class="main-tab" align="center"><?php echo $det['acquisition_date'];?></td>
                        <td class="main-tab" align="center"><?php echo $det['et_desc'];?></td>
                        <td class="main-tab" align="center"><?php echo $det['qty'];?></td>
                        <td class="main-tab" align="center"><?php echo $det['unit'];?></td>
                        <?php
                            foreach($new_set AS $key=>$value){
                                if($key==$a){
                        ?>
                            <td class="main-tab" align="center" <?php echo " rowspan='".$value."'"; ?>><?php echo $det['set_name'];?></td>
                            <td class="main-tab" align="center" <?php echo " rowspan='".$value."'"; ?>><?php echo $det['set_lot'];?></td>
                            <td class="main-tab" align="center" <?php echo " rowspan='".$value."'"; ?>><?php echo $det['unit_price']; ?></td>
                            <td class="main-tab" align="center" <?php  echo " rowspan='".$value."'"; ?>><?php echo number_format($det['total'],2); ?></td>
                        <?php } } ?>
                    </tr>
                <?php $a++; } } else { ?> 
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
            <hr>
            <small>printed by: <?php echo $_SESSION['fullname'];?> || date: <?php echo date('Y-m-d');?> || Equipment and Tool Management System </small>
        <!-- </div> -->
    </div>
    <center><a href="" id="printBtn" onclick="iprint()" class="btn btn-block btn-success m-t-50 m-b-50 animated headShake">Print</a></center>
    <script>
    function iprint() {
      window.print();
    }
    </script>
</body>
</html>
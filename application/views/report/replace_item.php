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
                    <h5><strong>ASSET ACCOUNTABILITY FORM</strong></h5>
                </td>
            </tr>
        </table>
        <form id='Replaceform'>
            <div class="col-lg-12" style="margin:10px 0px 10px">
                <table width="100%">
                    <tr>
                        <td width="13%"><h5 class="nomarg">Employee</h5></td>
                        <td width="40%" style="border-bottom: 1px solid #999">
                            <!-- <input type="text" style="width: 100%"> -->
                            <input type="text" id = "assign" name = "assigned" autocomplete="off" style="width: 100%" value = "<?php echo $employee_name; ?>" required>
                            <?php if(empty($employee_name)){ ?>
                            <span id="suggestion-assign"></span>
                            <?php } ?>
                        </td>
                        <td width="4%"></td>
                        <td width="13%"><h5 class="nomarg pull-right">Employee No.</h5></td>
                        <td colspan="3" style="border-bottom: 1px solid #999">
                            <input type="text" name = "aaf_no" id ="aaf_no" style="width: 100%" value = "<?php echo $aaf_no; ?>">
                        </td>
                    </tr>
                    <tr>
                        <td><h5 class="nomarg">Position</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="text" name = "position" id = "position" style="width: 100%" value = "<?php echo $position; ?>">
                        </td>
                    </tr>
                    <tr>
                        <td><h5 class="nomarg">Date Issued</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="date" name = "date_issued" style="width: 100%">
                        </td>
                    </tr>
                    <tr>
                        <td><h5 class="nomarg">Department</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="text" name = "department" id = "department" style="width: 100%" value = "<?php echo $department; ?>">
                        </td>
                    </tr>              
                </table>
            </div>
            <div id="printhide">
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
                
                
            </div> 
            <div class="col-lg-12">
                <table width="100%" class="table-bordered">
                    <tr>                
                        <td class="main-tab" width="20%" align="center"><strong>Asset #</strong></td>
                        <td class="main-tab" width="10%" align="center"><strong>Acquisition Date</strong></td>
                        <td class="main-tab" width="10%" align="center"><strong>Item</strong></td>                    
                        <td class="main-tab" width="10%" align="center"><strong>Brand</strong></td>                    
                        <td class="main-tab" width="10%" align="center"><strong>Type</strong></td>                    
                        <td class="main-tab" width="10%" align="center"><strong>Model</strong></td>                    
                        <td class="main-tab" width="10%" align="center"><strong>Serial No.</strong></td>                    
                        <td class="main-tab" width="7%" align="center"><strong>Qty</strong></td>
                        <td class="main-tab" width="7%" align="center"><strong>U/M</strong></td>
                        <td class="main-tab" width="7%" align="center"><strong>Cost</strong></td>
                        <td class="main-tab" width="8%" align="center"><strong>Total</strong></td>
                        <td class="main-tab hid" width="8%" align="center"><strong>Action</strong></td>
                    </tr>

                    <tbody id="item_body"></tbody>
                    <!-- <tr>
                        <tr>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                        </tr>
                        <tr>
                            <td class="main-tab" align="center" colspan='9'><center>No Data Available.</center></td>
                        </tr>
                    </tr> -->
                    <tr>
                        <td class="main-tab" colspan="12"><center>***nothing follows***</center></td>
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
                        <td style="border-bottom:1px solid #000;vertical-align:bottom;">
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
                            <!-- <input class="select" id = "receive_by" type="text" name=""> -->
                            <?php if(empty($employee_name)){ ?>
                            <div id = "receive_by" style = "color:black;"></div>
                            <?php } else { ?>
                            <div id = "receive_by" style = "color:black;text-align: center"><?php echo $employee_name; ?></div>
                            <?php } ?>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input class="select" type="" name="" value="" >
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table> 
                <hr>
                <small>printed by: <?php echo $_SESSION['fullname'];?> || date: <?php echo date('Y-m-d');?> || Equipment and Tool Management System </small>
                <br>
                <center>
                    <!-- id="print" -->
                    <input type='button' class="btn btn-primary" id='print' onclick='saveReplace()' value='Save & Print'>
                    <!-- <button  class="btn btn-primary " type = "submit">Save & Print</button> -->
                </center>
                <input type="hidden" id="user_id" name="user_id" value = "<?php echo $_SESSION['user_id'];?>"> 
                <input type='hidden' name='item_id' id='item_id'>
                <input type='hidden' name='ed_id' id='ed_id'>
                <input type='hidden' name='lost_id' id='lost_id' value = "<?php echo $lost_id; ?>">
                <input type='hidden' name='set_id' id='set_id'>
                <input type='hidden' name='type' id='type'>
                <input type='hidden' name='acn' id='acn'>
                <input type='hidden' name='acq_date' id='acq_date'>
                <input type='hidden' name='serial' id='serial'>
                <input type='hidden' name='model' id='model'>
                <input type='hidden' name='brand' id='brand'>
                <input type='hidden' name='qty' id='qty'>
                <input type='hidden' name='unit' id='unit'>
                <input type='hidden' name='price' id='price'>
                <input type='hidden' name='total' id='total'>
                <?php if(empty($employee_name)){ ?>
                <input type="hidden" name="assign_id" id="assign_id">
                <?php }else { ?>
                <input type="hidden" name="assign_id" id="assign_id" value = "<?php echo $empid; ?>">
                <?php } ?>
                <input type='hidden' name='counter' id='counter'>
                <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
            </form>
        </div>
    </div>
    <br>
    <br>
</body>
</html>
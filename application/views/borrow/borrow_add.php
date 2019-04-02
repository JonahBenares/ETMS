<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/borrow.js"></script>
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
                </td>
                <td style="padding:10px;border-bottom: 2px solid #000;border-left: 2px solid #000" width="50%" align="center">
                    <h5><strong>BORROW FORM</strong></h5>
                </td>
            </tr>
        </table>
        <form id='Borrowform'>
            <div class="col-lg-12" style="margin:10px 0px 10px">
                <table width="100%">
                    <?php foreach($borrow AS $b){ ?>
                    <tr>
                        <td width="20%"><h5 class="nomarg">Employee Name :</h5></td>
                        <td width="40%" style="border-bottom: 1px solid #999">
                            <input type="text" id = "" name = "borrowed_by" value = "<?php echo $b['employee'];?>" autocomplete="off" style="width: 100%;pointer-events: none;">
                        </td>
                        <td width="2%"></td>
                        <td width="13%"><h5 class="nomarg pull-right">Series :</h5></td>
                        <td colspan="20%" style="border-bottom: 1px solid #999">
                            <input type="text" name = "series" id ="series" value = "<?php echo $b['series'];?>" style="width: 100%;pointer-events: none;">
                        </td>
                    </tr>
                    <tr>
                        <td><h5 class="nomarg">Borrowed Date/Time :</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="date" value = "<?php echo $b['date'];?>" name = "date_issued" style="width: 100%;pointer-events: none;">
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><small>yy-mm-series</small></td>
                        <input type="hidden" value = "<?php echo $b['id'];?>" name = "borrowed_id" style="width: 100%;pointer-events: none;">
                    </tr> 
                    <?php } ?>      
                </table>
            </div>
            <div id="printhide">
                <div class="card p-b-10 p-t-10 p-l-10 p-r-10">
                    <div class="row">
                        <div class="col-lg-2"><label for="" class="control-label pull-right">Item Name:</label></div>
                        <div class="col-lg-5">                        
                            <input id="item" name="item" type="text" class="form-control" placeholder="" autocomplete="off">
                            <span id="suggestion-item"></span>
                        </div>
                        <div class="col-lg-1"><label for="" class="control-label pull-right">Qty:</label></div>
                        <div class="col-lg-2">                        
                            <input name="qty" type="text" id ='qty' class="form-control" placeholder="">
                        </div>
                        <div class="col-lg-2">
                            <a onclick='add_item()' class="btn btn-success bor-radius text-white">Add Item</a>
                        </div>
                    </div>
                </div>
                
                
            </div> 
            <div class="col-lg-12">
                <table width="100%" class="table-bordered">
                    <tr>                
                        <td class="main-tab" width="20%" align="center"><strong>Asset #</strong></td>
                        <td class="main-tab" width="5%" align="center"><strong>Qty</strong></td>
                        <td class="main-tab" width="45%" align="center"><strong>Item Description</strong></td>                    
                        <td class="main-tab" width="20%" align="center"><strong>Uom</strong></td>
                        <td class="main-tab hid" width="5%" align="center"><strong>Action</strong></td>
                    </tr>

                    <tbody id="item_body"></tbody>
                        <!-- <tr>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab" align="center"></td>
                            <td class="main-tab hid" align="center"></td>
                        </tr>
                        <tr>
                            <td class="main-tab" align="center" colspan='5'><center>No Data Available.</center></td>
                        </tr> -->
                    <tr>
                        <td class="main-tab" colspan="5"><center>***nothing follows***</center></td>
                    </tr>   
                </table>
    
                <br>
                 <table width="100%">
                    <tr>
                        <td width="10%"></td>
                        <td width="26%" class="main-tab">Borrowed from:</td>
                        <td width="10%"></td>
                        <td width="26%" class="main-tab">Received by:</td>
                        <td width="10%"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="border-bottom:1px solid #000">
                            <input class="select" id = "receive_by" type="text" name="" value = "<?php echo $user_id;?>">
                        </td> 
                        <td></td>
                        <td style="border-bottom:1px solid #000">
                            <input class="select" id = "receive_by" type="text" name="" value = "<?php echo $name;?>">
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input class="select" type="text" name="" value="Encoder">
                        </td>
                        <td></td>
                        <td><input class="select" type="text" name="" value="Employee Name"></td>
                        <td></td>
                    </tr>
                </table> 
                <br>
                <center>
                    <input type='button' class="btn btn-primary" id='print' onclick='saveBorrow()' value='Save & Print'>
                     <input type="hidden" id="user_id" name="user_id" value = "<?php echo $_SESSION['user_id'];?>"> 
                    <input type='hidden' name='bh_id' id='bh_id' value = "<?php echo $id;?>">
                    <input type='hidden' name='item_id' id='item_id'>
                    <input type='hidden' name='ed_id' id='ed_id'>
                    <input type='hidden' name='acn' id='acn'>
                    <input type='hidden' name='serial' id='serial'>
                    <input type='hidden' name='model' id='model'>
                    <input type='hidden' name='brand' id='brand'>
                    <input type='hidden' name='unit' id='unit'>
                    <input type='hidden' name='counter' id='counter'>
                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                    <!-- <button  class="btn btn-primary " type = "submit">Save & Print</button> -->
                </center>
            </form>
        </div>
    </div>
</body>
</html>
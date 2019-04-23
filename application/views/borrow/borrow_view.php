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
        #print, #printhide, #generate, #series, #dngr{
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
        <form method="POST" action="<?php echo base_url(); ?>index.php/borrow/generateReturn">
            <div class="col-lg-12" style="margin:10px 0px 10px">
                <table width="100%">
                    <?php 
                       /* if(!empty($employee)){ 
                            foreach($employee AS $e){*/
                    ?>
                    <tr>
                        <td width="20%"><h5 class="nomarg">Employee Name :</h5></td>
                        <td width="40%" style="border-bottom: 1px solid #999">
                            <input type="text" id = "return" name = "return" autocomplete="off" style="width: 100%" value = "<?php if(!empty($employees)){ echo $employees; } else{ echo ''; }?>">
                            <span id="suggestion-return"></span>
                        </td>
                        <td width="2%"></td>
                        <td width="13%"><h5 class="nomarg pull-right">Series :</h5></td>
                        <td colspan="20%" style="border-bottom: 1px solid #999">
                            <input type="text" name = "series" id ="series" style="width: 100%" value = "<?php if(!empty($series)){ echo $series; }else { echo ''; } ?>">
                        </td>
                    </tr>
                    <tr>
                        <td><h5 class="nomarg">Borrowed Date/Time :</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="date" name = "date" id = 'date' style="width: 100%" value = "<?php if(!empty($date)){ echo $date; }else { echo ''; }?>">
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><small id="series">yy-mm-series</small></td>
                    </tr> 
                    <?php// } } else { ?>
                    <!-- <tr>
                        <td width="20%"><h5 class="nomarg">Employee Name :</h5></td>
                        <td width="40%" style="border-bottom: 1px solid #999">
                            <input type="text" id = "return" name = "return" autocomplete="off" style="width: 100%">
                            <span id="suggestion-return"></span>
                        </td>
                        <td width="2%"></td>
                        <td width="13%"><h5 class="nomarg pull-right">Series :</h5></td>
                        <td colspan="20%" style="border-bottom: 1px solid #999">
                            <input type="text" name = "series" id ="series" style="width: 100%">
                        </td>
                    </tr>
                    <tr>
                        <td><h5 class="nomarg">Borrowed Date/Time :</h5></td>
                        <td style="border-bottom: 1px solid #999">
                            <input type="date" name = "date" id = 'date' style="width: 100%">
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><small>yy-mm-series</small></td>
                    </tr> -->
                    <?php //} ?>
                    <tr>
                        <td colspan="6">
                            <center>
                                <input type="submit" name="search_inventory" value='Generate' class="btn btn-warning text-white m-t-20" id="generate" >
                            </center>
                        </td>  
                    </tr>    
                </table>
                 <input type="hidden" name="return_id" id="return_id">
            </div>
        </form>
        <form method = "POST" action="<?php echo base_url(); ?>index.php/borrow/insert_return">
            <div class="col-lg-12">
                <table width="100%" class="table-bordered">
                    <tr>                
                        <td id="dngr" class="main-tab" width="1%" align="center"><strong>Damage</strong></td>
                        <td class="main-tab" width="5%" align="center"><strong>Returned Qty</strong></td>
                        <td class="main-tab" width="5%" align="center"><strong>Borrowed Qty</strong></td>
                        <td class="main-tab" width="15%" align="center"><strong>Item</strong></td>                    
                        <td class="main-tab" width="10%" align="center"><strong>Brand</strong></td>                    
                        <td class="main-tab" width="10%" align="center"><strong>Type</strong></td>                    
                        <td class="main-tab" width="10%" align="center"><strong>Model</strong></td>                    
                        <td class="main-tab" width="10%" align="center"><strong>Serial No.</strong></td>                    
                        <td class="main-tab" width="20%" align="center"><strong>Uom</strong></td>
                    </tr>

                    <tbody id="item_body">
                        <?php 
                            if(!empty($return)){
                                $x = 1;
                                foreach($return AS $r){
                        ?>
                        <tr>
                            <td id="dngr" class="bg-danger" align="center"><input type = "hidden" name = "ets_id[]" value = "<?php echo $r['et_id'];?>"><input type="checkbox" name="e_id[]" class="multi" value ="<?php echo $r['ed_id'];?>"></td>
                            <td class="main-tab" align="center">
                                <input type="text" name = 'ret_qty<?php echo $x;?>' class="form-control">
                            </td>
                            <td class="main-tab" align="center">
                                <input type="text " class="form-control" value = "<?php echo $r['borrowed_qty'];?>">
                            </td>
                            <td class="main-tab" align="center"><input type = "hidden" name = "et_id<?php echo $x;?>" value = "<?php echo $r['et_id'];?>"><input type = "hidden" name = "ed_id<?php echo $x;?>" value = "<?php echo $r['ed_id'];?>"><?php echo $r['item'];?></td>
                            <td class="main-tab" align="center"><?php echo $r['brand']?></td>
                            <td class="main-tab" align="center"><?php echo $r['type']?></td>
                            <td class="main-tab" align="center"><?php echo $r['model']?></td>
                            <td class="main-tab" align="center"><?php echo $r['serial']?></td>
                            <td class="main-tab" align="center"><?php echo $r['unit']?></td>
                        </tr>
                        <input type="hidden" id="b_id" name="b_id" value = "<?php echo $r['bh_id'];?>">
                        <?php  $x++; } $counter = $x - 1;?>
                        <input type="hidden" id="count" name="count" value = "<?php echo $counter;?>">
                        <?php }else { ?>
                        <tr>
                            <td id="dngr"></td>
                            <td class="main-tab" align="center" colspan='9'><center>No Data Available.</center></td>
                        </tr>
                        <?php } ?>
                        <tr>
                            <td class="main-tab" colspan="9"><center>***nothing follows***</center></td>
                        </tr>  
                    </tbody> 
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
                            <input class="select" id = "" type="text" name="" value = "<?php echo $user_id;?>">
                        </td> 
                        <td></td>
                        <td style="border-bottom:1px solid #000">
                            <?php 
                                /*if(!empty($employee)){ 
                                    foreach($employee AS $e){*/
                            ?>
                                <input class="select" id = "rec_by" type="text" name="" value = "<?php if(!empty($employees)){ echo $employees; } else{ echo ''; }?>">
                            <?php //} } else { ?>
                                <!-- <input class="select" id = "rec_by" type="text" name=""> -->
                            <?php //} ?>
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
                    <input type='submit' class="btn btn-primary" id='' value='Save & Print'>
                    <!--  <input type="hidden" name="id" value = "<?php echo $id;?>">  -->
                    <input type="hidden" id="" name="returned_by" value = "<?php echo $borrowed_by;?>"> 
                    <input type="hidden" id="user_id" name="user_id" value = "<?php echo $_SESSION['user_id'];?>"> 
                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                </center>
            </form>
        </div>
    </div>
</body>
<script type="text/javascript">
    function toggle_multi(source) {
      checkboxes_multi = document.getElementsByClassName('multi');
      for(var i=0, n=checkboxes_multi.length;i<n;i++) {
        checkboxes_multi[i].checked = source.checked;
      }
    }
</script>
</html>
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
                    <h5><strong>EQUIPMENT/TOOLS DAMAGE REPORT</strong></h5>
                </td>
            </tr>
        </table>
        <div class="col-lg-12" style="margin:10px 0px 10px">
            <table width="100%">
                <tr>
                    <td width="15%"><p class="nomarg">Date of Incident</p></td>
                    <td width="30%" style="border-bottom: 1px solid #999"> <label class="nomarg">: </label></td>
                    <td width="20%"></td>
                    <td width="13%"><p class="nomarg pull-right">ETDR No.</p></td>
                    <td colspan="3" style="border-bottom: 1px solid #999"> <label class="nomarg">:</label></td>
                </tr>            
            </table>
            <br>
            <table width="100%">
                <tr>
                    <td width="43%"><p>Activity that the equipment was being used for</p></td>
                    <td width="55%" style="border-bottom: 1px solid #999"> <label class="nomarg">: </label></td>
                </tr>            
            </table>
            <br>
            <table width="100%">
                <tr>
                    <td width="43%"><p>Location where incident occurred</p></td>
                    <td width="55%" style="border-bottom: 1px solid #999"> <label class="nomarg">:</label></td>
                </tr>            
            </table>
            <br>
            <table width="100%">
                <tr>
                    <td width="10%"colspan="2"><p class="pull-right">Specification:</p></td>
                    <td></td>
                    <td></td>
                </tr>     
                <tr>
                    <td></td>
                    <td  width="5%" colspan="2"><p class="pull-right">Equipment/Tools </p></td>
                    <td style="border-bottom: 1px solid #999"> : </td>
                    <td width="10%"></td>
                </tr>        
                <tr>
                    <td></td>
                    <td></td>
                    <td><p class="pull-right">Brand </p></td>
                    <td style="border-bottom: 1px solid #999"> : </td>
                </tr>  
                <tr>
                    <td></td>
                    <td></td>
                    <td><p class="pull-right">Model </p></td>
                    <td style="border-bottom: 1px solid #999"> : </td>
                </tr> 
                <tr>
                    <td></td>
                    <td></td>
                    <td><p class="pull-right">Serial Number </p></td>
                    <td style="border-bottom: 1px solid #999"> : </td>
                </tr> 
            </table>
            <br>
            <p>Person(s) who were using the equipment/Memorandum Receipt/Accountability</p>
            <table width="100%">
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
            </table>
            <br>
            <p>Provide a brief description of the incident:</p>
            <table width="100%">
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
            </table>
            <br>
            <p>Fully describe the damage done to the equipment:</p>
            <table width="100%">
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
            </table>
            <br>
            <p> Provide a recommendation on how the equipment is going to be repaired or replaced:</p>
            <table width="100%">
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
                <tr>
                    <td width="10%"></td>
                    <td style="border-bottom: 1px solid #999"><br></td>
                </tr>
            </table>
            <br>
            <center>
                <p> Note: Tag damaged equipment. Place tag as close as possible to the damage area.</p>
                <p> Store damaged equipment directly to the repair room to ensure no one else uses it.</p>
            </center>
        </div>
        <div class="col-lg-12">
            <br>
             <table width="100%">
                <tr>
                    <td width="5%"></td>
                    <td width="20%" class="main-tab">Submitted by:</td>
                    <td width="10%"></td>
                    <td width="20%" class="main-tab">Checked by:</td>
                    <td width="10%"></td>
                    <td width="20%" class="main-tab">Noted by:</td>
                    <td width="5%"></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="border-bottom:1px solid #000">
                        <br>
                    </td> 
                    <td></td>
                    <td style="border-bottom:1px solid #000">
                        <br>
                    </td>
                    <td></td>
                    <td style="border-bottom:1px solid #000">
                        <br>
                    </td>
                    <td></td>
                </tr>
                 <tr>
                    <td></td>
                    <td>
                        <p></p>
                    </td> 
                    <td></td>
                    <td>
                        <center><p><!-- Asset Management Assistant --></p></center>
                    </td>
                    <td></td>
                    <td>
                        <center><p><!-- Plant Manager --></p></center>
                    </td>
                    <td></td>
                </tr>
            </table>
            <hr>
           <!--  <small>printed by: <?php echo $_SESSION['fullname'];?> || date: <?php echo date('Y-m-d');?> || Equipment and Tool Management System </small> -->
            <br>
            <br>
            <br>
        </div>
        <center><a href="" id="printBtn" onclick="iprint()" class="btn btn-success btn-block m-b-50 animated headShake">Print</a></center>
    
    </div>

</body>
<script>
    function iprint() {
      window.print();
    }
    </script>
</html>
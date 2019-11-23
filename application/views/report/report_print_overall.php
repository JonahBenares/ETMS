<style type="text/css">
    /*table, table tr td{
        border: 1px solid #555555
    }*/



    @media print{
        td{
            font-size: 10px!important
             border: 1px solid #000000;
        }
        #btn_print{
            display: none;
        }
    }

    body{
        color: #000000
    }

    .table-bordered, .table-bordered td {
        border: 1px solid #000000;
    }
    td{
        white-space: nowrap;
        padding:2px 4px 2px 4px;
    }
    .scroll{
        ;
    }
    table {
        border-collapse: collapse;
    }
    .thead{
        font-weight: 700;
    }
    .btn-group-lg>.btn, .btn-lg {
        padding: .5rem 1rem;
        font-size: 1.25rem;
        line-height: 1.5;
        border-radius: .3rem;
    }
    .btn-info {
        color: #fff;
        background-color: #17a2b8;
        border-color: #17a2b8;
    }
    .btn {
        display: inline-block;
        font-weight: 400;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        border: 1px solid transparent;
        padding: .375rem .75rem;
        font-size: 1rem;
        line-height: 1.5;
        border-radius: .25rem;
        transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    }
    .btn-warning {
        color: #212529;
        background-color: #ffc107;
        border-color: #ffc107;
    }
    .text-white{
        color: #fff;
    }
    button {
        border: none;
        background: none;
    }
</style>

<div class="main-contdent">
    <div class="scrsoll"  >
        <div  style="position: fixed;width: 100%;top: 0px" id="btn_print" >
            <center>
                <a class="btn btn-lg btn-warning text-white" href = '<?php echo base_url(); ?>index.php/report/inv_rep_overall'  style="width:20%">Back</a>
                <button class="btn btn-lg btn-info" style="width:70%;" onclick="printDiv('printableArea')">Print</button>
            </center>
        </div>
        <div id="printableArea" class="" style="margin-top:50px">
            <table class=" table-bordered table-hover" style="width:100%">
                <tr>
                    <td class = "thead">Item Description</td>
                    <td class = "thead">Qty</td>
                    <td class = "thead">Price</td>
                    <td class = "thead">Category</td>
                    <td class = "thead">Subcategory</td>
                    <td class = "thead">Department</td>
                    <td class = "thead">Status / Accountability</td>
                </tr>
                    <?php 
                        foreach($details AS $i){ 
                            if($i['accountability_id']!=0 && $i['borrowed']==0 && $i['lost']==0){
                                $status = $i['employee'];
                            }else if($i['accountability_id']==0 && $i['damaged']==0 && $i['change_location']==0){
                                $status = '<span style = "color:green;">Available</span>';
                            }else if($i['accountability_id']==0 && $i['change_location']==1){
                                $status = "Moved to ".$i['location'];
                            }else if($i['borrowed']==1){
                                $status = '<span style = "color:blue;">Borrowed</span>';
                            }else if($i['damaged']==1){
                                $status = '<span style = "color:red;">Damaged</span>';
                            }else if($i['lost']==1){
                                $status = '<span style = "color:orange;">Lost Item / '.$i['employee']."</span>";
                            }
                    ?>
                    <tr>
                        <td style="white-space: normal!important;"><?php echo $i['item'];?></td>
                        <td><?php echo $i['qty'];?></td>
                        <td><?php echo $i['unit_price'];?></td>
                        <td><?php echo $i['category'];?></td>
                        <td><?php echo $i['subcategory'];?></td>
                        <td><?php echo $i['department'];?></td>
                        <td align="center"><?php echo $status;?></td>
                    </tr>
                    <?php } ?>
            </table>
            <hr>
            <small>printed by: <?php echo $_SESSION['fullname'];?> || date: <?php echo date('Y-m-d');?> || Equipment and Tool Management System </small>
        </div>
    </div>
</div>



<script type="text/javascript">
    function printDiv(divName) {
        window.print();
    }
</script>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
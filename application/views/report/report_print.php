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
    <div class="scroll" style="position: absolute;" >
        <div  style="position: fixed;width: 100%" id="btn_print" >
            <center>
                <button class="btn btn-lg btn-warning text-white" onclick="closeWindow()" style="width:20%">Back</button>
                <button class="btn btn-lg btn-info" style="width:70%;" onclick="printDiv('printableArea')">Print</button>
            </center>
        </div>
        <div id="printableArea" style="margin-top:50px">
            <table class=" table-bordered table-hover" style="width:100%">
                <tr>
                    <td class="thead">Category</td>
                    <td class="thead" align="center">Asset Control No.</td>
                    <td class="thead" align="center">Acquisition Date</td>
                    <td class="thead"><p style="width: 300px">Item Description</p></td>
                    <td class="thead">Brand</td>
                    <td class="thead">Model</td>
                    <td class="thead">Serial No.</td>
                    <td class="thead">Qty</td>
                    <td class="thead">UOM</td>
                    <td class="thead">Date Issue</td>
                    <td class="thead">Accountability</td>
                    <td class="thead">Status</td>
                    <td class="thead">Department</td>
                    <td class="thead" align="center">Total Cost</td>
                    <td class="thead">Remarks</td>
                </tr>
                <tbody>
                    <?php 
                        foreach($report AS $r){ 
                            if($r['accountability_id']!=0 && $r['borrowed']==0){
                                $status = 'Assigned';
                            }else if($r['accountability_id']==0 && $r['damaged']==0){
                                $status = 'Available';
                            }else if($r['borrowed']==1){
                                $status = 'Borrowed';
                            }else if($r['damaged']==1){
                                $status = 'Damaged';
                            }
                    ?>
                    <tr>
                        <td><?php echo $r['category'];?></td>
                        <td align="center"><?php echo $r['asset_control_no'];?></td>
                        <td align="center"><?php echo $r['acquisition_date'];?></td>
                        <td style="white-space: normal!important;"><?php echo $r['item'];?></td>
                        <td><?php echo $r['brand'];?></td>
                        <td><?php echo $r['model'];?></td>
                        <td><?php echo $r['serial_no'];?></td>
                        <td><?php echo $r['qty'];?></td>
                        <td><?php echo $r['unit'];?></td>
                        <td><?php echo $r['date_issued'];?></td>
                        <td><?php echo $r['accountability'];?></td>
                        <td><?php echo $status;?></td>
                        <td><?php echo $r['department'];?></td>
                        <td align="center"><?php echo $r['total'];?></td>
                        <td><?php echo $r['remarks'];?></td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
            <hr>
            <small>printed by: <?php echo $user_id;?> || date: <?php echo date('Y-m-d');?> || Equipment and Tool Management System </small>
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
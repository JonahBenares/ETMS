 <script src="<?php echo base_url(); ?>assets/js/jquery-1.9.1.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/js/report.js"></script>
 <!-- MAIN CONTENT-->
 <script type="text/javascript">
    function viewSet(){
        window.open('<?php echo base_url(); ?>index.php/report/add_set_pop/', '_blank', 'top=50px,left=350px,width=600,height=500');
    }
</script>
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/report/report_main_emp" class="btn btn-default">
                                <span class="fa fa-arrow-left"></span>
                            </a>
                            <a href="">
                                <h4 style="text-transform: uppercase"><?php echo $name;?></h4>
                            </a>

                            <div class="btn-group pull-right">
                                <!-- <a href="<?php echo base_url(); ?>index.php/report/create_set/<?php echo $id;?>" class="btn btn-warning text-white bor-radius20 pull-right">Create Set</a>
                                <a href="<?php echo base_url(); ?>index.php/report/multi_return/<?php echo $id;?>" class="btn btn-success bor-radius100" title='Multiple Return'>
                                    <span class="fa fa-dedent"></span></a>
                                <a href="<?php echo base_url(); ?>index.php/report/return_report/<?php echo $id;?>" class="btn btn-success bor-radius100" title='Return Report'>
                                    <span class="fa fa-clipboard"></span></a> -->
                                <a href="<?php echo base_url(); ?>index.php/report/print_history/<?php echo $id;?>" class="btn btn-info" title="Print">
                                    <span class="fa fa-print"></span></a>
                            </div>
                            <!-- <a href="<?php echo base_url(); ?>index.php/report/transfer_report/<?php echo $id;?>" class="btn btn-sm btn-dark btn-space bor-radius100 pull-right" title='Transfer Report'>
                                <span class="fa fa-file-text"></span>
                            </a>  --> 
                            <!-- <a href="<?php echo base_url(); ?>index.php/report/multi_transfer/<?php echo $id;?>" class="btn btn-sm btn-dark btn-space bor-radius100 pull-right" title='Multiple Transfer'>
                                <span class="fa fa-indent"></span>
                            </a>  -->
                            
                        </div>

                        <div class="modal fade" id="lostTag" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="largeModalLabel"><span class="fa fa-filter"></span>  Lost Item</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form method='POST' action="<?php echo base_url(); ?>index.php/report/insert_lost">
                                        <div class="modal-body">
                                            <table width="100%">
                                                <tr>
                                                    <td><p>Lost Date:</p>
                                                        <input type="date" id="lost_date" name="lost_date" class="form-control bor-radius10" >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><p>Accountable Person:</p>
                                                        <input type="text" style = "pointer-events: none;" name="accountable" id="accountable" class="form-control bor-radius10" >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><p>Remarks:</p>
                                                        <textarea id="remarks" name="remarks" class="form-control bor-radius10"></textarea>
                                                    </td>
                                                </tr>                                                        
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="submit" class="btn btn-success btn-sm btn-block bor-radius" value='Save'>
                                        </div>
                                        <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                        <input type="hidden" name="emp_id" id="emp_id">
                                        <input type="hidden" name="ed_id" id="ed_id">
                                        <input type="hidden" name="et_id" id="et_id">
                                    </form>
                                </div>
                            </div>
                        </div>

                        <form action="" method = "POST">
                            <div class=" table--no-card " id="table_peret">                            
                                <table class="table table-borderesd dataTable table-striped table-earning">
                                    <thead>
                                        <tr>
                                            <th>Date Returned</th>
                                            <th>Date Issued</th>
                                            <th>Item</th>
                                            <th>Unit</th>
                                            <th>Quantity</th>
                                            <th>Unit Price</th>
                                            <th>Remarks</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            if(!empty($sub)){
                                            $x = 1;
                                            foreach($sub AS $s){ 
                                        ?>
                                        <tr style = "<?php echo ($s['lost']!=0) ? "background-color:#ec7070 !important" : ''; ?>">
                                            <td><?php echo $s['date_returned']; ?></td>
                                            <td><?php echo $s['date_issued']; ?></td>
                                            <td>
                                                <a href="<?php echo base_url(); ?>index.php/report/view_more/<?php echo $s['et_id'];?>" class="btn btn-ilink" data-toggle="tooltip" data-placement="top" title="View More" style="white-space: normal!important;text-align: left">
                                                     <?php echo ($s['lost']!=0) ? $s['et_desc']." - <b>Lost Item</b>" : $s['et_desc']; ?>
                                                </a>                                           
                                            </td>
                                            <td><?php echo $s['unit']; ?></td>
                                            <td ><?php echo $s['qty']; ?></td>
                                            <td><?php echo $s['unit_price']; ?></td>
                                            <td>
                                                <?php if($s['damaged']==1){ ?>
                                                    <a href="#" title="Remarks" data-toggle="popover"  data-placement="bottom" data-trigger="hover" data-content="<?php echo $s['incident_description']; ?>"><?php echo $s['remarks']." - ".$s['accountability']; ?></a>
                                                <?php } else { ?>

                                                    <?php if(!empty($s['accountabilitys'])){ ?>
                                                        <a href="#" title="Remarks" data-toggle="popover"  data-placement="bottom" data-trigger="hover" data-content="<?php echo $s['remarks']; ?>"><?php echo (!empty($s['accountabilitys'])) ? $s['remarks_all']." ".$s['accountabilitys'] : ''; ?></a>
                                                    <?php } else { ?>
                                                        <a href="#" title="Remarks" data-toggle="popover"  data-placement="bottom" data-trigger="hover" data-content="<?php echo $s['remarks']; ?>"><?php echo (empty($s['accountabilitys'])) ? 'Returned' : ''; ?></a>
                                                    <?php } ?>

                                                <?php } ?>
                                            </td>
                                        </tr>
                                        <?php $x++; } } else { ?>
                                        <tr>
                                            <td class="main-tab" align="center" colspan='11'><center>No Data Available.</center></td>
                                        </tr>
                                        <?php  } ?>
                                        <input type="hidden" name = "count" id = "count" value = "<?php echo $x?>">
                                        <input type="hidden" name = "id" id = "id" value = "<?php echo $id?>">
                                    </tbody>
                                </table>
                            </div>
                            
                        </form>
                        
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

<div class="modal fade" id="modalSet" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">Add Set</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method = "POST">
            <div class="modal-body">
                <table width="100%" id="">
                    <tr>
                        <td>Set Name:</td>
                        <td><input type="text" class="form-control bor-radius"></td>
                    </tr>
                    <tr>
                        <td><div class="m-t-10"></div></td>
                        <td><div class="m-t-10"></div></td>
                    </tr>
                    <tr>
                        <td>Set Price:</td>
                        <td><input type="text" class="form-control bor-radius"></td>
                    </tr>
                    <tr>
                        <td><div class="m-t-10"></div></td>
                        <td><div class="m-t-10"></div></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button class="btn btn-primary btn-block">Save</button></td>
                    </tr>
                </table>
            </div>    
            <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">     
            </form>                               
        </div>
    </div>
</div>
<script type="text/javascript">
    function toggle_multi(source) {
      checkboxes_multi = document.getElementsByClassName('multi');
      for(var i=0, n=checkboxes_multi.length;i<n;i++) {
        checkboxes_multi[i].checked = source.checked;
      }
    }
</script>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>
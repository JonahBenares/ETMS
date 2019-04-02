<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
 <!-- MAIN CONTENT-->
<div class="m-t-30">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-6 offset-lg-3">
                    <div class="card bor-radius shadow">
                        <form action="<?php echo base_url(); ?>index.php/report/insert_assign" method="POST">
                            <div class="card-body card-block">
                                <div class=" m-l-20 m-t-20 m-r-20 m-b-20">
                                    <table width="100%">
                                        <tr>
                                            <td width="20%"><label for="" class="control-label mb-1">Item Name</label></td>
                                            <td width="5%">:</td>
                                            <!-- <td><h4 class="control-label mb-1" style="color:#18a2b8;text-transform: uppercase"> Item Name</h4></td> -->
                                            <td><input class="control-label mb-1" name = "item" style="color:#18a2b8;text-transform: uppercase;font-weight:bold;font-size:19px" value = "<?php echo $item;?>" readonly=""></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="" class="control-label mb-1">Issued Date</label></td>
                                            <td width="5%">:</td>
                                            <td><label for="" class="control-label mb-2"><input type="date" name = "iss_date" class="form-control bor-radius10"></label></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="" class="control-label mb-1">Assign To:</label></td>
                                            <td width="5%">:</td>
                                            <td>
                                                <label for="" class="control-label mb-1">
                                                    <input type="text" id = "rec" name = "assigned" class="form-control bor-radius10" autocomplete="off">
                                                    <span id="suggestion-receivedby"></span>
                                                    <input type="hidden" name="rec_id" id="rec_id">
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="" class="control-label mb-1">Quantity</label></td>
                                            <td width="5%">:</td>
                                            <td><label for="" class="control-label mb-1"><input type="number" name = "qty" class="form-control bor-radius10" value = "<?php echo $qty;?>"></label></td>
                                        </tr>
                                    </table>
                                    <div class="form-group">
                                        <label for="" class="control-label mb-1">Remarks:</label>
                                        <textarea name="remarks" rows="3" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <center>
                                    <input type = "submit" class="btn btn-info btn-sm bor-radius10 btn-block" placeholder="Save" value="Save"> 
                                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                    <input type = "hidden" name = "et_id" value="<?php echo $et_id;?>">
                                    <input type="hidden" name="user_id" value = "<?php echo $_SESSION['user_id'];?>">
                                </center>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
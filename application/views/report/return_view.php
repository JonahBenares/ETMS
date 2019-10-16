<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
 <!-- MAIN CONTENT-->
<div class="m-t-15">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-12 ">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <!-- <a onclick="history.go(-1);" class="btn btn-default"><span class="fa fa-arrow-left"></span></a> -->
                            <strong>RETURN</strong> Equipment / Tools
                        </div>
                        <form action="<?php echo base_url(); ?>index.php/report/insert_return" method="POST">
                            <div class="card-body card-block">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <label for="" class="control-label mb-1">Return Date:</label>
                                        <input id="date" name="date" type="date" onChange="chooseArs();" class="form-control bor-radius5" required>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <label for="" class="control-label mb-1">ARS No.:</label>
                                        <select id="ars" name="ars_no" type="text" class="form-control bor-radius5" readonly style = "pointer-events:none;-webkit-appearance: none;" >                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <label for="" class="control-label mb-1">Received by:</label>
                                        <input id="rec" name="text" type="text" class="form-control bor-radius5" autocomplete="off" required>
                                        <span id="suggestion-receivedby"></span>
                                        <input type="hidden" name="rec_id" id="rec_id" >
                                    </div>
                                     <div class="col-lg-6 col-md-6">
                                        <label for="" class="control-label mb-1">Change Location:</label>
                                        <table width="100%">
                                            <tr>
                                                <td width="10%"><input id="changeloc" name="changeloc" type="checkbox" class="form-control" style="width: 0%" value='1'></td>
                                                <td width="90%">
                                                    <select class = "form-control" name = "location_id">
                                                        <option value="">--Select Location--</option>
                                                        <?php foreach($location AS $loc){ ?>
                                                        <option value="<?php echo $loc->location_id; ?>"><?php echo $loc->location_name; ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                        <!-- <div class = "row">
                                            <div class = "col-lg-3">
                                                <input id="changeloc" name="changeloc" type="checkbox" class="" value='1'>
                                            </div>
                                            <div class = "col-lg-3">
                                                <select class = "">
                                                    <option></option>
                                                </select>
                                            </div>
                                        </div> -->
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <label for="" class="control-label mb-1">Remarks:</label>
                                        <textarea class="form-control" name = "remarks" cols="10" rows="5"></textarea>
                                    </div>
                                </div>

                                
                                <br>
                                <table class="table table-hover table-bordered">
                                    <thead>       
                                        <th><input type="checkbox" onClick="toggle_multi(this)" style="margin: 0px"></th>
                                        <th>Item Name</th>
                                        <th>Serial No.</th>
                                        <th>Asset Control Number</th>
                                        <th>Brand</th>
                                        <th>Model</th>
                                        <th>Type</th>
                                    </thead>
                                    <?php $x=0; foreach($details AS $det){ ?>
                                    <tr>       
                                        <td><input type="checkbox" name="edid[]" value=<?php echo $det['ed_id']; ?> class="multi" style="margin: 0px"></td>
                                        <td><?php echo $det['item'];?></td>
                                        <td><?php echo $det['serial_no'];?></td>
                                        <td><?php echo $det['asset_control_no'];?></td>
                                        <td><?php echo $det['brand'];?></td>
                                        <td><?php echo $det['model'];?></td>
                                        <td><?php echo $det['type'];?></td>
                                    </tr>
                                    <?php $x++; } ?>
                                </table>
                            </div>
                            <div class="card-footer">
                                <center>
                                    <input type = "submit" class="btn btn-info btn-sm bor-radius10 btn-block" placeholder="Save" value="Return">
                                    <input type = "hidden" name = "et_id" value="<?php echo $et_id;?>">
                                    <input type = "hidden" id = "ids" name = "id" value="<?php echo $id;?>">
                                    <input type="hidden" id="count" name="count" class="form-control" value = "<?php echo $x;?>">
                                    <input type="hidden" name="user_id" value = "<?php echo $_SESSION['user_id'];?>">
                                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                </center>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
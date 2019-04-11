<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <a><h4 class="m-l-5 m-b-10">Damaged E/T </h4></a>                   
                        </div>
                        <form  action="<?php echo base_url(); ?>index.php/repair/insert_redirect" method="POST">
                            <div class="table--no-card m-b-1" >
                                <table class="table table-borderless table-striped table-earning dataTable no-footer">
                                    <thead>
                                        <tr>
                                            <th align="center" width="1%"><input type="checkbox" onClick="toggle_multi(this)"></th>
                                            <th>Asset Control No.</th>
                                            <th>Item Description</th>
                                            <th>Category</th>
                                            <th>Brand</th>
                                            <th>Model</th>
                                            <th>Serial No.</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(!empty($damage)){ $x=0; foreach($damage as $d){ ?>
                                        <tr>
                                            <!-- <td align="center" hidden><input type="text" class="multi" name="etid[]" value=<?php echo $d['et_id']; ?>></td> -->
                                            <td align="center"><input type="checkbox" class="multi" name="edid[]" value=<?php echo $d['ed_id']; ?>></td>
                                            <td><?php echo $d['asset_control'];?></td>
                                            <td><?php echo $d['et_desc'];?></td>
                                            <td><?php echo $d['category'];?></td>
                                            <td><?php echo $d['brand'];?></td>
                                            <td><?php echo $d['model'];?></td>
                                            <td><?php echo $d['serial_no'];?></td>
                                            <td><?php if($d['beyond_repair']==1){ echo 'Beyond Repair';}else if($d['repair']==1){ echo 'Repaired'; }?></td>
                                        </tr>
                                        <?php $x++; } }?>                                        
                                    </tbody>
                                </table>
                                 <input type = "submit" class="btn btn-primary btn-block  btn-md" value = "Repair">
                                    
                            </div>
                            <!-- <div class="row">
                                <div style="position: fixed; z-index: 3;bottom:0px;width: 100%">
                                    < <button type = "submit" class="btn btn-primary btn-block  btn-md"><span class="fa fa-wrench"></span> Repair</button> 
                                    <input type = "submit" class="btn btn-primary btn-block  btn-md" value = "Repair">
                                    <a href="<?php echo base_url(); ?>index.php/repair/repair_form" class="btn btn-primary btn-block  btn-md"><span class="fa fa-wrench"></span> Repair</a>
                                </div>
                            </div> -->
                            <input type="hidden" id="count" name="count" class="form-control" value = "<?php echo $x;?>">
                            <input type="hidden" name="user_id" value = "<?php echo $_SESSION['user_id'];?>">
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
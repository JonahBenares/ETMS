
 <!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-6 offset-lg-3">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a onclick="history.go(-1);" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <strong>UPDATE</strong> Physical Condition
                        </div>
                        <form action="<?php echo base_url(); ?>index.php/masterfile/update_physical" method="POST">
                            <div class="card-body card-block">
                                <label for="" class="control-label mb-1">Physical Condition:</label>
                                <?php foreach($physical AS $dep){ ?>  
                                <input id="" name="condition" type="text" value = "<?php echo $dep->condition_name;?>"  class="form-control bor-radius5" placeholder="">
                            </div>
                            <div class="card-footer">
                                <center>
                                    <input type = "submit" class="btn btn-info btn-sm bor-radius10 btn-block" placeholder="Update" value="update">
                                    <input type = "hidden" name = "physical_id" value="<?php echo $id; ?>">
                                </center>
                            </div>
                            <?php } ?>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <p>Copyright © <script>document.write(new Date().getFullYear())</script> Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
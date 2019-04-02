
 <!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-12 ">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <!-- <a onclick="history.go(-1);" class="btn btn-default"><span class="fa fa-arrow-left"></span></a> -->
                            <strong>Assign</strong> Equipment / Tools
                        </div>
                        
                        <form action="" method="POST">
                            <div class="card-body card-block">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <label for="" class="control-label mb-1">Employee :</label>
                                        <input id="date" name="date" type="text" class="form-control bor-radius5" required>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <label for="" class="control-label mb-1">AAF No.:</label>
                                        <input id="ars" name="ars_no" type="text" class="form-control bor-radius5" >
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4">
                                        <label for="" class="control-label mb-1">Position:</label>
                                        <input id="rec" name="text" type="text" class="form-control bor-radius5" autocomplete="off" required>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <label for="" class="control-label mb-1">Department:</label>
                                        <input id="rec" name="text" type="text" class="form-control bor-radius5" autocomplete="off" required>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <label for="" class="control-label mb-1">Date Issued:</label>
                                        <input id="rec" name="text" type="text" class="form-control bor-radius5" autocomplete="off" required>
                                    </div>
                                </div>

                                <a href="#" class="btn btn-success bor-radius m-t-10 m-b-10 " data-toggle="modal" data-target="#mediumAssign">
                                    Add Item
                                </a>

                                <table class="table table-hover table-bordered">
                                    <thead>       
                                        <th>Asset #</th>
                                        <th>Acq Date</th>
                                        <th>Item Desc</th>
                                        <th>Qty</th>
                                        <th>UOM</th>
                                        <th>UC</th>
                                        <th>Total</th>
                                        <th>
                                            <center><span class="fa fa-bars"></span></center>
                                        </th>
                                    </thead>
                                    <tr>       
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="card-footer">
                                <center>
                                    <input type = "submit" class="btn btn-info btn-sm bor-radius10 btn-block" placeholder="Save" value="Assign">
                                </center>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- modal -->
<div class="modal fade" id="mediumAssign" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method = "POST" action="<?php echo base_url();?>index.php/masterfile/insert_department">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="" class="control-label mb-1">Item Description:</label>
                        <input id="" name="department" type="text" class="form-control bor-radius5" placeholder="">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-block">Add</button>
                </div>                                        
            </form>
        </div>
    </div>
</div>
<!-- modal -->
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
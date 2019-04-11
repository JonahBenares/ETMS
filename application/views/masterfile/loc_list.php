 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <a><h4 class="m-l-5 m-b-10">Location</h4></a>
                            <a href="#" class="btn btn-primary bor-radius pull-right" data-toggle="modal" data-target="#mediumModal">
                                <span class="fa fa-plus" ></span>
                            </a>
                            <!-- --modal-- -->
                            <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="mediumModalLabel">Add New Location</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form method = "POST" action="<?php echo base_url();?>index.php/masterfile/insert_location">
                                                <div class="form-group">
                                                    <label for="" class="control-label mb-1">Location:</label>
                                                    <input id="" name="location" type="text" class="form-control bor-radius5" placeholder="">
                                                    <label for="" class="control-label mb-1">Location Perfix:</label>
                                                    <input id="" name="prefix" type="text" class="form-control bor-radius5" placeholder="">
                                                </div>
                                                <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                <button type="submit" class="btn btn-primary">Add</button>
                                            </div>
                                            </form>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <!-- --modal-- -->                            
                        </div>
                        <div class=" table--no-card m-t-10 m-b-10" id="table_peret">                            
                            <table class="table table-borderless table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th width="1%" class="text-center"><span class="fa fa-bars"></span></th>
                                        <th>Location</th>
                                        <th>Location Prefix</th>
                                    </tr>
                                </thead>
                                <?php foreach($location as $loc){ ?>
                                    <tr>
                                        <td>                                            
                                            <div class="table-data-feature">
                                                <a href="<?php echo base_url(); ?>index.php/masterfile/loc_update/<?php echo $loc->location_id ?>" class="btn btn-info item btn-sm" data-toggle="tooltip" data-placement="top" title="Update">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <a href="<?php echo base_url(); ?>index.php/masterfile/delete_location/<?php echo $loc->location_id;?>" onclick="confirmationDelete(this);return false;" class="btn btn-danger item btn-sm" data-toggle="tooltip" data-placement="top" title="Delete" title="Delete" alt='Delete'>
                                                    <i class="fa fa-trash"></i>
                                                </a>
                                            </div>
                                        </td>
                                        <td><?php echo $loc->location_name;?></td>
                                        <td><?php echo $loc->location_prefix;?></td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                      
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
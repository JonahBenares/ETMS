 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <a><h4 class="m-l-5 m-b-10">Physical Condition</h4></a>
                            <a href="#" class="btn btn-primary bor-radius pull-right" data-toggle="modal" data-target="#mediumModal">
                                <span class="fa fa-plus" ></span>
                            </a>
                            <!-- --modal-- -->
                            <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="mediumModalLabel">Add New Physical Condition</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form method = "POST" action="<?php echo base_url();?>index.php/masterfile/insert_physical">
                                                <div class="form-group">
                                                    <label for="" class="control-label mb-1">Physical Condition:</label>
                                                    <input id="" name="condition" type="text" class="form-control bor-radius5" placeholder="">
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
                                        <th>Physical Condition</th>
                                    </tr>
                                </thead>
                                <?php foreach($physical AS $dep){ ?>
                                    <tr>
                                        <td>                                            
                                            <div class="table-data-feature">
                                                <a href="<?php echo base_url(); ?>index.php/masterfile/physical_update/<?php echo $dep->physical_id?>" class="btn btn-info item btn-sm" data-toggle="tooltip" data-placement="top" title="Update">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <a href="<?php echo base_url(); ?>index.php/masterfile/delete_physical/<?php echo $dep->physical_id;?>" onclick="confirmationDelete(this);return false;" class="btn btn-danger item btn-sm" data-toggle="tooltip" data-placement="top" title="Delete" title="Delete" alt='Delete'>
                                                    <i class="fa fa-trash"></i>
                                                </a>
                                            </div>
                                        </td>
                                        <td><?php echo $dep->condition_name;?></td>
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
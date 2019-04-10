<script type="text/javascript">
    function viewCat(cat_id){
        window.open('<?php echo base_url(); ?>index.php/masterfile/add_subcat/'+cat_id, '_blank', 'top=50px,left=350px,width=600,height=500');
    }
</script>
<script src="<?php echo base_url(); ?>assets/js/jquery-1.9.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/masterfile.js"></script>
 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <a><h4 class="m-l-5 m-b-10">Category</h4></a>
                            <div class="pull-right">
                                <a href="#" class="btn btn-primary bor-radius" data-toggle="modal" data-target="#mediumModal">
                                    <span class="fa fa-file-text" ></span>
                                </a>

                                <a href="#" class="btn btn-primary bor-radius" data-toggle="modal" data-target="#subcatModal">
                                    <span class="fa fa-plus" ></span>
                                </a>
                            </div>
                            <!-- --modal-- -->
                            <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-slg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="mediumModalLabel">Category List with Sub Category</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <table class="table table-hover table- shadow" id="item_table">
                                                <thead>
                                                    <tr>
                                                        <th width="40%">Category Name</th>
                                                        <th width="10%">Prefix</th>
                                                        <th>Description</th>
                                                        <th width="5%"><span class="fa fa-bars"></span></th>
                                                    </tr>                               
                                                </thead>
                                                <tbody>
                                                    <?php foreach($category AS $cat){ ?>
                                                    <tr style="background:#f9e065">                                                     
                                                        <td><b><?php echo $cat->category_name; ?></b></td>
                                                        <td></td>
                                                        <td></td>                                                                
                                                        <td></td>                                                                
                                                    </tr>
                                                    <?php 
                                                        foreach($subcat AS $sub){ 
                                                            switch($sub){
                                                                case($cat->category_id == $sub['category_id']): 
                                                     ?>
                                                    <tr>
                                                        <td style = "text-indent:40px;"><?php echo $sub['subcat_name'];?></td>    
                                                        <td><?php echo $sub['subcat_prefix']." - ".$sub['location'];?></td>
                                                        <td><?php echo $sub['subcat_desc']?></td>
                                                        <td>
                                                            <a href="#" class="btn btn-primary btn-xs bor-radius" data-id="<?php echo $sub['subcat_id']; ?>" data-toggle="modal" id='getSub' data-target="#subcatModal1">
                                                                <span class="fa fa-edit" ></span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php   
                                                        break;
                                                        default: 
                                                        } } }
                                                    ?>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th>Category Name</th>
                                                        <th>Prefix</th>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="subcatModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="mediumModalLabel">Add New Category</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form method="POST" action = "<?php echo base_url();?>index.php/masterfile/insert_category">
                                                <div class="form-group">
                                                    <label for="" class="control-label mb-1">Category:</label>
                                                    <input id="" name="category" type="text" class="form-control bor-radius5" placeholder="">
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

                            <div class="modal fade" id="subcatModal1" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="mediumModalLabel">Update Subcategory</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form method="POST" action = "<?php echo base_url();?>index.php/masterfile/update_subcategory">
                                                <div class="form-group">
                                                    <div id = 'subcat'></div>
                                                </div>
                                                <div class="modal-footer">
                                                <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                <button type="submit" class="btn btn-primary">Update</button>
                                            </div>
                                            </form>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <!-- --modal-- -->                            
                        </div>
                        <div class="table--no-card m-t-10 m-b-10" id="table_peret">
                            <table class="table table-borderless table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th width="1%" class="text-center"><span class="fa fa-bars"></span></th>
                                        <th>Category</th>
                                    </tr>
                                </thead>
                                    <?php foreach($category AS $cat){ ?>
                                    <tr>
                                        <td>                                            
                                            <div class="table-data-feature">
                                                <a class="btn btn-success item btn-sm text-white" onClick="viewCat(<?php echo $cat->category_id;?>)" title = "ADD">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                                <a href="<?php echo base_url(); ?>index.php/masterfile/categ_update/<?php echo $cat->category_id?>" class="btn btn-info item btn-sm" data-toggle="tooltip" data-placement="top" title="Update">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <!-- <a href="<?php echo base_url(); ?>index.php/masterfile/delete_category/<?php echo $cat->category_id;?>" onclick="confirmationDelete(this);return false;" class="btn btn-danger item btn-sm" data-toggle="tooltip" data-placement="top" title="Delete" title="Delete" alt='Delete'>
                                                    <i class="fa fa-trash"></i>
                                                </a> -->
                                            </div>
                                        </td>
                                        <td><?php echo $cat->category_name?></td>
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
<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
<div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="largeModalLabel"><span class="fa fa-filter"></span>  Filter</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method='POST' action="<?php echo base_url(); ?>index.php/report/search_inv_overall/">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <table width="100%">
                                <tr>
                                    <td><p>Acquired Date (from):</p>
                                        <input type="date" id="acdfrom" name="from" class="form-control bor-radius10" >
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Category:</p>
                                       <select name="category" class="form-control bor-radius5" id="category" onChange="chooseCategory();">
                                         <option value=''>-- Select Category --</option>
                                           <?php 
                                                foreach ($cat AS $cat) {
                                            ?>
                                            <option value="<?php echo $cat->category_id; ?>"><?php echo $cat->category_name;?></option>
                                            <?php } ?>
                                     </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Sub Category:</p>
                                         <select id="subcat" name="subcat" class="form-control bor-radius5"></select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Office/Department:</p>
                                        <input type="text" id="department" name="department" class="form-control bor-radius10">
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Item Description:</p>
                                        <input type="text" id="item" name="item" class="form-control bor-radius10">
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Physical Condition :</p>
                                        <input type = "text" name="condition" class="form-control bor-radius5">
                                    </td>
                                </tr> 
                                <tr>
                                    <td><p>Placement :</p>
                                        <select name="placement" class="form-control bor-radius5">
                                            <option value=''>-- Select Placement --</option>
                                           <?php 
                                                foreach ($placement AS $p) {
                                            ?>
                                            <option value="<?php echo $p->placement_id; ?>"><?php echo $p->placement_name;?></option>
                                            <?php } ?>
                                        </select>
                                    </td>
                                </tr>                                                           
                            </table>
                        </div>
                        <div class="col-lg-6">
                            <table width="100%">
                                <tr>
                                    <td><p>Acquired Date (to):</p>
                                        <input type="date" id="acdfrom" name="to" class="form-control bor-radius10" >
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Brand:</p>
                                        <input type="text" id="brand" name="brand" class="form-control bor-radius10">
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Model:</p>
                                        <input type="text" id="model" name="model" class="form-control bor-radius10">
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Type:</p>
                                        <input type="text" id="item_type" name="item_type" class="form-control bor-radius10">
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Serial No. :</p>
                                        <input type="text" id="serial_no" name="serial_no" class="form-control bor-radius10">
                                    </td>
                                </tr>
                                <tr>
                                    <td><p>Company :</p>
                                        <select name="company" class="form-control bor-radius5">
                                            <option value=''>-- Select Company --</option>
                                           <?php 
                                                foreach ($company1 AS $r) {
                                            ?>
                                            <option value="<?php echo $r->company_id; ?>"><?php echo $r->company_name;?></option>
                                            <?php } ?>
                                        </select>
                                    </td>
                                </tr> 
                                <tr>
                                    <td><p>Damage</p><input type="checkbox" name="damage" id="damage" value='1'></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-success btn-sm btn-block bor-radius" value='Filter'>
                </div>
                 <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
            </form>
        </div>
    </div>
</div>
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-12">
                    <center>
                        <div class="m-b-10 btn-group">
                            <a href="<?php echo base_url(); ?>index.php/report/report_main" class="btn btn-info btn-sm"><span class="fa fa-bars"></span></a>
                            <a href="<?php echo base_url(); ?>index.php/report/inv_rep" class="btn btn-primary btn-sm">per Sub Category</a>
                            <a href="<?php echo base_url(); ?>index.php/report/inv_rep_itm" class="btn btn-primary btn-sm active">per Item</a>
                            <a href="<?php echo base_url(); ?>index.php/report/inv_rep_overall" class="btn btn-warning btn-sm active" style ="color:white;">Overall Item Report</a>
                        </div>
                    </center>
                    <hr>
                    <div class="card bor-radius20 shadow">
                        <div class="card-header">   
                            <?php if(!empty($filt)){ ?>
                            <a href = "<?php echo base_url(); ?>index.php/report/export_overall/<?php echo $from;?>/<?php echo $to;?>/<?php echo $category;?>/<?php echo $subcat;?>/<?php echo $department;?>/<?php echo $item;?>/<?php echo $brand;?>/<?php echo $model;?>/<?php echo $item_type;?>/<?php echo $serial_no;?>/<?php echo $damage;?>/<?php echo $condition;?>/<?php echo $plac;?>/<?php echo $company;?>" class="btn btn-sm btn-warning pull-right" style ="color:white;"><span class="fa fa-report"></span>Export to Excel</a>

                            <a href = "<?php echo base_url(); ?>index.php/report/report_print_overall/<?php echo $from;?>/<?php echo $to;?>/<?php echo $category;?>/<?php echo $subcat;?>/<?php echo $department;?>/<?php echo $item;?>/<?php echo $brand;?>/<?php echo $model;?>/<?php echo $item_type;?>/<?php echo $serial_no;?>/<?php echo $damage;?>/<?php echo $condition;?>/<?php echo $plac;?>/<?php echo $company;?>" class="btn btn-sm btn-primary pull-right"><span class="fa fa-print"></span> Print</a>
                            <?php }else { ?>
                            <a href = "<?php echo base_url(); ?>index.php/report/export_overall" class="btn btn-sm btn-warning pull-right active" style ="color:white;"><span class="fa fa-report"></span>Export to Excel</a>
                            
                            <a href = "<?php echo base_url(); ?>index.php/report/report_print_overall" target="_blank" class="btn btn-sm btn-primary pull-right"><span class="fa fa-print"></span> Print</a>
                            <?php } ?>
                            <button type="button" class="btn btn-sm btn-info pull-right" data-toggle="modal" data-target="#largeModal">
                                <span class="fa fa-filter"></span> Filter
                            </button>
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <a><h4 class="m-l-5 m-b-10">Overall Report</h4></a>
                        </div>
                        <div class="card-body" >                            
                            <div class="m-t-1">
                                <?php if(!empty($filt)){?>     
                                <div class='sufee-alert alert with-close alert-success fade show m-l-30 m-r-30'><span class='btn btn-success disabled'>Filter Applied</span><?php echo $filt ?>, <a href='<?php echo base_url(); ?>index.php/report/inv_rep_overall' class='remove_filter alert-link pull-right btn'><span class="fa fa-times"></span></a></div>                    
                                <?php } ?>

                                <?php if(!empty($details)){ ?>
                                <table class="table table-borderless table-striped table-earning " id="myTable_peremp" width = "100%">
                                    <thead>
                                        <tr>
                                            <th>Item Description</th>
                                            <th>Qty</th>
                                            <th>Price</th>
                                            <th>Category</th>
                                            <th>Subcategory</th>
                                            <th>Department</th>
                                            <th>Status / Accountability</th>
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <?php 
                                            foreach($details AS $i){ 
                                                if($i['accountability_id']!=0 && $i['borrowed']==0){
                                                    $status = $i['employee'];
                                                }else if($i['accountability_id']==0 && $i['damaged']==0 && $i['change_location']==0){
                                                    $status = '<span style = "color:green;">Available</span>';
                                                }else if($i['accountability_id']==0 && $i['change_location']==1){
                                                    $status = "Moved to ".$i['location'];
                                                }else if($i['borrowed']==1){
                                                    $status = '<span style = "color:blue;">Borrowed</span>';
                                                }else if($i['damaged']==1){
                                                    $status = '<span style = "color:red;">Damaged</span>';
                                                }
                                        ?>

                                        <tr>
                                            <td><?php echo $i['item']; ?></td>
                                            <td align="center"><?php echo $i['qty']; ?></td>
                                            <td align="center"><?php echo $i['unit_price']; ?></td>
                                            <td><?php echo $i['category']; ?></td>
                                            <td><?php echo $i['subcategory']; ?></td>
                                            <td><?php echo $i['department']; ?></td>
                                            <td align="center"><?php echo $status; ?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>                           
                                </table>
                                <?php } ?>
                            </div>
                        </div>
                        
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
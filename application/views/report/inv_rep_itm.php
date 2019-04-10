<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-8 offset-lg-2">
                    <center>
                        <div class="m-b-10 btn-group">
                            <a href="<?php echo base_url(); ?>index.php/report/report_main" class="btn btn-info btn-sm"><span class="fa fa-bars"></span></a>
                            <a href="<?php echo base_url(); ?>index.php/report/inv_rep" class="btn btn-primary btn-sm">per Sub Category</a>
                            <a href="<?php echo base_url(); ?>index.php/report/inv_rep_itm" class="btn btn-primary btn-sm active">per Item</a>
                        </div>
                    </center>
                    <hr>
                    <div class="card bor-radius20 shadow">
                        <div class="card-header">
                            <form method='POST' action="<?php echo base_url(); ?>index.php/report/search_inv_itm/">                          
                                <div class="bor-radius100 btn-group btn-block ">
                                    <a onclick="history.go(-1);" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                                    <input id="item" name="item" type="text" class="form-control" placeholder="Enter Item Name" autocomplete="off">
                                    <select name="set" class="form-control">
                                        <option value = ''>--Select Set Name--</option>
                                        <?php foreach($set1 AS $s){ ?>
                                        <option value = '<?php echo $s->set_id?>'><?php echo $s->set_name?></option>
                                        <?php }?>
                                    </select>
                                    <!-- <input type="text" name="" class="form-control " placeholder="Enter Set Name"> -->
                                   <!--  <a href="<?php echo base_url(); ?>index.php/report/inv_rep_det" class="btn btn-primary ">Generate</a> -->
                                    <input type="submit" name="generate" id="generate" class="btn btn-success" value ="Generate">
                                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                    <!-- <input id="items_id" name="items_id" type="hidden" class="form-control"> -->
                                </div>
                            </form>
                        </div>
                        <div class="card-body" >                            
                            <div class="m-t-1">
                                <?php if(!empty($filt)){?>     
                                <div class='sufee-alert alert with-close alert-success fade show m-l-30 m-r-30'><span class='btn btn-success disabled'>Filter Applied</span><?php echo $filt ?>, <a href='<?php echo base_url(); ?>index.php/report/inv_rep_itm' class='remove_filter alert-link pull-right btn'><span class="fa fa-times"></span></a></div>                    
                                <?php } ?>
                                <table class="table table-borderless table-striped table-earning " id="myTable_peremp">
                                    <thead>
                                        <tr>
                                            <th>Item Name</th>
                                            <th>Set Name</th>
                                            <th align="center">Available</th>
                                            <th align="center">In-Use</th>
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <?php foreach($itema AS $i){ ?>
                                        <tr>
                                            <td> 
                                                <a href="<?php echo base_url(); ?>index.php/report/inv_report_itm/<?php echo $i['item_id'];?>/<?php echo $i['set_id'];?>" class="btn btn-link" style="white-space: normal!important;text-align: left" data-toggle="tooltip" data-placement="right" title="View">
                                                   <?php echo $i['item']; ?>
                                                </a>           
                                            </td>
                                            <td><?php echo $i['set']; ?></td>
                                            <td align="center"><?php echo $i['avcount']; ?></td>
                                            <td align="center"><?php echo $i['incount']; ?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>                           
                                </table>
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
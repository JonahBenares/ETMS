<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-8 offset-lg-2">
                    <div class="card bor-radius20 shadow">
                        <div class="card-header">
                            <form method='POST' action="<?php echo base_url(); ?>index.php/report/generateSubcat/">                          
                                <div class="bor-radius100 btn-group btn-block ">
                                    <a onclick="history.go(-1);" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                                    <!-- <input type="text" name="" class="form-control " placeholder="Enter Sub Category Name"> -->
                                    <select name = "subcat" class = "form-control">
                                        <?php foreach($subcat1 AS $s){ ?>
                                            <option value = "<?php echo $s->subcat_id;?>"><?php echo $s->subcat_name;?></option>
                                        <?php } ?>
                                    </select>
                                   <!--  <a href="<?php echo base_url(); ?>index.php/report/inv_rep_det" class="btn btn-primary ">Generate</a> -->
                                    <input type="submit" name="generate" id="generate" class="btn btn-primary" value ="Generate">
                                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                </div>
                            </form>
                        </div>
                        <div class="card-body" >                            
                            <div class="m-t-1">
                                <?php if(!empty($subcatid)){?>     
                                <div class='sufee-alert alert with-close alert-success fade show m-l-30 m-r-30'><span class='btn btn-success disabled'>Filter Applied</span><?php echo $filts ?>, <a href='<?php echo base_url(); ?>index.php/report/inv_rep' class='remove_filter alert-link pull-right btn'><span class="fa fa-times"></span></a></div>                    
                                <?php } ?>
                                <table class="table table-borderless table-striped table-earning " id="myTable_peremp">
                                    <thead>
                                        <tr>
                                            <th>Sub Category Name</th>
                                            <th width="20%">Count</th>
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <?php 
                                            if(!empty($sub)){
                                                foreach($sub AS $s){
                                        ?>
                                        <tr>
                                            <td> 
                                                <a href="<?php echo base_url(); ?>index.php/report/inv_rep_det/<?php echo $s['subcat_id'];?>" class="btn btn-link" data-toggle="tooltip" data-placement="right" title="View">
                                                   <?php echo $s['subcat'];?>
                                                </a>           
                                            </td>
                                            <td><?php echo $s['count'];?></td>
                                        </tr>
                                        <?php } }?>
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
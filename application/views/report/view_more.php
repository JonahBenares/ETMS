<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<!-- <script src="<?php echo base_url(); ?>assets/js/encode.js"></script> -->
 <!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <!-- <div class="row">
               <br>
            </div> -->
            <div class="row">                
                <div class="col-lg-10 offset-lg-1" >
                    <button onclick="history.go(-1);" class="btn btn-warning text-white"><p>Back</p></button>
                    <div class="card bor-radius20 shadow">
                        <div class="p-t-50 p-l-50 p-b-50 p-r-50">
                            <table width="100%">
                            <?php foreach($view AS $v){ ?>
                                <tr>
                                    <td colspan="4"><h2><?php echo $v['et_desc'];?>
                                    <div class="btn-group">
                                        <button class="overview-item--c4 bor-radius100rem btn btn-sm btn-success"><b><?php echo $v['qty'];?></b></button>
                                        <button class="overview-item--c2 bor-radius100rem btn btn-sm btn-success"><b> <?php echo $v['unit'];?></b></button>
                                    </div> 
                                    <?php if($damage == '1'){ ?>
                                    <button class="btn btn-danger btn-sm animated headShake">Damaged</button>
                                    <?php } ?>
                                    </h2>
                                    </td>

                                </tr>
                                <tr>
                                    <td width="15%">Category:</td>
                                    <td width="35%"><?php echo $v['category'];?></td>
                                    <td width="15%">Sub-Category:</td>
                                    <td width="35%"><?php echo $v['subcat'];?></td>
                                </tr>
                                <tr>
                                    <td>Accountability:</td>
                                    <td><?php echo $v['accountability'];?></td>
                                    <td>Department:</td>
                                    <td><?php echo $v['department'];?></td>
                                </tr>
                            <?php } ?>
                            </table>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="row">
            <?php if(!empty($details)){ foreach($details AS $det){ ?>
                <div class="col-lg-10 offset-lg-1">
                    <div class="card bor-radius20 shadow encode_css ">
                        <div class="p-t-20 p-l-20 p-b-20 p-r-20">
                            <table  width="100%">
                                <tr>
                                    <td width="15%">Acquisition Date</td>
                                    <td width="20%">: <?php echo $det['acquisition_date'];?></td>
                                    <td width="10%">Date Issued</td>
                                    <td width="20%" >: <?php echo $det['date_issued'];?></td>
                                    <td width="15%">Asset Control #</td>
                                    <td width="20%">: <?php echo $det['asset_control_no'];?></td>
                                </tr>
                                <tr>
                                    <td>Brand</td>
                                    <td>: <?php echo $det['brand'];?></td>
                                    <td>Model</td>
                                    <td>: <?php echo $det['model'];?></td>
                                    <td>Type</td>
                                    <td>: <?php echo $det['type'];?></td>
                                </tr>
                                <tr>
                                    <td>Serial Number</td>
                                    <td>: <?php echo $det['serial_no'];?></td>
                                    <td>Unit Price</td>
                                    <td>: <?php if($det['set_id']==0){ echo $det['unit_price']."<small> ".$det['currency']."</small>"; }?></td>
                                    <td>Physical Condition</td>
                                    <td>: <?php echo $det['physical_condition']?></td>
                                </tr>
                                <tr>
                                    <td>Supplier</td>
                                    <td>: <?php echo $det['acquired_by'];?></td>
                                    <td>Company</td>
                                    <td>: <?php echo $det['company'];?></td>
                                    <td>Rack</td>
                                    <td>: <?php echo $det['rack'];?></td>
                                </tr>
                                <tr>
                                    <td>Remarks</td>
                                    <td colspan="5">:  <?php echo $det['remarks'];?></td>
                                </tr>
                            </table>
                            <div>
                                <div class="col-lg-4 float-col">
                                    <label for="pic<?php echo $count;?>">Picture 1:</label>
                                   
                                    <div class="thumbnail">
                                        <img id="pic1_<?php echo $x; ?>" class="pictures" src="<?php echo (empty($det['picture1']) ? base_url().'assets/default/default-img.jpg' : base_url().'uploads/'.$det['picture1']); ?>" alt="your image" />
                                    </div>
                                    <!-- <div id="img-check-none1-<?php echo $x?>" class="alert alert-danger">
                                      <center><small><strong>Warning:</strong> Image too big. Upload images less than 5mb.</small></center>
                                    </div> -->
                                    <!-- <span id="img1-check" class='img-check-note'></span> -->
                                </div> 
                                <div class="col-lg-4 float-col">
                                    <label for="pic1">Picture 2:</label>
                                    
                                    <div class="thumbnail">
                                        <img id="pic2_<?php echo $x; ?>" class="pictures" src="<?php echo (empty($det['picture2']) ? base_url().'assets/default/default-img.jpg' : base_url().'uploads/'.$det['picture2']); ?>" alt="your image" />
                                    </div>
                                    <!-- <div id="img-check-none2-<?php echo $x;?>" class="alert alert-danger">
                                      <center><small><strong>Warning:</strong> Image too big. Upload images less than 5mb.</small></center>
                                    </div> -->
                                </div>
                                <div class="col-lg-4 float-col">
                                    <label for="pic1">Picture 3:</label>
                                    
                                    <div class="thumbnail">
                                        <img id="pic3_<?php echo $x; ?>" class="pictures" src="<?php echo (empty($det['picture3']) ? base_url().'assets/default/default-img.jpg' : base_url().'uploads/'.$det['picture3']); ?>" alt="your image" />
                                    </div>
                                    <!-- <div id="img-check-none3-<?php echo $x;?>" class="alert alert-danger">
                                      <center><small><strong>Warning:</strong> Image too big. Upload images less than 5mb.</small></center>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } } ?>
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
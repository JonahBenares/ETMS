<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/encode.js"></script>
<script type="text/javascript">
    
</script>
 <!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-10 offset-lg-1">
                    <div class="card bor-radius20 shadow">
                        <div class="card-header" >
                            <form action="<?php echo base_url(); ?>index.php/encode/insert_details" method="POST" enctype="multipart/form-data">
                            <!-- <a href="#" class="btn btn-default"><span class="fa fa-arrow-left"></span></a> -->
                            <table width="100%">
                                <?php foreach($head AS $h){ ?>
                                <tr>
                                    <td colspan="4"><h2><?php echo $h['item']?> 
                                    <input type="hidden" name="item_name" value = "<?php echo $h['item']?>">
                                    <div class="btn-group">
                                        <button readonly class="overview-item--c4 bor-radius100rem btn btn-sm btn-success"><b><?php echo $qty;?></b></button>
                                        <button readonly class="overview-item--c2 bor-radius100rem btn btn-sm btn-success"><b> <?php echo $h['unit']?></b></button>
                                    </div>                                    
                                </h2></td>
                                </tr>
                                <tr>
                                    <td width="15%">Category:</td>
                                    <td width="35%"><?php echo $h['cat'];?></td>
                                    <td width="15%">Sub-Category:</td>
                                    <td width="35%"><?php echo $h['subcat'];?></td>
                                </tr>
                                <tr>
                                    <td>Accountability:</td>
                                    <td><?php echo $h['accountability'];?></td>
                                    <td>Dept/Location:</td>
                                    <td><?php echo $h['department'];?></td>
                                </tr>

                                <?php } ?>
                            </table>
                        </div>
                        
                            <div class="card-inset card-body card-block">
                                <?php 
                                    $count = 1; 
                                    $asset = $asset_no;
                                    for($x=1;$x<=$qty;$x++){
                                      
                                       
                                ?>
                                <div class="rows">
                                    <div class="col-lg-12">
                                        <div class="card encode_css">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Acquisition Date:</label>
                                                        <input id="" name="acq_date[]" type="date" class="form-control bor-radius5 cc-exp">
                                                    </div>
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Date Issued:</label>
                                                        <div class="input-group">
                                                            <input id="" name="date_issued[]" class="form-control bor-radius5 cc-cvc" type="date">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <label for="" class="control-label mb-1">Asset Control Number:</label>
                                                        <input id="" name="acn[]" type="text" class="form-control bor-radius5 cc-exp" value = "<?php echo $prefix."-".$location."-".$asset;?>" style = "pointer-events:none;" readonly>
                                                    </div>     
                                                    <div class="col-lg-6">
                                                        <label for="" class="control-label mb-1">Serial Number:</label>
                                                        <input id="" name="sn[]" type="text" class="form-control bor-radius5 cc-exp" >
                                                    </div>
                                                </div>
                                                <div class="row">                                                 
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Brand:</label>
                                                        <input id="" name="brand[]" type="text" class="form-control bor-radius5 cc-exp" >
                                                    </div>
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Model:</label>
                                                        <div class="input-group">
                                                            <input id="" name="model[]" class="form-control bor-radius5 cc-cvc" type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">                                                 
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Type:</label>
                                                        <input id="" name="type[]" type="text" class="form-control bor-radius5 cc-exp" >
                                                    </div>
                                                    <div class="col-3">
                                                        <label for="" class="control-label mb-1">Unit Price:</label>
                                                        <div class="input-group">
                                                            <input id="" name="price[]" class="form-control bor-radius5 cc-cvc" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="col-3">
                                                        <label for="" class="control-label mb-1">Currency:</label>
                                                        <div class="input-group">
                                                            <!-- <input id="" name="cur[]" class="form-control bor-radius5 cc-cvc" type="text"> -->
                                                            <select name="cur[]" class="form-control bor-radius5 cc-cvc">
                                                                <option value = "">--Select Currency--</option>
                                                                <?php foreach($currency AS $c){ ?>
                                                                <option value = "<?php echo $c->currency_id; ?>"><?php echo $c->currency_name;?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row"> 
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Placement:</label>
                                                        <select name="placement[]" class="form-control bor-radius5 cc-cvc">
                                                            <option value = "">--Select Placement--</option>
                                                            <?php foreach($placement AS $p){ ?>
                                                            <option value = "<?php echo $p->placement_id; ?>"><?php echo $p->placement_name;?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>                                                
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Company:</label>
                                                        <select name="company[]" class="form-control bor-radius5 cc-cvc">
                                                            <option value = "">--Select Company--</option>
                                                            <?php foreach($company AS $r){ ?>
                                                            <option value = "<?php echo $r->company_id; ?>"><?php echo $r->company_name;?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row"> 
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Physical Condition:</label>
                                                        <input type="text" name="condition[]" class="form-control bor-radius5 cc-cvc">
                                                        <!-- <select name="condition[]" class="form-control bor-radius5 cc-cvc">
                                                            <option value = "">--Select Physical Condition--</option>
                                                            <?php foreach($condition AS $co){ ?>
                                                            <option value = "<?php echo $co->physical_id; ?>"><?php echo $co->condition_name;?></option>
                                                            <?php } ?>
                                                        </select> -->
                                                    </div>                                                
                                                    <div class="col-6">
                                                        <label for="" class="control-label mb-1">Supplier:</label>
                                                        <input name="acquired_by[]" type="text" class="form-control bor-radius5 cc-exp">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="" class="control-label mb-1">Remarks:</label>
                                                    <textarea name="remarks[]" id="" class="form-control bor-radius5" cols="30" rows="2"></textarea>
                                                </div>
                                                <div class="row border-class shadow" >
                                                    <style type="text/css">
                                                        #img-check-none1-<?php echo $x?>{
                                                            display:none;
                                                        }
                                                         #img-check-none2-<?php echo $x?>{
                                                            display:none;
                                                        }
                                                         #img-check-none3-<?php echo $x?>{
                                                            display:none;
                                                        }
                                                      
                                                    </style>
                                                    <div>
                                                        <div class="col-lg-4 float-col">
                                                            <label for="pic<?php echo $count;?>">Picture 1:</label>
                                                            <input class="form-control"  type="file" name="pic1[]" id="img1_<?php echo $x; ?>" onchange="readPic1(this, <?php echo $x; ?>);">
                                                            <div class="thumbnail">
                                                                <img id="pic1_<?php echo $x; ?>" class="pictures" src="<?php echo base_url() ?>assets/default/default-img.jpg" alt="your image" />
                                                            </div>
                                                            <div id="img-check-none1-<?php echo $x?>" class="alert alert-danger">
                                                              <center><small><strong>Warning:</strong> Image too big. Upload images less than 5mb.</small></center>
                                                            </div>
                                                            <!-- <span id="img1-check" class='img-check-note'></span> -->
                                                        </div> 
                                                        <div class="col-lg-4 float-col">
                                                            <label for="pic1">Picture 2:</label>
                                                            <input class="form-control"  type="file" name="pic2[]" id="img2_<?php echo $x; ?>" data-trigger="<?php echo $count?>" onchange="readPic2(this, <?php echo $x; ?>);">
                                                            <div class="thumbnail">
                                                                <img id="pic2_<?php echo $x; ?>" class="pictures" src="<?php echo base_url() ?>assets/default/default-img.jpg" alt="your image" />
                                                            </div>
                                                            <div id="img-check-none2-<?php echo $x;?>" class="alert alert-danger">
                                                              <center><small><strong>Warning:</strong> Image too big. Upload images less than 5mb.</small></center>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 float-col">
                                                            <label for="pic1">Picture 3:</label>
                                                            <input class="form-control"  type="file" name="pic3[]" id="img3_<?php echo $x; ?>" data-trigger="<?php echo $count?>" onchange="readPic3(this, <?php echo $x; ?>);">
                                                            <div class="thumbnail">
                                                                <img id="pic3_<?php echo $x; ?>" class="pictures" src="<?php echo base_url() ?>assets/default/default-img.jpg" alt="your image" />
                                                            </div>
                                                            <div id="img-check-none3-<?php echo $x;?>" class="alert alert-danger">
                                                              <center><small><strong>Warning:</strong> Image too big. Upload images less than 5mb.</small></center>
                                                            </div>
                                                        </div>

                                                        <!--<div class="row">
                                                            <div class="col col-lg-12">
                                                                <label class="btn btn-danger" >Damage
                                                                    <input type="checkbox" class="trigger" value="1" name="damage[]" data-trigger="damage<?php echo $count?>" id = "damage" >  
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="bor-radius5 hidden" id = 'damage<?php echo $count;?>' style="border:1px solid #fe9393;padding:10px 20px;" >
                                                            <div class="form-group">
                                                                <label for="" class="control-label mb-1">Damage of the Unit:</label>
                                                                <textarea name="dou[]" rows="3" class="form-control"></textarea>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="" class="control-label mb-1">Remarks:</label>
                                                                <textarea name="damage_remarks[]" rows="3" class="form-control"></textarea>
                                                            </div>
                                                        </div>-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php
                            $asset=$asset+1; 
                            $count++; 
                            } 
                            $counter = $count - 1;
                            ?>
                            </div>
                            <div class="card-footer">
                                <center>     
                                    <!-- <i class="fa fa-dot-circle-o"></i> -->
                                    <input type="hidden" name="count" id = "count" value = "<?php echo $counter;?>">
                                    <input type = "submit" class="btn btn-primary btn-md bor-radius10 btn-block" name ="draft" value="Submit Draft"> 
                                    <input type = "submit" class="btn btn-success btn-md bor-radius10 btn-block" name ="saved" value="Submit"> 
                                    <input type="hidden" name="user_id" value = "<?php echo $_SESSION['user_id'];?>">
                                    <input type="hidden" name="et_id" value = "<?php echo $id;?>">
                                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">                         
                                </center>
                            </div>
                        </form>
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
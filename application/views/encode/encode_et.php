<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/encode.js"></script>
 <!-- MAIN CONTENT-->
 <script type="text/javascript">
     function isNumberKey(txt, evt){
       var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode == 46) {
            //Check if the text already contains the . character
            if (txt.value.indexOf('.') === -1) {
                return true;
            } else {
                return false;
            }
        } else {
            if (charCode > 31
                 && (charCode < 48 || charCode > 57))
                return false;
        }
        return true;
    }
 </script>
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-10 offset-lg-1">
                    <div class="card bor-radius20 shadow">
                        <div class="card-header" >
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <strong>ENCODE</strong> Equipment and Tools
                        </div>
                        <form action="<?php echo base_url(); ?>index.php/encode/insert_head" method="POST">
                            <div class="card-body card-block">
                                    <div class="row">
                                        <div class="col-6">
                                            <label for="" class="control-label mb-1">Category:</label>
                                            <select name="category" class="form-control bor-radius5" id="category" onChange="chooseCategory();" required>
                                                <option value = ''>-- Select Category --</option>
                                                <?php 
                                                    foreach ($cat AS $cat) {
                                                ?>
                                                <option value="<?php echo $cat->category_id; ?>"><?php echo $cat->category_name;?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="col-6">
                                            <label for="" class="control-label mb-1">Sub Category:</label>
                                            <select id="subcat" name="subcategory" class="form-control bor-radius5" onChange="choosePrefix();" required></select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="control-label mb-1">Item Description:</label>
                                        <input id="" name="item" type="text" class="form-control bor-radius5" placeholder="" autocomplete="off" required>
                                    </div>
                                    <!-- <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="" class="control-label mb-1">Brand:</label>
                                                <input id="" name="brand" type="text" class="form-control bor-radius5 cc-exp" >
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <label for="x_card_code" class="control-label mb-1">Model:</label>
                                            <div class="input-group">
                                                <input id="" name="model" class="form-control bor-radius5 cc-cvc" type="text">

                                            </div>
                                        </div>
                                    </div> -->
                                    <div class="row">
                                        <!-- <div class="col-6">
                                            <div class="form-group">
                                                <label for="" class="control-label mb-1">Type:</label>
                                                <input id="" name="type" type="text" class="form-control bor-radius5 cc-exp" >
                                            </div>
                                        </div> -->
                                        <div class="col-6">
                                            <label for="x_card_code" class="control-label mb-1">Quantity:</label>
                                            <div class="input-group">
                                                <input id="qty" name="qty" class="form-control bor-radius5 cc-cvc" type="text" onkeypress="return isNumberKey(this, event)" required>

                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <label for="x_card_code" class="control-label mb-1">UOM:</label>
                                            <div class="input-group">
                                                <!-- <input id="" name="uom" class="form-control bor-radius5 cc-cvc" type="text"> -->
                                                <select id="" name="uom" class="form-control bor-radius5 cc-cvc">
                                                    <option value="">-- Select UoM --</option>
                                                    <?php 
                                                        foreach ($unit AS $un) {
                                                    ?>
                                                    <option value="<?php echo $un->unit_id; ?>"><?php echo $un->unit_name;?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="row">
                                        <div class="col-8">
                                            <div class="form-group">
                                                <label for="" class="control-label mb-1">Serial Number:</label>
                                                <input id="" name="serial" type="text" class="form-control bor-radius5 cc-exp" required>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <label for="x_card_code" class="control-label mb-1">Unit Price:</label>
                                            <div class="input-group">
                                                <input id="" name="price" class="form-control bor-radius5 cc-cvc" type="number">

                                            </div>
                                        </div>
                                    </div> -->
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="" class="control-label mb-1">Accountability:</label>
                                                <input id="accountability" name="accountability" type="text" class="form-control bor-radius5" placeholder="" autocomplete="off">
                                                <span id="suggestion-accountability"></span>
                                                <input type="hidden" name="accountability_id" id="accountability_id" >
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <label for="" class="control-label mb-1">Department / Office:</label>
                                             <input type="text" name = "department" id ="department"  class="form-control bor-radius5">
                                            <!-- <select id="" name="department" type="text" class="form-control bor-radius5">
                                                <option value="">-- Select Department/Office --</option>
                                                <?php 
                                                    foreach ($department AS $dep) {
                                                ?>
                                                <option value="<?php echo $dep->department_id; ?>"><?php echo $dep->department_name;?></option>
                                                <?php } ?>
                                            </select> -->
                                        </div>
                                    </div>
                                   <!--  <label for="" class="control-label mb-1">Location:</label>
                                    <select id="" name="location" type="text" class="form-control bor-radius5">
                                        <option value="">-- Select Location --</option>
                                        <?php 
                                            foreach ($location AS $loc) {
                                        ?>
                                        <option value="<?php echo $loc->location_id; ?>"><?php echo $loc->location_name;?></option>
                                        <?php } ?>
                                    </select> -->
                                    <!-- <div class="form-group">
                                        <label for="" class="control-label mb-1">Remarks:</label>
                                        <textarea name="remarks" id="" class="form-control bor-radius5" cols="30" rows="5"></textarea>
                                    </div> -->
                                    <!-- <div class="row form-group">
                                        <div class="col col-lg-12">
                                            <label class="btn btn-danger" >Damage
                                                <input type="checkbox" value="1" name="damaged" id="damage" class="" > 
                                            </label>
                                        </div>
                                    </div>
                                    <div class="bor-radius5" style="border:1px solid #fe9393;padding:10px 20px" id="dou">
                                        <div class="form-group">
                                            <label for="" class="control-label mb-1">Damage of the Unit:</label>
                                            <textarea name="dou" rows="3" class="form-control"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="control-label mb-1">Remarks:</label>
                                            <textarea name="damaged_remarks" rows="3" class="form-control"></textarea>
                                        </div>
                                    </div> -->
                            </div>
                            <div class="card-footer">
                                <center>
                                   <!--  <a href="<?php echo base_url(); ?>index.php/encode/encode_next" class="btn btn-success btn-sm bor-radius10 btn-block"> Next Page 
                                    </a>  -->    
                                    <!-- <i class="fa fa-dot-circle-o"></i> -->
                                    <input type = "submit" id = "save" class="btn btn-success btn-md bor-radius10 btn-block" value="Next"> 
                                    <input type="hidden" name="user_id" value = "<?php echo $_SESSION['user_id'];?>">
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
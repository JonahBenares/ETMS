 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a onclick="history.go(-1);"  class="btn btn-default">
                                <span class="fa fa-arrow-left"></span>
                            </a>
                            <a href="">
                                <h4 style="text-transform: uppercase">Create Set</h4>
                            </a>
                        </div>
                        <form action="<?php echo base_url(); ?>index.php/report/insert_set" method = "POST">
                            <div class=" table--no-card " id="table_peret">    
                                <div class="row m-b-20">
                                    <div class = "col-lg-4 offset-lg-2">
                                        <label>Set Name:</label>
                                        <input type = "text" class = "form-control bor-radius20" name = "name" required="">
                                    </div>
                                    <div class = "col-lg-4">
                                        <label>Set Price:</label>
                                        <input type = "text" class = "form-control bor-radius20" name = "price">
                                    </div>  
                                </div>                      
                                <table class="table table-bordersed dataTable table-striped table-earning" >
                                    <thead>
                                        <tr>
                                            <th width="1%"><input type="checkbox" onClick="toggle_multi(this)" class=""></th>
                                            <th>Category</th>
                                            <th>Sub Category</th>
                                            <th>Item</th>
                                            <th>Unit</th>
                                            <th>Quantity</th>
                                            <th>Department</th>
                                            <th>Set Name</th>
                                            <!-- <th width="5%" class="text-center"><span class="fa fa-bars"></span></th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            $x = 1;
                                            foreach($sub AS $s){ 
                                        ?>
                                        <tr>
                                            <?php if($s['set_id']!=0){ ?>
                                            <td align="center" hidden><input type="text" name="etid[]" value='<?php echo $s['et_id']; ?>' disabled></td>
                                            <td align="center"><input type="checkbox" name ='edid[]' value = '<?php echo $s['ed_id'];?>' disabled></td>
                                            <?php } else { ?>
                                            <td align="center" hidden><input type="text" name="etid[]" value='<?php echo $s['et_id']; ?>'></td>
                                            <td align="center"><input type="checkbox" class="multi" name ='edid[]' value = '<?php echo $s['ed_id'];?>'></td>
                                            <?php } ?>
                                            <td><?php echo $s['cat']; ?></td>
                                            <td><?php echo $s['subcat']; ?></td>
                                            <td>
                                                <a href="<?php echo base_url(); ?>index.php/report/view_more/<?php echo $s['et_id'];?>" class="btn btn-ilink" data-toggle="tooltip" data-placement="top" title="View More"  style="white-space: normal!important;text-align: left">
                                                     <?php echo $s['et_desc']; ?>
                                                </a>                                           
                                            </td>
                                            <td><?php echo $s['unit']; ?></td>
                                            <td ><?php echo $s['qty']; ?></td>
                                            <td><?php echo $s['department']; ?></td>
                                            <td><?php echo $s['set_name'];?></td>
                                        </tr>
                                        <?php $x++; } ?>
                                        <input type="hidden" name = "count" id = "count" value = "<?php echo $x?>">
                                        <input type="hidden" name = "id" id = "id" value = "<?php echo $id?>">
                                    </tbody>
                                </table>
                                <br>
                                <input type="submit" class="btn btn-block btn-primary" name = "submit" id = "submit" value="Set">
                                <!-- <a href="" class="btn btn-block btn-primary"> Set</a> -->
                            </div>                            
                        </form>
                        
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

<script type="text/javascript">
    function toggle_multi(source) {
      checkboxes_multi = document.getElementsByClassName('multi');
      for(var i=0, n=checkboxes_multi.length;i<n;i++) {
        checkboxes_multi[i].checked = source.checked;
      }
    }
</script>
<div class="modal fade" id="modalSet" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">Add Set</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table width="100%" id="">
                    <tr>
                        <td>Set Name:</td>
                        <td><input type="text" class="form-control bor-radius"></td>
                    </tr>
                    <tr>
                        <td><div class="m-t-10"></div></td>
                        <td><div class="m-t-10"></div></td>
                    </tr>
                    <tr>
                        <td>Set Price:</td>
                        <td><input type="text" class="form-control bor-radius"></td>
                    </tr>
                    <tr>
                        <td><div class="m-t-10"></div></td>
                        <td><div class="m-t-10"></div></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button class="btn btn-primary btn-block">Save</button></td>
                    </tr>
                </table>
            </div>                                        
        </div>
    </div>
</div>
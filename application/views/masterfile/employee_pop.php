<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/masterfile.js"></script>
 <!-- MAIN CONTENT-->
<div class="m-t-30">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-6 offset-lg-3">
                    <div class="card bor-radius shadow">
                        <form action="<?php echo base_url(); ?>index.php/masterfile/insert_multiemp" method="POST">
                            <div class="card-body card-block">
                                <div class=" m-l-20 m-t-20 m-r-20 m-b-20">
                                    <table width="100%">
                                        <tr>
                                            <td width="20%"><label for="" class="control-label mb-1">Employee Name</label></td>
                                            <td width="5%">:</td>
                                            <td>
                                                <input id="employee" name="employee" type="text" class="form-control bor-radius5" placeholder="" autocomplete="off" required>
                                                <span id="suggestion-employee"></span>
                                                <input type="hidden" name="employee_id" id="employee_id">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="20%"></td>
                                            <td width="5%"></td>
                                            <td>
                                                <div class="m-r-20 m-l-20">
                                                    <table width = "100%">
                                                        <?php foreach($multi_emp AS $emp){ ?>
                                                        <tr>
                                                            <td><input type="text" name="" class="form-control" readonly="" value="<?php echo $emp['emp_name'];?>"></td>
                                                            <td> <a href="<?php echo base_url(); ?>index.php/masterfile/delete_employee_pop/<?php echo $emp['eid'];?>/<?php echo $emp['parent'];?>/<?php echo $emp['id'];?>" onclick="confirmationDelete(this);return false;" class="btn btn-danger item btn-sm" data-toggle="tooltip" data-placement="top" title="Delete" title="Delete" alt='Delete'>
                                                            <i class="fa fa-trash"></i>
                                                        </a>
                                                            </td>
                                                        </tr>
                                                    <?php } ?>
                                                    </table>
                                                    <!-- <ul style="list-style: none">
                                                    <?php foreach($multi_emp AS $emp){ ?>
                                                        <li><input type="text" name="" class="form-control" readonly="" value="<?php echo $emp['emp_name'];?>"></li>
                                                        <a href="<?php echo base_url(); ?>index.php/masterfile/delete_employee_pop/<?php echo $emp['eid'];?>/<?php echo $emp['parent'];?>/<?php echo $emp['id'];?>" onclick="confirmationDelete(this);return false;" class="btn btn-danger item btn-sm" data-toggle="tooltip" data-placement="top" title="Delete" title="Delete" alt='Delete'>
                                                            <i class="fa fa-trash"></i>
                                                        </a>
                                                    <?php } ?>
                                                    </ul> -->
                                                  
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer">
                                <center>
                                    <input type = "submit" class="btn btn-info btn-sm bor-radius10 btn-block" placeholder="Save" value="ADD"> 
                                    <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                    <input type = "hidden" name = "empid" value="<?php echo $id;?>">
                                </center>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
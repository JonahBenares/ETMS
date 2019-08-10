 <div class="card-header">
    <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
    <a href="<?php echo base_url(); ?>index.php/report/report_main" class="btn btn-primary">Equipment/Tools</a>
    <a href="<?php echo base_url(); ?>index.php/report/report_main_hist" class="btn btn-primary">E/T History</a>
    <a href="<?php echo base_url(); ?>index.php/report/report_main_emp" class="btn btn-primary" >E/T per Employee</a>
    <a href="<?php echo base_url(); ?>index.php/report/report_main_avail" class="btn btn-primary" >Available E/T <span class="badge badge-light badge-md bor-radius100" ><?php echo number_format($available_qty,0); ?></span></a>
    <a href="<?php echo base_url(); ?>index.php/report/report_set_avail" class="btn btn-primary" >Available Set E/T <span class="badge badge-light badge-md bor-radius100" ><?php echo number_format($available_set_qty,0); ?></span></a>
    <a href="<?php echo base_url(); ?>index.php/report/inv_rep" class="btn text-white btn-warning" >Inv Report</a>
    <a href="<?php echo base_url(); ?>index.php/repair/repair_list" class="btn btn-danger pull-right" >Damaged E/T <span class="badge badge-light badge-md bor-radius100" ><?php echo number_format($damage_qty,0); ?></span></a>
</div>
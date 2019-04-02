<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
 <!-- MAIN CONTENT-->
<div class="m-t-15">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/borrow/borrow_list" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <!-- <a onclick="history.go(-1);" class="btn btn-default"><span class="fa fa-arrow-left"></span></a> -->
                            <strong>DAMAGE</strong> Equipment / Tools
                        </div>
                        <form action="<?php echo base_url(); ?>index.php/report/insert_transfer" method="POST">
                            <div class="card-body card-block">
                                <table class="table table-hover table-bordered">
                                    <thead>       
                                        <th><center><span class="fa fa-bars"></span></center></th>
                                        <th>Item Name</th>
                                        <th>Serial No.</th>
                                        <th>Asset Control Number</th>
                                        <th>Brand</th>
                                        <th>Model</th>
                                        <th>Type</th>
                                    </thead>
                                    <?php 
                                        foreach($head AS $h){  
                                            foreach($details AS $det){     
                                                switch($det){
                                                    case($h['et_id'] == $det['et_id']):
                                    ?>
                                    <tr>       
                                        <td><center><a href="<?php echo base_url(); ?>index.php/report/damage_report/<?php echo $det['damage_id']?>" class="btn btn-info item btn-sm"  data-toggle="tooltip" data-placement="top" title="View">
                                                    <i class="fa fa-eye"></i>
                                                </a></center></td>
                                        <td><?php echo $det['item'];?></td>
                                        <td><?php echo $det['serial'];?></td>
                                        <td><?php echo $det['acn'];?></td>
                                        <td><?php echo $det['brand'];?></td>
                                        <td><?php echo $det['model'];?></td>
                                        <td><?php echo $det['type'];?></td>
                                    </tr>
                                    <?php   
                                        break;
                                        default: 
                                        } } }
                                    ?>
                                </table>
                            </div>
                            <div class="card-footer">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function toggle_trans(source) {
      checkboxes_trans = document.getElementsByClassName('trans');
      for(var i=0, n=checkboxes_trans.length;i<n;i++) {
        checkboxes_trans[i].checked = source.checked;
      }
    }
</script>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
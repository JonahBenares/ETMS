<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/borrow.js"></script>
<script type="text/javascript">
    function viewCat(cat_id){
        window.open('<?php echo base_url(); ?>index.php/masterfile/add_subcat/'+cat_id, '_blank', 'top=100px,left=400px,width=600,height=400');
    }
</script>
 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a href="<?php echo base_url(); ?>index.php/masterfile/dashboard" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <a><h4 class="m-l-5 m-b-10">Borrow List</h4></a>
                            <div class="pull-right">
                                <a href="<?php echo base_url(); ?>index.php/borrow/borrow_view/" class="btn btn-success text-white bor-radius"  title = "RETURN">
                                    <i class="fa fa-refresh"></i>
                                </a>
    
                                <a href="" class="btn btn-primary bor-radius" data-toggle="modal" data-target="#subcatModal">
                                    <span class="fa fa-plus" ></span>
                                </a>
                            </div>      

                            <div class="modal fade" id="subcatModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="mediumModalLabel"></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <form action="<?php echo base_url(); ?>index.php/borrow/insert_borrow_head" method="POST" >
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="" class="control-label mb-1">Employee Name:</label>
                                                    <input id="borrow" name="borrow" type="text" class="form-control bor-radius5" placeholder="" autocomplete="off" required>
                                                    <span id="suggestion-borrow"></span>
                                                    <input type="hidden" name="borrow_id" id="borrow_id">
                                                </div>
                                                <div class="form-group">
                                                    <label for="" class="control-label mb-1">Borrow Date:</label>
                                                    <input id="" name="date" type="date" class="form-control bor-radius5" placeholder="" required>
                                                </div>
                                            </div>                                        
                                            <div class="modal-footer">
                                                <input type='submit' class="btn btn-primary btn-block btn-fill" value='ADD'>
                                                <input type="hidden" name="user_id" value = "<?php echo $_SESSION['user_id'];?>">
                                                <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                               <!--  <a  href="<?php echo base_url(); ?>index.php/borrow/borrow_add" class="btn btn-primary btn-block btn-fill">Add</a> -->
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>                                               
                        </div>
                        <div class="table--no-card m-t-10 m-b-10" id="table_peret">
                            <table class="table table-striped table-earning" id="myTable_peret">
                                <thead>
                                    <tr>
                                        <th align="center" width="1%">#</th>
                                        <th>Series</th>
                                        <th>Employee Name</th>
                                        <th>Borrowed Date/Time</th>
                                        <th>Returned Date</th>
                                    </tr>
                                </thead>
                                    <?php if(!empty($all)){ $x=1; foreach($all as $a){ ?>
                                    <tr>
                                        <td align="center" width="1%"><?php echo $x;?></td>
                                        <td><?php echo $a['series'];?></td>
                                        <td><?php echo $a['employee'];?></td>
                                        <td><?php echo $a['date'];?></td>
                                        <td><?php if(!empty($a['returned_date'])) { echo date("Y-m-d",strtotime($a['returned_date'])); }else { echo ''; }?></td>
                                    </tr>
                                    <?php $x++; } }?>
                                </tbody>
                            </table>
                        </div>
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
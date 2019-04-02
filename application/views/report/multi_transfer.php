<script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/js/report.js"></script>
 <!-- MAIN CONTENT-->
<div class="main-content ">
    <div class="">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card bor-radius shadow">
                        <div class="card-header" style="background: #ffc10859">
                            <a onclick="history.go(-1);"  class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <a><h4 class="m-l-5 m-b-10">Multiple Transfer</h4></a>                        
                        </div>
                        <form action = "<?php echo base_url(); ?>index.php/report/insert_multitransfer" method = "POST">
                            <div class="m-l-30 m-t-30 m-b-30">
                                <table width="100%">
                                    <tr>
                                        <td width="10%"> <h4>Name: </h4></td>
                                        <td><p style="text-transform: uppercase;font-weight: 500"><?php echo $fullname;?></p></td>
                                    </tr>
                                    <tr>
                                        <td> <h4>Position: </h4></td>
                                        <td><p><?php echo $position;?></p></td>
                                    </tr>
                                    <tr>
                                        <td> <h4>Location: </h4></td>
                                        <td><p><?php echo $location;?></p></td>
                                    </tr>
                                     <tr>
                                        <td> <h4>Transfer Date: </h4></td>
                                        <td> <input id="date" name="date" type="date" class="form-control bor-radius5" required></td>
                                        <td> <h4>Transfer To: </h4></td>
                                        <td> 
                                            <input id="rec" name="text" type="text" class="form-control bor-radius5" autocomplete="off" required>
                                            <span id="suggestion-receivedby"></span>
                                            <input type="hidden" name="rec_id" id="rec_id" >
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class=" table--no-card m-t-10 m-b-10" id="table_peret">
                                <table class="table table-bordered table-striped table-earning">
                                    <thead>
                                        <tr>
                                            <th width="1%" class="text-center">
                                                <input type="checkbox" name="" onClick="toggle_pd(this)">
                                            </th>
                                            <th>Item</th>
                                            <th>Asset Control #</th>
                                            <th>Cost</th>
                                            <th>S/N</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
                                        foreach($multiturn AS $mt){ 
                                            $x=0;
                                            foreach($details AS $det){ 
                                                switch($det){
                                                    case($mt['etid'] == $det['etid']):
                                    ?>
                                        <tr>
                                            <td align="center"><input class = "pd" type="checkbox" name="edid[]" value=<?php echo $det['edid']; ?>></td>
                                            <td><?php echo $mt['item'];?></td>
                                            <td><?php echo $det['acn'];?></td>
                                            <td><?php echo $det['price'];?></td>
                                            <td><?php echo $det['serial'];?></td>
                                        </tr>
                                    <?php 
                                        break;
                                        default: 
                                        } $x++; } }
                                    ?>
                                    </tbody>
                                </table>
                                <br>
                                <label for="remarks" class="control-label mb-1">Transfer Remarks:</label>
                                <textarea id="remarks" rows = "3" name="remarks" type="text" class="form-control bor-radius5"></textarea>
                                <center><button class="btn btn-lg btn-warning" type = "submit">Transfer</button></center>
                                <input type="hidden" id="id" name="id" class="form-control" value = "<?php echo $id;?>">
                                <input type="hidden" id="count" name="count" class="form-control" value = "<?php echo $x;?>">
                                <input type="hidden" name="baseurl" id="baseurl" value="<?php echo base_url(); ?>">
                                <input type="hidden" id="user_id" name="user_id" value = "<?php echo $_SESSION['user_id'];?>">
                                <br>
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
<script type="text/javascript">
    function toggle_pd(source) {
      checkboxes_pd = document.getElementsByClassName('pd');
      for(var i=0, n=checkboxes_pd.length;i<n;i++) {
        checkboxes_pd[i].checked = source.checked;
      }
    }
</script>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
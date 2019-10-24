<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-8 offset-lg-2">
                    <div class="card bor-radius20 shadow">
                        <div class="card-header bg-primary" style="border-radius: 20px 20px 0px 0px;">                    
                            <div class="bor-radius100 btn-group btn-block ">
                                <a onclick="history.go(-1);" class="text-white btn btn-default"><span class="fa fa-arrow-left"></span></a>
                                <h2 class="text-white"><?php echo $subcat_name;?> <button readonly class="btn btn-sm btn-light bor-radius100"><?php echo $count;?></button>
                                </h2>
                            </div>
                        </div>
                        <div class="card-body" >                            
                            <div class="m-t-1">
                                <table class="table table-borderless table-striped table-earning " id="myTable_peremp">
                                    <thead>
                                        <tr>
                                            <th>Item Description</th>
                                            <th>Accountability</th>
                                            <th>Status</th>
                                            <th width="10%">Qty</th>
                                        </tr>
                                    </thead> 
                                    <tbody>
                                        <?php 
                                            foreach($item AS $i){ 
                                                if($i['accountability_id']!=0 && $i['borrowed']==0){
                                                    $status = '<span style = "color:orange;">Assigned</span>';
                                                }else if($i['accountability_id']==0 && $i['damaged']==0 && $i['change_location']==0){
                                                    $status = '<span style = "color:green;">Available</span>';
                                                }else if($i['accountability_id']==0 && $i['change_location']==1){
                                                    $status = "Moved to ".$i['location'];
                                                }else if($i['borrowed']==1){
                                                    $status = '<span style = "color:blue;">Borrowed</span>';
                                                }else if($i['damaged']==1){
                                                    $status = '<span style = "color:red;">Damaged</span>';
                                                }
                                                /*if($i['accountability_id']!=0 && $i['borrowed']==0){
                                                    $status = '<span style = "color:orange;">Assigned</span>';
                                                }else if($i['accountability_id']==0 && $i['damaged']==0){
                                                    $status = '<span style = "color:green;">Available</span>';
                                                }else if($i['borrowed']==1){
                                                    $status = '<span style = "color:blue;">Borrowed</span>';
                                                }else if($i['damaged']==1){
                                                    $status = '<span style = "color:red;">Damaged</span>';
                                                }*/
                                        ?>
                                            <tr>
                                                <td><?php echo $i['item'];?></td>
                                                <td><?php echo $i['accountability'];?></td>
                                                <td><?php echo $status;?></td>
                                                <td><?php echo $i['qty'];?></td>
                                            </tr>
                                        <?php } ?>
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
                       
                        <p>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
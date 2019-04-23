 <!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
               <br>
               <br>
            </div>
            <div class="row m-t-25 m-l-150 m-r-150">
                <div class="col-sm-3 col-lg-3">
                    <div class="overview-item overview-item--c4" style="height: 85%;" id="main_btn" onmouseover="nameIn(this)" onmouseout="listIn(this)">
                        <div class="overview__inner" id="mas_name" >
                            <div class="overview-box clearfix">
                                <center>
                                    <h1 class="text-white" style="font-size: 100px">
                                        <span class="fa fa-bars"></span>
                                    </h1>
                                </center>
                            </div>
                            <div>
                                <center>
                                    <h3 class="text-white upper-case" style="font-weight: 500 ;">Masterfile</h3>
                                </center>
                            </div>
                        </div>
                        <div class="overview__inner" id="mas_list">
                            <div class="list_master">
                                <center><a class="names borbot" href="<?php echo base_url(); ?>index.php/masterfile/physical_list">Physical Condition</a></center>
                                <center><a class="names" href="<?php echo base_url(); ?>index.php/masterfile/categ_list">Category</a></center>
                                <center><a class="names" href="<?php echo base_url(); ?>index.php/masterfile/emp_inclusion_list">Office</a></center>
                                <center><a class="names" href="<?php echo base_url(); ?>index.php/masterfile/employee_list">Employee</a></center>
                                <center><a class="names" href="<?php echo base_url(); ?>index.php/masterfile/loc_list">Location</a></center>
                                <center><a class="names" href="<?php echo base_url(); ?>index.php/masterfile/placement_list">Placement</a></center>
                                <center><a class="names" href="<?php echo base_url(); ?>index.php/masterfile/rack_list">Rack</a></center>
                                <center><a class="names" href="<?php echo base_url(); ?>index.php/masterfile/currency_list">Currency</a></center>
                                <center><a class="names borbot" href="<?php echo base_url(); ?>index.php/masterfile/uom_list">UOM</a></center>
                            </div>
                        </div>                            
                    </div>
                </div>
                <div class="col-sm-3 col-lg-3">
                    <a href="<?php echo base_url(); ?>index.php/encode/encode_et" style="width:100%;">
                        <div class="overview-item overview-item--c2" style="height: 100%;">
                            <div class="overview__inner">
                                <div class="overview-box clearfix">
                                    <center>
                                        <h1 class="text-white" style="font-size: 100px">
                                            <span class="fa fa-plus"></span>
                                        </h1>
                                    </center>
                                </div>
                                <div>
                                    <center>
                                        <h3 class="text-white upper-case" style="font-weight: 500 ;">Encode</h3>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- <div class="col-sm-3 col-lg-3">
                    <a href="<?php echo base_url(); ?>index.php/report/report_main" style="width:100%;">
                        <div class="overview-item overview-item--c3" style="height: 100%;">
                            <div class="overview__inner">
                                <div class="overview-box clearfix">
                                    <center>
                                        <h1 class="text-white" style="font-size: 100px">
                                            <span class="fa fa-file-text"></span>
                                        </h1>
                                    </center>
                                </div>
                                <div>
                                    <center>
                                        <h3 class="text-white upper-case" style="font-weight: 500 ;">Report</h3>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </a>
                </div> -->
                <div class="col-sm-3 col-lg-3">
                    <div class="overview-item overview-item--c3" style="height: 85%;" id="main_btn" onmouseover="repNameIn(this)" onmouseout="repListIn(this)">
                        <div class="overview__inner" id="rep_name" >
                            <div class="overview-box clearfix">
                                <center>
                                    <h1 class="text-white" style="font-size: 100px">
                                        <span class="fa fa-bars"></span>
                                    </h1>
                                </center>
                            </div>
                            <div>
                                <center>
                                    <h3 class="text-white upper-case" style="font-weight: 500 ;">Report</h3>
                                </center>
                            </div>
                        </div>
                        <div class="overview__inner" id="rep_list">
                            <div class="list_master">
                                <center><a class="rep_names" href="<?php echo base_url(); ?>index.php/report/report_main">Equipment/Tools</a></center>
                                <center><a class="rep_names" href="<?php echo base_url(); ?>index.php/report/report_main_hist">E/T History</a></center>
                                <center><a class="rep_names" href="<?php echo base_url(); ?>index.php/report/report_main_emp">E/T per Employee</a></center>
                                <center><a class="rep_names" href="<?php echo base_url(); ?>index.php/report/report_main_avail">Available E/T</a></center>
                                <center><a class="rep_names borbot" href="<?php echo base_url(); ?>index.php/repair/repair_list">Damaged E/T</a></center>
                            </div>
                        </div>                            
                    </div>
                </div>
                <div class="col-sm-3 col-lg-3">
                    <a href="<?php echo base_url(); ?>index.php/borrow/borrow_list" style="width:100%;">
                        <div class="overview-item overview-item--c1" style="height: 100%;">
                            <div class="overview__inner">
                                <div class="overview-box clearfix">
                                    <center>
                                        <h1 class="text-white" style="font-size: 100px">
                                            <span class="fa  fa-bold"></span>
                                        </h1>
                                    </center>
                                </div>
                                <div>
                                    <center>
                                        <h3 class="text-white upper-case" style="font-weight: 500 ;">Borrow</h3>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </a>
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
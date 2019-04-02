<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="<?php echo base_url(); ?>assets/css/font-face.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="<?php echo base_url(); ?>assets/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<?php echo base_url(); ?>assets/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>assets/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<?php echo base_url(); ?>assets/css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="bgimg-1 page-content--bge5 ">
            <!-- <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="login-logo" style="margin-bottom: 10px">
                            <a href="#">
                                 <p style="color:#343434; font-size: 100px; text-transform: uppercase; font-weight: 700; letter-spacing:20px"> 
                                ETMS</p>
                            </a>
                        </div>
                        <form method="POST" action="<?php echo base_url(); ?>index.php/masterfile/login">
                            <div class="form-group">
                                <input class="au-input shadow au-input--full bor-radius10" type="text" name="username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input class="au-input shadow au-input--full bor-radius10" type="password" name="password" placeholder="Password">
                            </div>
                            <button class="au-btn au-btn--block au-btn--blue m-b-20 shadow bor-radius10" type="submit">sign in</button>
                           
                        </form>
                    </div>
                </div>
            </div> -->
           <div class="container">
                <div class="login-wrap">                     
                    <div class="login-content modal-nobak">
                        <?php
                        $error_msg= $this->session->flashdata('error_msg');  
                            ?>
                        <?php 
                            if($error_msg){
                        ?>
                            <div class="alert bor-radius10 shadow alert-danger alert-shake animated headShake">
                                <center><?php echo $error_msg; ?></center>                    
                            </div>
                        <?php } ?>
                        <h1 style="color:#343434;font-size: 100px;text-transform: uppercase; font-weight: 700; text-align: center;">ETMS</h1>
                        <center><small>EQUIPMENT AND TOOLS MANAGEMENT SYSTEM</small></center>
                        <br>
                        <div class="login-form">
                            <form method="POST" action="<?php echo base_url(); ?>index.php/masterfile/login">
                                <div class="form-group">
                                    <input class="au-input au-input--full bor-radius10" type="text" name="username" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <input class="au-input au-input--full bor-radius10" type="password" name="password" placeholder="Password">
                                </div>
                                <button class="au-btn au-btn--block au-btn--blue m-b-20 bor-radius10" type="submit">sign in</button>                              
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>


    <!-- Jquery JS-->
    <script src="<?php echo base_url(); ?>assets/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<?php echo base_url(); ?>assets/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="<?php echo base_url(); ?>assets/vendor/slick/slick.min.js">
    </script>
    <script src="<?php echo base_url(); ?>assets/vendor/wow/wow.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/vendor/animsition/animsition.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="<?php echo base_url(); ?>assets/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="<?php echo base_url(); ?>assets/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<?php echo base_url(); ?>assets/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="<?php echo base_url(); ?>assets/js/main.js"></script>

</body>

</html>
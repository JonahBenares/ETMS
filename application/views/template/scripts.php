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
    <script src="<?php echo base_url(); ?>assets/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(document).ready( function () {
            $('#myTable_peret').DataTable();
            $('#myTable_peremp').DataTable();
            $('#myTable_avail').DataTable();
        } );   

        // var tab_per_et = document.getElementById("table_peret");
        // var tab_per_emp = document.getElementById("table_peremp");
        // var tab_avail = document.getElementById("table_avail");
        // $("#peret_btn").click(function(){            
        //     tab_per_et.setAttribute('style', 'display:block');
        //     tab_per_emp.setAttribute('style', 'display:none');
        //     tab_avail.setAttribute('style', 'display:none');
        // });

        // $("#peremp_btn").click(function(){
        //     tab_per_emp.setAttribute('style', 'display:block');
        //     tab_per_et.setAttribute('style', 'display:none');
        //     tab_avail.setAttribute('style', 'display:none');
        // });  
        // $("#avail_btn").click(function(){
        //     tab_per_emp.setAttribute('style', 'display:none');
        //     tab_per_et.setAttribute('style', 'display:none');
        //     tab_avail.setAttribute('style', 'display:block');
        // });   

        
        var mas_name = document.getElementById("mas_name");
        var mas_list = document.getElementById("mas_list");
        function nameIn(x) {            
            mas_name.setAttribute('style', 'display:none');
            mas_list.setAttribute('style', 'display:block');
        }
        function listIn(x) {
            mas_name.setAttribute('style', 'display:block');
            mas_list.setAttribute('style', 'display:none');
        }
        function nameIn1(x) {            
            mas_name1.setAttribute('style', 'display:none');
            mas_list1.setAttribute('style', 'display:block');
        }
        function listIn1(x) {
            mas_name1.setAttribute('style', 'display:block');
            mas_list1.setAttribute('style', 'display:none');
        }


        
        var rep_name = document.getElementById("rep_name");
        var rep_list = document.getElementById("rep_list");
        function repNameIn(x) {            
            rep_name.setAttribute('style', 'display:none');
            rep_list.setAttribute('style', 'display:block');
        }
        function repListIn(x) {
            rep_name.setAttribute('style', 'display:block');
            rep_list.setAttribute('style', 'display:none');
        }
        function repNameIn1(x) {            
            rep_name1.setAttribute('style', 'display:none');
            rep_list1.setAttribute('style', 'display:block');
        }
        function repListIn1(x) {
            rep_name1.setAttribute('style', 'display:block');
            rep_list1.setAttribute('style', 'display:none');
        }


        function viewReturn(accountability_id,et_id){
            window.open('<?php echo base_url(); ?>index.php/report/return_view/'+accountability_id+"/"+et_id, '_blank', 'top=10px,left=200px,width=900,height=650');
        }
        function tagAsDamage(accountability_id,et_id){
            window.open('<?php echo base_url(); ?>index.php/report/tag_damage/'+accountability_id+"/"+et_id, '_blank', 'top=10px,left=60px,width=1250,height=650');
        }
        function assignTo(et_id){
            window.open('<?php echo base_url(); ?>index.php/report/assign/'+et_id, '_blank', 'top=100px,left=400px,width=600,height=450');
        }
        function transferPop(accountability_id,et_id){
            window.open('<?php echo base_url(); ?>index.php/report/transfer_pop/'+accountability_id+"/"+et_id, '_blank', 'top=10px,left=200px,width=900,height=650');
        }
        
        function viewEmp(empid){
            window.open('<?php echo base_url(); ?>index.php/masterfile/employee_pop/'+empid, '_blank', 'top=100px,left=400px,width=600,height=450');
        }

        document.querySelector("#print").addEventListener("click", function() {
            window.print();
        });

        function confirmationDelete(anchor){
            var conf = confirm('Are you sure you want to delete this record?');
            if(conf)
            window.location=anchor.attr("href");
        }

        function confirmationDeleteSet(anchor){
            var conf = confirm('Are you sure you want to Remove this as a set?');
            if(conf)
            window.location=anchor.attr("href");
        }
        // 
    </script>
    <script>
        function closeWindow() {
            window.open('','_parent','');
            window.close();
        }
    </script>  

    <script>
    function iprint() {
      window.print();
    }
    </script>
    <script type="text/javascript">
        $(document).on("click", "#updateReminder_button", function () {
            var et_id = $(this).attr("data-id");
            $("#et_id").val(et_id);
        });

        $(document).on("click", "#lost_button", function () {
            var emp_id = $(this).attr("data-id");
            var accountable = $(this).attr("data-name");
            var ed_id = $(this).attr("data-ab");
            var et_id = $(this).attr("data-ac");
            $("#emp_id").val(emp_id);
            $("#accountable").val(accountable);
            $("#ed_id").val(ed_id);
            $("#et_id").val(et_id);
        });
    </script>
</body>

</html>
<!-- end document-->

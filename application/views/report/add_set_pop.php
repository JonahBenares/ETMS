
 <!-- MAIN CONTENT-->
<div class="mt-1">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">                
                <div class="col-lg-6 offset-lg-3">
                    <div class="card bor-radius shadow">
                        <div class="card-header">
                            <a onclick="history.go(-1);" class="btn btn-default"><span class="fa fa-arrow-left"></span></a>
                            <strong>ADD</strong> SubCategory
                        </div>
                        <form action="" method="POST" >
                            <div class="card-body card-block">
                                <table width="100%" id="">
                                    <tr>
                                        <td>Set Name:</td>
                                        <td><input type="text" name = "name" class="form-control bor-radius"></td>
                                    </tr>
                                    <tr>
                                        <td><div class="m-t-10"></div></td>
                                        <td><div class="m-t-10"></div></td>
                                    </tr>
                                    <tr>
                                        <td>Set Price:</td>
                                        <td><input type="text" name = "price" class="form-control bor-radius"></td>
                                    </tr>
                                    <tr>
                                        <td><div class="m-t-10"></div></td>
                                        <td><div class="m-t-10"></div></td>
                                    </tr>
                                    <!-- <tr>
                                        <td colspan="2"><button class="btn btn-primary btn-block">Save</button></td>
                                    </tr> -->
                                </table>
                            </div>
                            <div class="card-footer">
                                <center>
                                    <input type = "submit" class="btn btn-info btn-sm bor-radius10 btn-block" placeholder="Update" value="Submit">
                                    <input type = "hidden" name = "category_id" value="">
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
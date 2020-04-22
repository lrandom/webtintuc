<?php

require_once('includes/header.php');
require_once('includes/navbar.php');
require_once('./../models/users.php');


if (isset($_POST['username'])) {
    $users = new Users;
    $count = $users->insert($_POST);
    if ($count == 1) {
        $_SESSION['add_user_success'] = 'Thêm thành công';
    }
}

?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Thêm người dùng</h1>
    </div>

    <div class="container">
        <?php
        if (isset($_SESSION['add_user_success'])) {
        ?>
            <div class="alert alert-success" role="alert">
                <?php echo $_SESSION['add_user_success'] ?>

            </div>
        <?php
        }
        ?>

        <form method="POST">

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Username</label>
                <div class="col-sm-10">
                    <input type="text" name="username" required="true">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input type="text" name="pwd" required="true">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Role</label>
                <div class="col-sm-10">
                    <input type="radio" name="role" value="0">Admin <br>
                    <input type="radio" name="role" value="1">Normal user
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Fullname</label>
                <div class="col-sm-10">
                    <input type="text" name="fullname" required="true">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Date of birth</label>
                <div class="col-sm-10">
                    <input type="date" name="dob" required="true">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Gender</label>
                <div class="col-sm-10">
                    <input type="radio" name="gender" value="1">Male <br>
                    <input type="radio" name="gender" value="2">Female
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" name="email" required="true">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Phone</label>
                <div class="col-sm-10">
                    <input type="text" name="phone" required="true">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Address</label>
                <div class="col-sm-10">
                    <input type="text" name="address" required="true">
                </div>
            </div>

            <input type="submit" class="btn btn-success" value="Add"></input>
            <input type="reset" class="btn btn-primary" value=Reset>
            <a href="users.php" class="btn btn-secondary ">Back</a>
        </form>
    </div>



</div>
<!-- /.container-fluid -->

<?php
require_once('includes/footer.php');
?>
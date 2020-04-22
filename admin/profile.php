<?php
require_once('includes/header.php');
require_once('includes/navbar.php');
require_once('./../models/users.php');
?>


<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Profile</h1>
    </div>

    <div class="container">

        <form method="POST">

            <input type="hidden" name="id" value="<?php echo $_SESSION['user']['id'] ?>" />
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Username</label>
                <div class="col-sm-10">
                    <input type="text" name="username" readonly value="<?php echo $_SESSION['user']['username'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Role</label>
                <?php
                if ($_SESSION['user']['role'] == 0) {
                ?>
                    <div class="col-sm-10">
                        <input type="radio" name="role" value="1" checked>Admin <br>
                        <input type="radio" name="role" value="2" disabled>Normal user
                    </div>
                <?php
                }
                ?>

                <?php
                if ($_SESSION['user']['role'] == 1) {
                ?>
                    <div class="col-sm-10">
                        <input type="radio" name="role" value="1" disabled>Admin <br>
                        <input type="radio" name="role" value="2" checked>Normal user
                    </div>
                <?php
                }
                ?>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Fullname</label>
                <div class="col-sm-10">
                    <input type="text" name="fullname" readonly value="<?php echo $_SESSION['user']['fullname'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Date of birth</label>
                <div class="col-sm-10">
                    <input type="date" name="dob" readonly value="<?php echo $_SESSION['user']['dob'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Gender</label>
                <?php
                if ($_SESSION['user']['gender'] == 1) {
                ?>
                    <div class="col-sm-10">
                        <input type="radio" name="gender" value="1" checked>Male <br>
                        <input type="radio" name="gender" value="2" disabled>Female
                    </div>
                <?php
                }
                ?>

                <?php
                if ($_SESSION['user']['gender'] == 2) {
                ?>
                    <div class="col-sm-10">
                        <input type="radio" name="gender" value="1" disabled>Male <br>
                        <input type="radio" name="gender" value="2" checked>Female
                    </div>
                <?php
                }
                ?>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" name="email" readonly value="<?php echo $_SESSION['user']['email'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Phone</label>
                <div class="col-sm-10">
                    <input type="text" name="phone" readonly value="<?php echo $_SESSION['user']['phone'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Address</label>
                <div class="col-sm-10">
                    <input type="text" name="address" readonly value="<?php echo $_SESSION['user']['address'] ?>">
                </div>
            </div>
        </form>
        <a href="users_update.php?id=<?php echo $_SESSION['user']['id'] ?>" class="btn btn-success">Change Info</a>
        <a href="index.php" class="btn btn-secondary">Back</a>
    </div>



</div>
<!-- /.container-fluid -->

<?php
require_once('includes/footer.php');
?>
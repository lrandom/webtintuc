<?php
require_once('includes/header.php');
require_once('includes/navbar.php');
require_once('./../models/users.php');


if (isset($_POST['npwd'])) {
    $users = new Users;
    $id = $_POST['id'];
    $npwd = $_POST['npwd'];
    $cpwd = $_POST['cpwd'];
    if (($npwd === $cpwd)) {
        $users->change_pwd($npwd, $id);
        $_SESSION['change_pwd_success'] = 'Đổi thành công';
        header('Location:change_pwd.php');
    }else {
        $_SESSION['change_pwd_fail'] = 'Đổi không thành công';
        header('Location:change_pwd.php');
    }
}
?>


<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Change Password</h1>
    </div>

    <div class="container">

        <form method="POST">

            <?php
            if (isset($_SESSION['change_pwd_success'])) {
            ?>
                <div class="alert alert-success" role="alert">
                    <?php echo $_SESSION['change_pwd_success'] ?>

                </div>
            <?php
            }
            ?>

            <?php
            if (isset($_SESSION['change_pwd_fail'])) {
            ?>
                <div class="alert alert-danger" role="alert">
                    <?php echo $_SESSION['change_pwd_fail'] ?>

                </div>
            <?php
            }
            ?>

            <input type="hidden" name="id" value="<?php echo $_SESSION['user']['id'] ?>">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" name="pwd" readonly value="<?php echo $_SESSION['user']['pwd'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">New Password</label>
                <div class="col-sm-10">
                    <input type="password" name="npwd">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Confirm Password</label>
                <div class="col-sm-10">
                    <input type="password" name="cpwd">
                </div>
            </div>

            <input type="submit" class="btn btn-primary" value="Change password"></input>
            <a href="index.php" class="btn btn-secondary">Back</a>
        </form>
    </div>



</div>
<!-- /.container-fluid -->

<?php
require_once('includes/footer.php');
?>
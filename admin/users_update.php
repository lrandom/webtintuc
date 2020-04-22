<?php
require_once('includes/header.php');
require_once('includes/navbar.php');
require_once('./../models/users.php');


$users = new Users;
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    if (is_numeric($id)) {
        $obj = $users->getByid($id);
        //var_dump($obj);die();
    } else {
        header('Location:index.php');
    }
}
if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $users->update($_POST);
    $_SESSION['update_user_success'] = 'Cập nhật thành công';
    header('Location:users_update.php?id=' . $id);
}
?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Sửa người dùng</h1>
    </div>

    <div class="container">
        <?php
        if (isset($_SESSION['update_user_success'])) {
        ?>
            <div class="alert alert-success" role="alert">
                <?php echo $_SESSION['update_user_success'] ?>
            </div>
        <?php
        }
        ?>

        <form method="POST">

            <input type="hidden" name="id" value="<?php echo $obj['id'] ?>" />
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Username</label>
                <div class="col-sm-10">
                    <input type="text" name="username" readonly value="<?php echo $obj['username'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Role</label>
                <div class="col-sm-10">
                    <input type="radio" name="role" value="0" <?php echo ($obj['role'] == 0) ? 'checked' : '' ?>>Admin <br>
                    <input type="radio" name="role" value="1" <?php echo ($obj['role'] == 1) ? 'checked' : '' ?>>Normal user
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Fullname</label>
                <div class="col-sm-10">
                    <input type="text" name="fullname" value="<?php echo $obj['fullname'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Date of birth</label>
                <div class="col-sm-10">
                    <input type="date" name="dob" value="<?php echo $obj['dob'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Gender</label>
                <div class="col-sm-10">
                    <input type="radio" name="gender" value="1" <?php echo ($obj['gender'] == 1) ? 'checked' : '' ?>>Male <br>
                    <input type="radio" name="gender" value="2" <?php echo ($obj['gender'] == 2) ? 'checked' : '' ?>>Female
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" name="email" value="<?php echo $obj['email'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Phone</label>
                <div class="col-sm-10">
                    <input type="text" name="phone" value="<?php echo $obj['phone'] ?>">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Address</label>
                <div class="col-sm-10">
                    <input type="text" name="address" value="<?php echo $obj['address'] ?>">
                </div>
            </div>

            <input type="submit" class="btn btn-success" value="Update"></input>
            <input type="reset" class="btn btn-primary" value=Reset>
            <a href="users.php" class="btn btn-secondary ">Back</a>
        </form>
    </div>



</div>
<!-- /.container-fluid -->

<?php
require_once('includes/footer.php');
?>
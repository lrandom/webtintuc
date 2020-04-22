<?php
require_once('includes/header.php');
require_once('includes/navbar.php');
require_once('./../models/users.php');


?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Thêm người dùng</h1>
    </div>

    <div class="container">
        <?php
        if (isset($_SESSION['success'])) {
        ?>
            <div class="alert alert-primary" role="alert">
                <?php echo $_SESSION['success'] ?> <br>

            </div>
        <?php
        }
        ?>

        <form method="POST">

            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Title</label>
                <div class="col-sm-10">
                    <input type="text" name="title" required="true">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Price</label>
                <div class="col-sm-10">
                    <input type="number" name="price" required="true">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Author</label>
                <div class="col-sm-10">
                    <input type="text" name="author" required="true">
                </div>
            </div>

            <input type="submit" class="btn btn-success" value="Add book"></input>
            <input type="reset" class="btn btn-primary" value=Reset>
            <a href="index.php" class="btn btn-secondary ">Back to home page</a>
        </form>
    </div>



</div>
<!-- /.container-fluid -->

<?php
require_once('includes/footer.php');
?>
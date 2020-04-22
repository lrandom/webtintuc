<?php
require_once('includes/header.php');
require_once('includes/navbar.php');
require_once('./../models/users.php');

$users = new Users();
if (isset($_GET['action'])) {
    $action = $_GET['action'];
    switch ($action) {
        case 'delete':
            if (is_numeric($_GET['id'])) {
                $users->delete($_GET['id']);
            }
            break;

        default:
            # code...
            break;
    }
}
?>




<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Quản lý người dùng</h1>
    </div>

    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Username</th>
                    <th scope="col">Fullname</th>
                    <th scope="col">Email</th>
                    <th scope="col">Thao tác</th>
                </tr>
            </thead>
            <br>
            <a class="btn btn-primary" href="users_add.php">Thêm</a>
            <br>
            <br>

            <tbody>
                <?php

                $list = $users->getAll(0, 5);

                foreach ($list as $r) {
                ?>
                    <tr>
                        <td><?php echo $r['id'] ?></td>
                        <td><?php echo $r['username'] ?></td>
                        <td><?php echo $r['fullname'] ?></td>
                        <td><?php echo $r['email'] ?></td>
                        <td>
                            <a class="btn btn-warning" href="edit.php?id=<?php echo $r['id'] ?>">Sửa</a>
                            <a class="btn btn-danger" data-toggle="modal" data-target="#deleteUserModal">Xoá</a>
                        </td>
                    </tr>
                <?php
                }

                ?>
            </tbody>
        </table>
    </div>


</div>
<!-- /.container-fluid -->

<div class="modal fade" id="deleteUserModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Xóa không?</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="?action=delete&id=<?php echo $r['id'] ?>">Xóa chứ để làm gì</a>
            </div>
        </div>
    </div>
</div>




<?php
require_once('includes/footer.php');
?>
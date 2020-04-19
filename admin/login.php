<?php
session_start();

require_once('./../db.php');
//require_once('./commons/header.php');

if (isset($_POST['username']) && isset($_POST['pwd'])) {
    $username = $_POST['username'];
    $pwd = $_POST['pwd'];

    $db = new DB;
    $stm = $db->getPDO()->prepare('SELECT * FROM users WHERE username=:username AND pwd=:pwd');
    $stm->execute(array(':username' => $username, ':pwd' => md5($pwd)));
    $user = $stm->fetchAll();
    //echo $user['0']['role'];die();
    //var_dump($user[0]);die();
    if (count($user) == 1) {
        if ($user['0']['role'] == 0) {
            $_SESSION['user'] = $user['0'];
            header('Location:index.php');
        }else{
            echo 'Bạn không có quyền đăng nhập vào trang admin';
        }
    }else{
        echo 'not exist';
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>

<body>
    <form action="" method="POST">
        <h1>Đăng nhập</h1>
        Username: <input type="text" name="username" required="true"> <br>
        Password: <input type="password" name="pwd" required="true"> <br>
        <input type="submit" value="Đăng nhập">
    </form>
</body>

</html>
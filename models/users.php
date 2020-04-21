<?php
require_once('./../db.php');
require_once('imodel.php');

class Users extends DB implements IModel
{
    const tableName = 'users';
    public function __construct()
    {
        parent::__construct();
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    function getAll($offset, $count)
    {
        $stm = $this->db->prepare("SELECT * FROM " . self::tableName . " LIMIT $offset,$count");
        $stm->execute();
        return $stm->fetchAll();
    }

    function insert($payload)
    {

        try {
            $username = $payload['username'];
            $password = $payload['password'];
            $role = $payload['role'];
            $fullname = $payload['fullname'];
            $dob = $payload['dob'];
            $gender = $payload['gender'];
            $email = $payload['email'];
            $phone = $payload['phone'];
            $address = $payload['address'];

            $stm = $this->db->prepare('INSERT INTO ' .
                self::tableName . '(username,pwd,role,fullname,dob,gender,email,phone,address)
             VALUES(:username, :pwd, :role, :fullname, :dob, :gender, :email, :phone, :address)');
            $stm->execute(array(
                ':username' => $username,
                ':pwd' => md5($password),
                ':role' => $role,
                ':fullname' => $fullname,
                ':dob' => $dob,
                ':gender' => $gender,
                ':email' => $email,
                ':phone' => $phone,
                ':address' => $address
            ));
        } catch (\Throwable $th) {
            echo $th->getMessage();
        }

        //tra ve so ban ghi
        return $stm->rowCount();
    }

    function delete($id)
    {
        $this->db->query("DELETE FROM " . self::tableName . " WHERE id = " . $id);
    }

    function update($payload)
    {
        try {
            $id = $payload['id'];
            $role = $payload['role'];
            $fullname = $payload['fullname'];
            $dob = $payload['dob'];
            $gender = $payload['gender'];
            $email = $payload['email'];
            $phone = $payload['phone'];
            $address = $payload['address'];

            $stm = $this->db->prepare('UPDATE ' . self::tableName . ' 
            SET role = :role, fullname = :fullname, dob = :dob, gender = :gender, email = :email, phone = :phone, address = :address WHERE id = :id');
            $stm->execute(array(
                ':id' => $id,
                ':role' => $role,
                ':fullname' => $fullname,
                ':dob' => $dob,
                ':gender' => $gender,
                ':email' => $email,
                ':phone' => $phone,
                ':address' => $address
            ));
        } catch (\Throwable $th) {
            echo $th->getMessage();
        }
    }

    function getById($id)
    {
        $rows = $this->db->query("SELECT * FROM " . self::tableName . " WHERE id= $id");
        foreach ($rows as $r) {
            $row  = $r;
        }
        return $r;
    }
}

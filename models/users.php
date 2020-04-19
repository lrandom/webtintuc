<?php
class Ussers extends DB implements IModel{
    const tableName = 'users';
    public function __construct()
    {
        parent::__construct();
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    //lấy tất cả user
    function getAll($offset, $count){

    }

    //add user
    function insert($payload){

    }

    //delete user
    function delete($id){

    }

    //update user
    function update($payload){

    }

    //get user by id
    function getById($id){
        
    }
}
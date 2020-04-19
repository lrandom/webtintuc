<?php
class Category extends DB implements IModel{
    const tableName = 'category';
    public function __construct()
    {
        parent::__construct();
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    //lấy tất cả category
    function getAll($offset, $count){

    }

    //add category
    function insert($payload){

    }

    //delete category
    function delete($id){

    }

    //update category
    function update($payload){

    }

    //get category by id
    function getById($id){
        
    }
}
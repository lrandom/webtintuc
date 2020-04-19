<?php
class Tags extends DB implements IModel{
    const tableName = 'tags';
    public function __construct()
    {
        parent::__construct();
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    //lấy tất cả tag
    function getAll($offset, $count){

    }

    //add tag
    function insert($payload){

    }

    //delete tag
    function delete($id){

    }

    //update tag
    function update($payload){

    }

    //get tag by id
    function getById($id){
        
    }
}
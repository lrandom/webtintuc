<?php
class Posts extends DB implements IModel{
    const tableName = 'posts';
    public function __construct()
    {
        parent::__construct();
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    //lấy tất cả bài post
    function getAll($offset, $count){

    }

    //add post
    function insert($payload){

    }

    //delete post
    function delete($id){

    }

    //update post
    function update($payload){

    }

    //get post by id
    function getById($id){
        
    }
}
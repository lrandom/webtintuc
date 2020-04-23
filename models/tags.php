<?php
class Tags extends DB implements IModel
{
    const tableName = 'tags';
    public function __construct()
    {
        parent::__construct();
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    //lấy tất cả tag
    function getAll($offset, $count)
    {
        $stm = $this->db->prepare("SELECT * FROM " . self::tableName . " LIMIT $offset,$count");
        $stm->execute();
        return $stm->fetchAll();
    }

    //add tag
    function insert($payload)
    {
        try {
            $name = $payload['name'];

            $stm = $this->db->prepare('INSERT INTO ' . self::tableName . 'name VALUES :name');
            $stm->execute(array(
                ':name' => $name
            ));
        } catch (\Throwable $th) {
            echo $th->getMessage();
        }
        //tra ve so ban ghi
        return $stm->rowCount();
    }

    //delete tag
    function delete($id)
    {
        $this->db->query("DELETE FROM " . self::tableName . " WHERE id = " . $id);
    }

    //update tag
    function update($payload)
    {
        try {
            $name = $payload['name'];

            $stm = $this->db->prepare('UPDATE ' . self::tableName . 'SET name = :name WHERE id = :id');
            $stm->execute(array(
                ':name' => $name
            ));
        } catch (\Throwable $th) {
            echo $th->getMessage();
        }
        //tra ve so ban ghi
        return $stm->rowCount();
    }

    //get tag by id
    function getById($id)
    {
        $rows = $this->db->query("SELECT * FROM " . self::tableName . " WHERE id= $id");
        foreach ($rows as $r) {
            $row  = $r;
        }
        return $r;
    }
}

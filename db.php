<?php
class DB
{
    const DB_NAME = 'webtintuc';
    const DB_HOST = 'localhost';
    const DB_USERNAME = 'root';
    const DB_PASSWORD = '';

    protected $db;
    public function __construct()
    {
        $this->db = new PDO(
            'mysql:host='
                . self::DB_HOST . ';dbname=' . self::DB_NAME,
            self::DB_USERNAME,
            self::DB_PASSWORD
        ) or die('Cannot connect to db');
        return $this->db;
    }

    function getPDO()
    {
        return $this->db;
    }

    function close()
    {
        $this->db = null;
    }
}

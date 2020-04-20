<?php
interface IModel
{
    function getAll($offset, $count);
    function insert($payload);
    function delete($id);
    function update($payload);
    function getById($id);
}
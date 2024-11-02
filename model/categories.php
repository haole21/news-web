<?php
class category extends db {
    public function  getAllCate() {
        $sql = self::$connection ->prepare("SELECT * FROM `categories`"); 
        $sql->execute();
       $categories = array();
       $categories = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
       return $categories;
    }
   public function getNameCateById ($id){
    $sql = self::$connection ->prepare("SELECT *  FROM  `categories` WHERE ID = ".$id."");
    $sql->execute();
    $categories = array();
    $categories = $sql->get_result()->fetch_All(MYSQLI_ASSOC);
    return $categories ; 
   }
   
}
?>
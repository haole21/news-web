<?php
 class Item extends db {
   public function getAllItem (){
    $sql = self::$connection->prepare("SELECT * FROM `items`");
    $sql->execute();
    $items = array();
    $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
    return $items ; 
   }
   public function getPopularItem(){
    $sql = self::$connection -> prepare("SELECT * FROM `items`  ORDER BY`CREATE_AT`DESC LIMIT 4 ");
    $sql ->execute();
    $items = array();
    $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
    return $items ; 
}
public function getFeatureItem(){
  $sql = self::$connection -> prepare("SELECT * FROM `items` WHERE FEATURED = 1  ");
  $sql ->execute();
  $items = array();
  $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
  return $items ; 
}
public function get4LatestItem(){
  $sql = self::$connection -> prepare("SELECT * FROM `items`  ORDER BY`CREATE_AT`DESC LIMIT 4 ");
  $sql ->execute();
  $items = array();
  $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
  return $items ; 
}
public function get4NextLatestItem(){
  $sql = self::$connection -> prepare("SELECT * FROM `items`  ORDER BY`CREATE_AT`DESC LIMIT 4,4 ");
  $sql ->execute();
  $items = array();
  $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
  return $items ; 
}
public function getTrandingBusinessItem(){
  $sql = self::$connection -> prepare("SELECT * FROM `categories`, `items` WHERE `items`.`CATEGORY` = `categories`.`ID` and `categories`.`NAME` = 'Kinh doanh'");
  $sql ->execute();
  $items = array();
  $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
  return $items ; 
}
public function getNext4LatestfromPrevious4Items(){
  $sql = self::$connection->prepare("SELECT * FROM `items`  ORDER BY`CREATE_AT`DESC LIMIT 8,4 ");
  $sql ->execute();
  $items = array();
  $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
  return $items ; 
}
public function getSreach($key,$start ,$end) {
  $sql = self::$connection->prepare("SELECT * FROM `items` WHERE CONTENT LIKE ?  LIMIT ?,?");
  $keys = "%$key%";
  $sql ->bind_param("sii",$keys,$start,$end);
  $sql ->execute();
  $items = array();
  $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
  return $items ; 
}
public function getItemByID($id){
  $sql = self::$connection->prepare("SELECT * FROM `items` WHERE ID = ?");
  $sql ->bind_param('i',$id);
  $sql ->execute();
  $items = array();
  $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
  return $items ; 
 }
 }
 

?>
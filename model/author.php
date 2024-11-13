<?php
class Author extends db {
    public function   getAllAuthor() {
       $sql = self::$connection ->prepare("SELECT * FROM `users` ");
       $sql->execute();
       $author = array();
       $author = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
       return $author ; 
    }
    public function getNameAuthorByID($id){
        $sql = self::$connection->prepare("SELECT * FROM `users` WHERE ID = ?");
        $sql -> bind_param('i',$id);
        $sql->execute();
        $author = array();
        $author = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $author ; 
    }
}
?>
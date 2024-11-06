<?php
require"config.php";
require"model/db.php";
require"model/categories.php";
require"model/item.php";
require"model/author.php";
$item = new Item();
$category = new category();
$author = new Author(); 
$getAllItem = $item->getAllItem();
$getAllCate = $category->getAllCate();
$getAllAuthor = $author->getAllAuthor();
$getPopularItem = $item->getPopularItem();
$getFeatureItem = $item ->getFeatureItem();
$getTrandingBusinessItem = $item->getTrandingBusinessItem();
$get4LatestItem = $item ->get4LatestItem();
$get4NextLatestItem =$item ->get4NextLatestItem();
$getgetNext4LatestfromPrevious4Items= $item->getNext4LatestfromPrevious4Items();
?>
<?php 
include "header.php";
include "slider.php";
?>

    <!-- Featured News Slider Start -->
<?php include "feature-news.php" ?>
    <!-- Featured News Slider End -->


    <!-- News With Sidebar Start -->
   <?php include "latest-news.php" ?>
    <!-- News With Sidebar End -->
<?php include "footer.php" ?>

   
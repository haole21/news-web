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
$getTrandingBusinessItem = $item->getTrandingBusinessItem();
include"header.php" 
?> 
    <!-- Navbar End -->


    <!-- News With Sidebar Start -->
    <div class="container-fluid mt-5 pt-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title">
                                <h4 class="m-0 text-uppercase font-weight-bold">kết quả tìm kiếm: </h4>
                                <a class="text-secondary font-weight-medium text-decoration-none" href="">Xem tất cả</a>
                            </div>
                        </div>
                         <?php
                         if(isset($_GET['keyfind']) && $_GET['keyfind']!='') {
                            $getSreach=$item->getSreach($_GET['keyfind'],0,4);
                            if(empty($getSreach)){echo "Không có kết quả nào phù hợp với từ khóa ".$_GET['keyfind']."";}else{
                            foreach($getSreach as $key=>$value)
                            {
                         ?>
                        <div class="col-lg-6">
                            <div class="position-relative mb-3">
                                <img class="img-fluid w-100" src="img_news/<?php echo $value['IMAGE'] ;?>"style="object-fit: cover;">
                                <div class="bg-white border border-top-0 p-4">
                                    <div class="mb-2">
                                        <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                            href=""><?php  echo $getNameCateById = $category->getNameCateById($value['CATEGORY'] )[0]['NAME']; ?></a>
                                        <a class="text-body" href=""><small><?php 
                         $mystring = $value['CREATE_AT'];
                         $arr = explode("-", $mystring, 3);
                         $date = date_create(substr($arr[2],0,2) . "-" . $arr[1] . "-" . $arr[0]);
                         echo date_format($date, " M  d , Y");                       
                        ?></small></a>
                                    </div>
                                    <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href=""><?php echo substr($value['TITLE'],0,30)."..."  ;?></a>
                                    <p class="m-0"><?php echo substr($value['EXCERTP'],0,40)."..."  ;?></p>
                                </div>
                                <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle mr-2" src="img/user.jpg" width="25" height="25" alt="">
                                        <small>John Doe</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                    <p class="m-0"><?php echo $value['VIEWS'] ;?></p>
                                    <small class="ml-3"><i class="far fa-eye mr-2"></i></small>
                                        <small class="ml-3"><i class="far fa-comment mr-2"></i>123</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <?php }}}else{echo "Vui lòng nhập từ khóa để tìm kiếm ";} ?>
                        <div class="col-lg-12 mb-3">
                            <a href=""><img class="img-fluid w-100" src="img/ads-728x90.png" alt=""></a>
                        </div>
                  
                  
                    </div>
                </div>
                
                <div class="col-lg-4">
                    <!-- Social Follow Start -->
                    <?php include 'social-sidebar.php' ?>
                    <!-- Tags End -->
                </div>
            </div>
        </div>
    </div>
    <!-- News With Sidebar End -->


    <!-- Footer Start -->
 <?php include 'footer.php' ?>
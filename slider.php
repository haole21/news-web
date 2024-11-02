
    <!-- Main News Slider Start -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-7 px-0">
                <div class="owl-carousel main-carousel position-relative">
                <?php foreach ($getPopularItem as $key => $value){?>
                    <div class="position-relative overflow-hidden" style="height: 500px;">
                        <img class="img-fluid h-100" src="img_news/<?php echo $value['IMAGE'] ;?>" style="object-fit: cover;">
                        <div class="overlay">
                            <div class="mb-2">
                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                    href=""><?php echo $getNameCateById = $category->getNameCateById($value['CATEGORY'] )[0]['NAME']; ?></a>
                                <a class="text-white" href=""><?php 
                         $mystring = $value['CREATE_AT'];
                         $arr = explode("-", $mystring, 3);
                         $date = date_create(substr($arr[2],0,2) . "-" . $arr[1] . "-" . $arr[0]);
                         echo date_format($date, " F  d , Y");                       
                        ?></a>
                            </div>
                            <a class="h2 m-0 text-white text-uppercase font-weight-bold" href=""><?php echo $value['TITLE'] ;?></a>
                        </div>
                    </div>
                    <?php  }?>
                </div>
            </div>
            <div class="col-lg-5 px-0">
                <div class="row mx-0">
                <?php foreach ($getPopularItem as $key => $value){?>
                    <div class="col-md-6 px-0">
                        <div class="position-relative overflow-hidden" style="height: 250px;">
                            <img class="img-fluid w-100 h-100" src="img_news/<?php echo $value['IMAGE'] ;?>" style="object-fit: cover;">
                            <div class="overlay">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                        href=""><?php echo $getNameCateById = $category->getNameCateById($value['CATEGORY'] )[0]['NAME']; ?></a>
                                    <a class="text-white" href=""><small><?php 
                         $mystring = $value['CREATE_AT'];
                         $arr = explode("-", $mystring, 3);
                         $date = date_create(substr($arr[2],0,2) . "-" . $arr[1] . "-" . $arr[0]);
                         echo date_format($date, " F  d , Y");                       
                        ?></small></a>
                                </div>
                                <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href=""><?php echo substr($value['TITLE'],0,30)."..."  ;?></a>
                            </div>
                        </div>
                    </div>
                    <?php  }?>
                </div>
            </div>
        </div>
    </div>
    <!-- Main News Slider End -->
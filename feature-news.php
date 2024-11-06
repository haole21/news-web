<div class="container-fluid pt-5 mb-3">
        <div class="container">
            <div class="section-title">
                <h4 class="m-0 text-uppercase font-weight-bold">Featured News</h4>
            </div>
            <div class="owl-carousel news-carousel carousel-item-4 position-relative">
            <?php foreach ($getFeatureItem as $key => $value){?>
                <div class="position-relative overflow-hidden" style="height: 300px;">
                    <img class="img-fluid h-100" src="img_news/<?php echo $value['IMAGE'] ;?>" style="object-fit: cover;">
                    <div class="overlay">
                        <div class="mb-2">
                            <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                href=""><?php  echo $getNameCateById = $category->getNameCateById($value['CATEGORY'] )[0]['NAME']; ?></a>
                            <a class="text-white" href=""><small><?php 
                         $mystring = $value['CREATE_AT'];
                         $arr = explode("-", $mystring, 3);
                         $date = date_create(substr($arr[2],0,2) . "-" . $arr[1] . "-" . $arr[0]);
                         echo date_format($date, " M  d , Y");                       
                        ?></small></a>
                        </div>
                        <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href=""><?php echo substr($value['TITLE'],0,30)."..."  ;?></a>
                    </div>
                </div>
                <?php  }?>
            </div>
        </div>
    </div>
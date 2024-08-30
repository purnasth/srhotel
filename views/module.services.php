<?php 
/*
* Services 
*/

$serimg='';
$sercont=$sercontbanner='';
if(defined('SERVICES_PAGE')) {
    $serimg.=IMAGE_PATH.'service-img.jpg';
        $record = Features::get_all_byparnt(24);
        $i=0;
     $classes=array('yellow','orange','red','grey','orange','yellow','grey','red');
        if(!empty($record)) {
            foreach($record as $recRow) {
                if($recRow->parentId==24) {
                    $class = $classes[$i++ % 5];
                        $sercont.='
                        <div class="col-md-3 col-sm-6 ">
                                        <div class="service-box">';
                                             $sercont.='<div class="service-icon '.$class.'">';
                                                $sercont.=' <div class="front-content">
                                                    <i class="'.$recRow->fa_icon.'" aria-hidden="true"></i>
                                                    <h3>'.$recRow->title.'</h3>
                                                </div>
                                            </div>
                                            <div class="service-content">
                                                <h3>'.$recRow->title.'</h3>
                                                <p>'.$recRow->brief.'</p>
                                            </div>
                                        </div>
                                    </div>';
            }
        }
$sercontbanner.='<div class="intro inner-intro">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="page-title text-right">
                                    <h1 class="margin-auto">Hotel Facilities</h1>
                                    <p>Exceptionally Friendly & Plentiful</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>      
            <!--end of header background-->
            <section class="breadcrumb-botton-area">
            <div class="container">
            <div class="left pull-left">
            <ul>
                  <li><a href="'. BASE_URL.'home">Home</a></li>
            <li><i class="fa fa-caret-right" aria-hidden="true"></i></li>
            <li>Amenities</li>
            </ul>
            </div>
               <div class="right pull-right">
            <!-- <a class="a2a_dd" href="https://www.addtoany.com/share"><i class="fa fa-share-alt" aria-hidden="true"></i> Share</a> -->
           
            <a href="tel:+977-9864442530"><i class="fa fa-phone" style="font-size: 13px!important;"></i>+977 9864442530</a>
        </div>
            </div>
            </section>';
}
}

$jVars['module:service_img'] = $serimg;
$jVars['module:facility'] = $sercont;
$jVars['module:facilitybanner'] = $sercontbanner;

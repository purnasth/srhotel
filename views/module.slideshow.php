<?php
$reslide='';
$imglist='';
$Records = Slideshow::getSlideshow_by(1);

if(!empty($Records)) {
    $reslide.='<!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">';

    $i=1; 
    foreach($Records as $RecRow) {   
        $file_path = SITE_ROOT.'images/slideshow/'.$RecRow->image;
        if(file_exists($file_path) and !empty($RecRow->image)) {
            $actv = ($i==1)?' active':''; 
            $reslide.='<div class="item '.$actv.' slide-'.$i.'" style="background-image: url('.IMAGE_PATH.'slideshow/'.$RecRow->image.');backgroudn-position: center right;">             
                <div class="carousel-caption nhs-caption nhs-caption2"> 
                     <div class="thm-container"> 
                         <div class="box valign-bottom"> 
                             <div class="content text-center"> 
                                 <h2 data-animation="animated fadeInUp" class="this-title">'.ucwords($RecRow->title).'</h2> 
                                <!-- <p data-animation="animated fadeInDown">'.strip_tags($RecRow->content).'</p>
                                <a data-animation="animated fadeInRight" href="#" class="nhs-btn">know more</a> -->
                             </div> 
                        </div>
                    </div>
                </div>                
            </div>';
        }
    $i++; }


    $reslide.='</div>
    <!-- Controls -->
    <a class="left carousel-control" href="#minimal-bootstrap-carousel" role="button" data-slide="prev">
        <i class="fa fa-angle-left"></i>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#minimal-bootstrap-carousel" role="button" data-slide="next">
        <i class="fa fa-angle-right"></i>
        <span class="sr-only">Next</span>
    </a>';
    foreach($Records as $RecRow) {   
        $file_path = SITE_ROOT.'images/slideshow/'.$RecRow->image;
        if(file_exists($file_path) and !empty($RecRow->image)) {
            $imglist.='{src: "'.IMAGE_PATH.'slideshow/'.$RecRow->image.'",overlaytext: "'.$RecRow->title.'"},';
        }
    }
}
$jVars['module:slideshow-list'] = $imglist;
$jVars['module:slideshow'] = $reslide;

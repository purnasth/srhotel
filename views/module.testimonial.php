<?php 
/*
* Testimonial Header Title
*/
$tstimg='';
$tstHtitle='';

if(defined('REVIEWS_PAGE')) {
    $tstimg.=IMAGE_PATH.'reviews-img.jpg';

    $tstHtitle.='<h1>Review List</h1>
    <div class="text-center des-ico">
        <img src="'.IMAGE_PATH.'stroke.png" alt="img-border" class="img-respons">
    </div>';

    $tstRec = Testimonial::get_alltestimonial();
    if(!empty($tstRec)) {        
        foreach($tstRec as $tstRow) {
            $tstHtitle.='<div class="owl-item col-sm-6">
                <div class="item skin flat ">
                    <div class="layer-media">
                        <img src="'.IMAGE_PATH.'testimonial/'.$tstRow->image.'" alt="'.$tstRow->name.'">
                    </div>
                    <div class="layer-content">
                        <div class="">
                            <p>'.strip_tags($tstRow->content).'</p>
                            <p class="name">&ndash; <strong>'.$tstRow->name.', '.$tstRow->country.'</strong> (Via : '.$tstRow->via_type.')</p>
                        </div>
                    </div>
                </div>
            </div>';
        }
    }
}

$jVars['module:reviews_img'] = $tstimg;
$jVars['module:testimonial-title'] = $tstHtitle;


/*
* Testimonial Rand
*/
$tstHead='';

$tstRand = Testimonial::get_by_rand();
if(!empty($tstRand)) {
	$tstHead.='<!-- Quote | START -->
	<div class="section quote fade">
		<div class="center">
	    
	        <div class="col-1">
	        	<div class="thumb"><img src="'.IMAGE_PATH.'testimonial/'.$tstRand->image.'" alt="'.$tstRand->name.'"></div>
	            <h5><em>'.strip_tags($tstRand->content).'</em></h5>
	            <p><span><strong>'.$tstRand->name.', '.$tstRand->country.'</strong> (Via : '.$tstRand->via_type.')</span></p>
	        </div>
	        
	    </div>
	</div>
	<!-- Quote | END -->';
}

$jVars['module:testimonial-rand'] = $tstHead;


/*
* Testimonial List
*/
$restst='';
$tstRec = Testimonial::get_alltestimonial();
if(!empty($tstRec)) {
    $restst.='<div class="row testmon owl-carousel owl-theme">
                ';
                foreach($tstRec as $tstRow) {
                    $restst.='<div class="col-md-12 col-sm-6">
                    <div class="single-testimonial-item">
                                <div class="testimonial">
                                    <p>'.strip_tags($tstRow->content).'</p>
                                </div> 
                            <div class="client-info">
                                <div class="img-box">
                                     <a href="'.$tstRow->linksrc.'" target="_blank">
                                    <img src="'.IMAGE_PATH.'testimonial/'.$tstRow->image.'" alt="'.$tstRow->name.'" alt="'.$tstRow->name.'"></a>
                                </div>
                                <div class="title-box">
                                    <h4>'.$tstRow->name.'</h4>
                                    <p>'.$tstRow->country.'</p>
                                </div> 
                            </div>
                        </div>
                          </div>';
                }
                $restst.='</div>';
}

$jVars['module:testimonialList'] = $restst;
?>
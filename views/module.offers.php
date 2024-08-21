<?php 
$resoffr='';
$resrandoffr='';

if(defined('OFFERS_PAGE')) {
    $offrRec = Offers::get_offer_by();
    if($offrRec) {
        $resoffr.='<div class="section panel hero full fade" style="background:#555;">
            <div class="slider">';
                foreach($offrRec as $offrRow) {
                    $file_path = SITE_ROOT.'images/offers/'.$offrRow->image;
                    if(file_exists($file_path) and !empty($offrRow->image)) {
                        $linkTarget = ($offrRow->linktype == 1)? ' target="_blank" ' : ''; 
                        $linksrc    = ($offrRow->linktype != 1)? BASE_URL.$offrRow->linksrc : $offrRow->linksrc;
                        $linkstart  = ($offrRow->linksrc!='')? '<a class="button" href="'.$linksrc.'" '.$linkTarget.'>' : '<a class="button" href="javascript:void(0);">';
                        $linkend    = ($offrRow->linksrc!='')? '</a>' : '</a>' ;

                        $resoffr.='<div class="item feature">
                            <div class="back" data-image="'.IMAGE_PATH.'offers/'.$offrRow->image.'"></div>
                            <div class="details">
                                <h1>Full Day Sightseeing</h1>
                                <p>'.strip_tags($offrRow->content).'</p>
                                <p>'.$linkstart.'Book Package <i class="icon ion-ios-arrow-right"></i>'.$linkend.'</p>
                            </div>
                            <div class="screen">
                                <div class="back" data-image="'.IMAGE_PATH.'offers/'.$offrRow->image.'"></div>
                            </div>
                        </div>';

                    }
                }

            $resoffr.='</div> 
            <div class="slider-nav">
                <a class="prev"><i class="icon ion-ios-arrow-left"></i></a>
                <a class="next"><i class="icon ion-ios-arrow-right"></i></a>
            </div>  
        </div>';
    }

    // Rand offer
    $randRec = Offers::get_offer_rand();
    if(!empty($randRec)) {
        $file_path = SITE_ROOT.'images/offers/'.$randRec->image;
        if(file_exists($file_path) and !empty($randRec->image)) {
            $linkTarget = ($randRec->linktype == 1)? ' target="_blank" ' : ''; 
            $linksrc    = ($randRec->linktype != 1)? BASE_URL.$randRec->linksrc : $randRec->linksrc;
            $linkstart  = ($randRec->linksrc!='')? '<a href="'.$linksrc.'" '.$linkTarget.'>' : '<a href="javascript:void(0);">';
            $linkend    = ($randRec->linksrc!='')? '</a>' : '</a>' ;
            $resrandoffr.='<div class="section panel">
                <div class="item fade">
                    <div class="back" data-image="'.IMAGE_PATH.'offers/'.$randRec->image.'"></div>
                    <div class="panel-button">
                        <div class="button-container">
                            '.$linkstart.$randRec->title.$linkend.'
                            <span>Our Offer <i class="icon ion-ios-arrow-right"></i>
                        </div>
                    </div>
                </div>

            </div>';
        }
    }

}

$jVars['module:offers-list'] = $resoffr;
$jVars['module:offers-rand'] = $resrandoffr;
<?php
/*
* Top Social Links
*/
$socialRec = SocialNetworking::getSocialNetwork();

$resocl=$socialfooter='';
$booking_code = Config::getField('hotel_code', true);
if(!empty($socialRec)) {
	$resocl.='<div class=" hidden-xs">     
                    ';
                   foreach($socialRec as $socialRow) {  
                    $resocl.='
                            <div class="topbar-dropdown social-block">
                                <ul class="list-inline">
                                    <li><a class="title"  href="'.$socialRow->linksrc.'" target="_blank"><i class="fa '.$socialRow->image.'"></i></a>
                                    </li>
                                </ul>
                            </div>
                        ';
                    }
                    // backup for below
                 $resocl____ =' <div class="toplinks">
                <ul class="list-inline">
                    <li> <a target="blank" href="'.BASE_URL.'images/insidebrochure.pdf">Brochure</a> </li>
                    <li> <a target="blank" href="'.BASE_URL.'images/tariff.pdf">Tariff </a> </li>
                </ul>
             </div>             
                </div> ';
                
                $resocl.=' <div class="toplinks">
                <ul class="list-inline">
                    <li> <a target="blank" href="'.BASE_URL.'result.php?hotel_code='.$booking_code.'">Book Room</a> </li>
                    <li> <a href="https://thesrhotel.com/event">Enquiry</a> </li>
                </ul>
             </div>             
                </div> ';

    $socialfooter.='<ul class="social23">';
        foreach($socialRec as $socialRow) {  
                $socialfooter.=' <li><a href="'.$socialRow->linksrc.'" target="_blank"><i class="fa '.$socialRow->image.'"></i></a></li>';
            }
                 $socialfooter.='</ul>
                 
                ';            
}

$jVars['module:socilaLinktop']= $resocl;

$jVars['module:socialbotttom']= $socialfooter;


/*
* Home social link
*/
$ressl='';

if(!empty($socialRec)) {
    $ressl.='<div class="widget about-us-widget col-sm-3 ">
        <ul class="nav">';
        foreach($socialRec as $socialRow) {             
        	$ressl.='<li><a href="'.$socialRow->linksrc.'" target="_blank">
            <i class="fa '.$socialRow->image.'"></i>
            </a></li>';
        }
        $ressl.='</ul>
    </div>';
}

$jVars['module:socilaLinkbtm'] = $ressl;

if(!empty($siteRegulars->whatsapp_a)){
$whatsapp='
<div class="messenger">
<a href="'.$siteRegulars->whatsapp_a.'" target="_blank"><img src="'.BASE_URL.'template/cms/images/whatsapp.png"></a>
</div>';
}
else{
    $whatsapp='';
}

$jVars['module:footer-whatsapp'] = $whatsapp;

?>
<?php
$resinndetail= $resinnbanner=$banartlink=$imageList='';
$configRec = Config::find_by_id(1);

if(defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
	$slug = addslashes($_REQUEST['slug']);
	$recRow = Article::find_by_slug($slug);
	if(!empty($recRow)) {
		if($recRow->image != "a:0:{}") { 
			$imageList = unserialize($recRow->image);
			$imgno = array_rand($imageList);
			$file_path = SITE_ROOT.'images/articles/'.$imageList[$imgno];
			if(file_exists($file_path)) {
				$imglink = IMAGE_PATH.'articles/'.$imageList[$imgno];
				$banartlink=IMAGE_PATH.'articles/'.$imageList[$imgno];
			}
			else {
				$imglink = IMAGE_PATH.'preference/banner/'.$configRec->default_banner_upload;
				$banartlink = IMAGE_PATH.'preference/banner/'.$configRec->default_banner_upload;
			}
		}
		else {
				$imglink = IMAGE_PATH.'preference/'.$configRec->default_banner_upload;
				$banartlink = IMAGE_PATH.'preference/'.$configRec->default_banner_upload;
		}
        if(!empty($imageList)){
            $fstdivclass=" col-md-6 col-sm-6 ";
            $secdivclass=" col-md-6 col-sm-6 ";
        }
        else{
            $fstdivclass=" col-md-12 col-sm-12 ";
            $secdivclass=" hidden";
        }
		$rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));	
		$content = !empty($rescontent[1])?$rescontent[1] : $rescontent[0];

		  $resinndetail.='<div class="'.$fstdivclass.'">
                <div class="text-left single-content">
                '.$content.'
                </div>        
            </div>

            <div class="padding-space"> </div>
            <div class="'.$secdivclass.' ">
                <div class="single-room-carousel owl-carousel owl-theme">';
                if(!empty($imageList)){
                	foreach ($imageList as $imgs) {
								$resinndetail.='
								    <div class="item-single-room">
								        <div class="popup-gallery">
								            <img src="'.IMAGE_PATH.'articles/'.$imgs.'" alt="">
								        </div>
								    </div>';
                }  
            }          

            $resinndetail.='</div>         
            				</div>';

 $resinnbanner.='<div class="intro inner-intro" style="    background: url(../../images/galler.jpg) no-repeat scroll bottom center/cover !important;">
			          <div class="row">
			               <div class="col-md-12">
			                   <div class="page-title text-right">
			                       <h1 class="margin-auto">'.$recRow->title.'</h1>
			                       <p>'.$recRow->sub_title.' </p>
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
			                <li><a href="index.html">Home</a></li>
			                <li><i class="fa fa-caret-right" aria-hidden="true"></i></li>
			                <li>'.$recRow->title.'</li>
			            </ul>
			        </div>
			        <div class="right pull-right">
			            <a class="a2a_dd" href="https://www.addtoany.com/share"><i class="fa fa-share-alt" aria-hidden="true"></i> Share</a>
			        </div> 
			    </div>
			</section>';
	}
    else {
		redirect_to(BASE_URL);
	}    
}

$jVars['module:inner_detail']= $resinndetail;
$jVars['module:inner_banner']= $resinnbanner;
/*
* Home page 
*/
$resinnh='';

if(defined('HOME_PAGE')) {
	$innRow = Article::find_by_id(15);
	if(!empty($innRow)) {
		$cn=1;
			
			$imglink='';
			if($innRow->image != "a:0:{}") { 
				$imageList = unserialize($innRow->image);
				$imgno = array_rand($imageList);
				$file_path = SITE_ROOT.'images/articles/'.$imageList[$imgno];
				if(file_exists($file_path)) {
					$imglink = IMAGE_PATH.'articles/'.$imageList[$imgno];
				}
				else {
					$imglink = IMAGE_PATH.'preference/'.$configRec->default_banner_upload;;
				}
			}
			else {
				$imglink = IMAGE_PATH.'preference/'.$configRec->default_banner_upload;;
			}

			$content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($innRow->content));   
    		$readmore='';
    		if(!empty($innRow->linksrc)) {
    			$linkTarget = ($innRow->linktype == 1)? ' target="_blank" ' : ''; 
    			$linksrc  = ($innRow->linktype == 1)? $innRow->linksrc : BASE_URL.$innRow->linksrc;
    			$readmore = '<a data-animation="animated fadeInRight" href="'.$linksrc.'" class="nhs-btn">Read more</a>';
    		}
    		else {
    			$readmore = (count($content) > 1) ? '<a data-animation="animated fadeInRight" href="'.BASE_URL.'page/'.$innRow->slug.'" class="nhs-btn">Read more</a>' : '' ;
    		}

    		$resinnh.='<div class="about-content-ck">
                <div class="col-md-6 mx-auto d-flex align-item-center text-center ">
                    <div class="single-content">  
                        <h3>Welcome to <span>'.$innRow->sub_title.'</span></h3>
                        <p>'.$content[0].'  </p>
                        <a href="'.BASE_URL.'page/about" class="btn btn-cta">Read More </a>
                      
						

						
                    </div>
                </div>
			';
			$resinnh.='<div class="col-md-12" style="z-index: 0;">
						<div class="text-left">
							<div class="popup-gallery">
							<div class="row">';
					   foreach ($imageList as $k=>$imgs) {
						if($k==2){
							$resinnh.='
							<section class="col-md-12 header-video">
								<div id="hero_video">
									<video id="video1" autoplay="" loop="" muted="">
										<source src="'. BASE_URL .'template/cms/images/video.mp4" type="video/mp4">
										does not support
									</video>
								</div>
							</section>';
						}
						$resinnh.='
						<!-- <div class="col-md-2">
							            <div class="space-bottom-large"> </div>
						                <a class="image-popup-no-margins"> <img src="'.IMAGE_PATH.'articles/'.$imgs.'" alt=""></a>
						            </div> -->
									';
					}
					$resinnh.='</div></div>
			</div>
			<div class="parallax-content">
        <div class="spacer"></div>

        <div class="text-container">
            <h4 class="animated-text">your perfect destination for a luxurious and comfortable stay. </h4>
        </div>

        <div class="spacer"></div>
    </div>
			</div>';
				
	}
}
$jVars['module:banartlink'] = $banartlink;
$jVars['module:home_article'] = $resinnh;

?>
<?php
$resinndetail= $resinnbanner=$banartlink='';

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
				$imglink = IMAGE_PATH.'static/inner-img.jpg';
				$banartlink = IMAGE_PATH.'static/inner-img.jpg';
			}
		}
		else {
			$imglink = IMAGE_PATH.'static/inner-img.jpg';
			$banartlink = IMAGE_PATH.'static/inner-img.jpg';
		}

		$rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));	
		$content = !empty($rescontent[1])?$rescontent[1] : $rescontent[0];

		  $resinndetail.='<div class="col-md-6 col-sm-6 ">
                <div class="text-left single-content">
                '.$content.'
                </div>        
            </div>

            <div class="padding-space"> </div>
            <div class="col-md-6 col-sm-6 ">
                <div class="single-room-carousel owl-carousel owl-theme">';
                	foreach ($imageList as $imgs) {
								$resinndetail.='
								    <div class="item-single-room">
								        <div class="popup-gallery">
								            <img src="'.IMAGE_PATH.'articles/'.$imgs.'" alt="">
								        </div>
								    </div>';
				}            

            $resinndetail.='</div>         
            				</div>';

 $resinnbanner.='<div class="intro">
			        <div class="container-fluid">
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
			</div>      
			<!--end of header background-->
			<section class="breadcrumb-botton-area">
			    <div class="container">
			        <div class="left pull-left">
			            <ul>
			                     <li><a href="'. BASE_URL.'home">Home</a></li>
			                <li><i class="fa fa-caret-right" aria-hidden="true"></i></li>
			                <li>'.$recRow->title.'</li>
			            </ul>
			        </div>
					<div class="right pull-right">
						<!-- <a class="a2a_dd" href="https://www.addtoany.com/share"><i class="fa fa-share-alt" aria-hidden="true"></i> Share</a> -->
					   
						<a href="tel:+977-9864442530"><i class="fa fa-phone"></i>+977 9864442530</a>
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
	$recInn = Article::homepageArticle(4);
	if(!empty($recInn)) {
		$cn=1;
				foreach($recInn as $innRow) {
			$imglink='';
			if($innRow->image != "a:0:{}") { 
				$imageList = unserialize($innRow->image);
				$imgno = array_rand($imageList);
				$file_path = SITE_ROOT.'images/articles/'.$imageList[$imgno];
				if(file_exists($file_path)) {
					$imglink = IMAGE_PATH.'articles/'.$imageList[$imgno];
				}
				else {
					$imglink = IMAGE_PATH.'inner-img.jpg';
				}
			}
			else {
				$imglink = IMAGE_PATH.'inner-img.jpg';
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

    		$resinnh.='<div class="row">
                <div class="col-md-5">
                    <div class="text-left single-content">  
                        <h3>Welcome to <span>'.$innRow->sub_title.'</span><br /></h3>
                        <p>'.$content[0].'  </p>
                        <div class="about-links"> <a href="'.BASE_URL.'page/'.$innRow->slug.'" class="btn-text">Read More</a></div>
                      
                    </div>
                </div>
			';
			$resinnh.='<div class="col-md-7">
						<div class="text-left">
							<div class="popup-gallery">';
					   foreach ($imageList as $imgs) {
						$resinnh.='<div class="col-md-6 col-sm-12 col-xs-12">
							 <div class="space-bottom-large"> </div>
						<a class="image-popup-no-margins"> <img src="'.IMAGE_PATH.'articles/'.$imgs.'" alt=""></a>
						</div>';
					}
					$resinnh.='</div>
			</div>
			</div>';
				}
	}
}
$jVars['module:banartlink'] = $banartlink;
$jVars['module:home_article'] = $resinnh;

?>
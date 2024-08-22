<?php
/*
 * Home accmodation list
 */
$reshmpkg = '';

if (defined('HOME_PAGE')) {
	$acid = Package::get_accommodationId();
	if (!empty($acid)) {
		$subRec = Subpackage::getPackage_limit($acid, 3);
		if (!empty($subRec)) {
			$reshmpkg .= '<div class="room-acc">';
			foreach ($subRec as $subRow) {
				$file_path = SITE_ROOT . 'images/subpackage/image/' . $subRow->image2;
				if (file_exists($file_path) and !empty($subRow->image2)) {
					$reshmpkg .= '<div class="fluid-know-area">
						<div class="work-image-ser">
							<img src="' . IMAGE_PATH . 'subpackage/image/' . $subRow->image2 . '" class="img-responsive" alt="' . $subRow->title . '">
						</div>
						<div class="service-promo">
							<div class="promo-content">
								<div class="know-top">
									<h2><a href="' . BASE_URL . 'subpackage/' . $subRow->slug . '">' . $subRow->title . '</a></h2>
									<h3>' . $subRow->sub_title . '</h3>
									<p>' . strip_tags($subRow->detail) . '</p>
								</div>
								<div class="know-bot">';
					$saveRec = unserialize($subRow->feature);
					if ($saveRec != null) {
						foreach ($saveRec as $fetRow) {
							$featureTitle = $fetRow[0][0];
							$featureList = @array_slice(array_reverse($fetRow[1]), 0, 4);
							if ($featureList) {
								$reshmpkg .= '<ul>';
								foreach ($featureList as $featureId) {
									$icoRec = Features::get_by_id($featureId);
									if ($icoRec) {
										$reshmpkg .= '<li>
														<div class="about-img"><img src="' . IMAGE_PATH . 'features/' . $icoRec->image . '" alt="' . $icoRec->title . '" class="img-responsive"></div>
														<div class="about-cont"><p>' . $icoRec->title . '</p></div>
													</li>';
									}
								}
								$reshmpkg .= '</ul>';
							}
						}
					}
					$reshmpkg .= '</div>
							</div>
						</div>
					</div>';
				}
			}
			$reshmpkg .= '</div>';
		}
	}
}

$jVars['module:home-accommodation'] = $reshmpkg;


/*
 * Home package list
 */

$actlist = '';
if (defined('HOME_PAGE')) {
	$actRec = Package::get_pkg_by_id(5);


	if (!empty($actRec)) {
		$subaRec = Subpackage::getPackage_limit(5);

		//print_r($subaRec);
		if (!empty($subaRec)) {
			$actlist .= '
										<div class="room-carousel owl-carousel owl-theme">
											';
			foreach ($subaRec as $subaRow) {


				$imgbulk = unserialize($subaRow->image);
				if (!empty($imgbulk[0])) {
					$imglink = $imgbulk[0];
					$file_path = SITE_ROOT . 'images/subpackage/banner/' . $imgbulk[0];


					if (file_exists($file_path) && !empty($imgbulk[0])) {

						//echo 'tee';
						$actlist .= '<div class="item-room">
											<div class="room-image">
											<img src="' . IMAGE_PATH . 'subpackage/banner/' . $imgbulk[0] . '" alt="' . $subaRow->title . '">
											</div>

											<div class="room-text">
											<a href="' . BASE_URL . '/subpackage/' . $subaRow->slug . '"><h2>' . $subaRow->title . '</h2></a>
										
										<!--	<p>' . substr(strip_tags($subaRow->detail), 0, 50) . '....</p> -->
										<p class="room-description-clamp">' . $subaRow->detail . '</p>
											</div>
											<div class="ro-text-two">
											<div class="room-book pull-left">
											<a href="' . BASE_URL . '/subpackage/' . $subaRow->slug . '" class="res-btn">View Room</a>
											</div>
											<div class="room-price pull-right">
											<p>' . $subaRow->onep_price . ' ' . $subaRow->threep_price . ' <span>Per Night</span></p>
											</div>
											</div>
											</div>
											';
					}
				}
			}
			$actlist .= '
						</div>
						';
		}
	}
}

$jVars['module:home-activitylist'] = $actlist;

$reshplist = '';

if (defined('HOME_PAGE')) {
	$pkgRec = Package::get_pkg_by_id(7);
	if (!empty($pkgRec)) {
		$reshplist .= '<div class="container" >
					        <div class="row" >
					            <div class="col-md-12 col-sm-12 col-xs-12">
					                <div class="section_title">
					                <h2>relax with</h2>
					                <h3>OUR attractions</h3>
					                </div>
					                <p>
					                 SR Hotel offers the finest tradition of Nepalese hospitality combined with international standard of luxury for holding meetings, workshop, conference, seminars, wedding in international standard.
					                </p><br />
					            </div>
					        </div> 
					    </div>';


		$subRec = Subpackage::getPackage_limit(7);
		if (!empty($subRec)) {
			$reshplist .= '<div class="container">
    						<div class="attractions-carousel owl-carousel owl-theme">
    							';
			foreach ($subRec as $subRow) {
				$file_path = SITE_ROOT . 'images/subpackage/image/' . $subRow->image2;
				if (file_exists($file_path) and !empty($subRow->image2)) {
					$reshplist .= '<div class="item-attractions">
			        		<div class="col-md-4 col-sm-4 col-xs-12">
							<div class="attractions-content">
								<h4>' . $subRow->title . '</h4>
								<p>' . strip_tags($subRow->detail) . '</p>
								<a href="' . BASE_URL . 'subpackage/' . $subRow->slug . '"><div class="btn btn-cta" >See more &nbsp; <i class="fa fa-arrow-right"></i> </a>
								</div>
							</div>
						</div>
							';

					$reshplist .= '<div class="col-md-8 col-sm-8 col-xs-12">
											<img class="img-responsive-attractions" src="' . IMAGE_PATH . 'subpackage/image/' . $subRow->image2 . '" alt="' . $subRow->title . '">
										</div>
										</div>';
				}
			}
			$reshplist .= '</div>
									</div>';
		}


	}
}

$jVars['module:home-packagelist'] = $reshplist;

$pkgbnn = '';
$pkgbdcrm = '';
$pkgresult = '';
$resubpkg = '';
$roomlist = '';
$hroom = '';
if (defined("PACKAGE_PAGE") and isset($_REQUEST['slug'])) {

	$slug = addslashes($_REQUEST['slug']);
	$pkgRec = Package::find_by_slug($slug);

	if ($pkgRec) {
		// Header image

		$img_hdpath = SITE_ROOT . 'images/package/imgheader/' . $pkgRec->header_image;
		if (!empty($pkgRec->header_image) and file_exists($img_hdpath)) {
			$pkgbnn .= '
			<div class ="about-bg" style="background-image: url(' . IMAGE_PATH . 'package/imgheader/' . $pkgRec->header_image . ') !important;">
			<div class="container">
				<div class="rl-banner style2">
					<h2>Rooms List View</h2>
					<ul>
						<li><a href="' . BASE_URL . '">Home</a></li>
						
						<li><span class="active">' . $pkgRec->title . '</span></li>
					</ul>
				</div>
				
			</div>
		</div>';
		} else {
			$pkgbnn .= '<img class="img-responsive" src="' . BASE_URL . 'template/web/image/innerslider.jpg" alt="header image">';
		}



		// Package detail  
		if ($pkgRec->type == 0) {
			//non room packagetype 
			if (!empty($pkgRec->banner_image)) {
				$bimg = unserialize($pkgRec->banner_image);
				if ($bimg) {


					$pkgresult .= '<section id="discover" class="content">
						        <div class="container">
						            <div class="row">
						                <div class="col-md-6">
						                    <div class="text-left single-content">
						                          
						                        <h3>Best<span> restaurant</span> with <br>Multi Cuisine
												</h3>
												<p>
												If you chose to stay with us you will enjoy all day dining with delicious world class cuisine. Whether you are looking for a short weekend break or a longer holiday, we offer a range of packages for the best price. Enjoy your vacancy with breakfast, lunch and dinner with snacks and special meals on special occasions.. 
						                           <br /><br />
													
						                        </p>
						                    </div>
						                </div>
						                <div class="col-md-6">
						<div class="single-room-carousel owl-carousel owl-theme">
						 ';
					foreach ($bimg as $imgs) {
						$pkgresult .= '
								                <div class="item-single-room">
								                    <div class="popup-gallery">
								                		<img src="' . IMAGE_PATH . 'package/banner/' . $imgs . '" alt="">
								                	</div>
								            	</div>';
					}

					$pkgresult .= '</div>
						                </div>
						                
						            </div>
						            <!-- end row -->
						        
						        <!-- end container -->
						    </section>
						<section id="rooms" class="room-section">
						<div class="container">
						<div class="row">

						<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<i class="fa fa-glass" aria-hidden="true"></i>
						</div>
						<div class="text">
						<h4><a href="#">Bar</a></h4>
						<p>
						Opening time:11am-11pm
						</p>
						</div>
						</div>
						</div>

						

						<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<i class="fa fa-coffee" aria-hidden="true"></i></div>
						<div class="text">
						<h4><a href="#">Coffee & Tea</a></h4>
						<p>
						Varieties of Tea and Coffee.
						</p>
						</div>
						</div>
						</div>

						<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<i class="fa fa-music" aria-hidden="true"></i>
						<div class="text">
						<h4><a href="#">Music</a></h4>
						<p>
						Music of your choice.
						</p>
						</div>
						</div>
						</div>
						</div>

						<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<i class="fa fa-wifi" aria-hidden="true"></i>
						<div class="text">
						<h4><a href="#">Wifi</a></h4>
						<p>
						Strong internet connectivity.
						</p>
						</div>
						</div>
						</div>
						</div>

						<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<i class="fa fa-cutlery" aria-hidden="true"></i>
						</div>
						<div class="text">
						<h4><a href="#">Multi Cuisine</a></h4>
						<p>
						From variety of Nepali food to delicious international dishes.
						</p>
						</div>
						</div>
						</div>

						<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<i class="fa fa-spoon" aria-hidden="true"></i>
						<div class="text">
						<h4><a href="#">Experienced Chef</a></h4>
						<p>
						Highly qualified and experienced Chefs.
						</p>
						</div>
						</div>
						</div>
						</div>
						</div>
						</section>	

						<div class="restaurant-section">
						    <div class="container">
						' . $pkgRec->content . '
						            </div>
						        </div>';
				}
			}

		} else //room package
		{
			if (!empty($pkgRec->banner_image)) {
				$bimg = unserialize($pkgRec->banner_image);
				if ($bimg) {



					$spkgresult .= '<section>
				<div class="block remove-btm-gap">
					<div class="container"><div class="homey-imgs">';
					foreach ($bimg as $kk => $vv) {
						$spkgresult .= '
							<div class="homey-images">
								<img src="' . IMAGE_PATH . 'package/banner/' . $vv . '" alt="' . $spkgRec->title . '">
							</div><!--homey-images end-->';
					}
					$spkgresult .= '</div><!--homey-imgs end-->
					</div>
				</div>
			</section>';

					$pkgresult .= '<div id="owl-banner">';
					foreach ($bimg as $k => $v) {
						$pkgresult .= '<div class="item"><img class="img-responsive" src="' . IMAGE_PATH . 'package/banner/' . $v . '" alt="' . $pkgRec->title . '"></div>';
					}

					$pkgresult .= '</div>';
				}
			}
			/*$pkgresult.=$pkgRec->content;
				  $pkgresult.='.<jcms:module:package-roomlist/>.';*/
		}
	}
}
$jVars['module:package-roomlist'] = $pkgresult;
$jVars['module:package-roomlist-background'] = 'style="background: url(../../images/inner-header2.jpg) no-repeat scroll bottom center/cover !important;"';




/*
 * Sub package 
 */
$resubpkgDetail = $resubpkgbann = $bcont = $banlink = '';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {
	$slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
	$subpkgRec = Subpackage::find_by_slug($slug);

	if (!empty($subpkgRec)) {
		$pkgImg = $subpkgRec->image;
		$parentid = $subpkgRec->type;
		$parentName = Package::find_by_id($parentid);
		$banimg = $subpkgRec->image2;
		$file_path = SITE_ROOT . 'images/subpackage/image/' . $banimg;
		if (file_exists($file_path) && !empty($banimg)) {
			$banlink = IMAGE_PATH . 'subpackage/image/' . $banimg;
		} else {
			$banlink = IMAGE_PATH . 'static/inner-header.jpg';
		}

		if ($pkgImg != "a:0:{}") {
			$pkgImgList = unserialize($pkgImg);
			foreach ($pkgImgList as $pkgImg) {

				$file_path = SITE_ROOT . 'images/subpackage/' . $pkgImg;

				if (file_exists($file_path)) {

					$imglink = IMAGE_PATH . 'subpackage/' . $pkgImg;
				} else {
					$imglink = IMAGE_PATH . 'static/package_img.jpg';
				}
			}
		}

		$resubpkgbann .= '<div class="intro inner-intro">
					       <div class="row">
							     <div class="col-md-12">
							        <div class="page-title text-right">
							            <h1 class="margin-auto">' . $subpkgRec->title . '</h1>
							             <p>' . $subpkgRec->sub_title . '</p>
							         </div>
							      </div>           
						    </div>
						</div>
					</div>   ';

		$resubpkgbann .= '<section class="breadcrumb-botton-area">
							<div class="container">
								<div class="left pull-left">
									<ul>
									<li><a href="index.html">Home</a></li>
									<li><i class="fa fa-caret-right" aria-hidden="true"></i></li>
									<li>' . $subpkgRec->title . '</li>
									</ul>
									</div>
									<div class="right pull-right">
									<a class="a2a_dd" href="https://www.addtoany.com/share"><i class="fa fa-share-alt" aria-hidden="true"></i> Share</a>
								</div>  
							</div>
						</section>';

		$faclist = '';
		if ($subpkgRec->type == 5) {
			$saveRec = unserialize($subpkgRec->feature);
			if ($saveRec != null) {
				foreach ($saveRec as $fetRow) {
					$featureTitle = $fetRow[0][0];
					$featureList = $fetRow[1];

					if ($featureList) {
						$faclist .= '<div class="room-fac-wrapper">
					<h2>' . $featureTitle . '</h2>
					<div class="row">';
						foreach ($featureList as $featureId) {
							$icoRec = Features::get_by_id($featureId);
							if (!empty($icoRec)) {
								$faclist .= '
								<div class="col-lg-2 col-sm-3 col-xs-6 center">
								<span>
								<img  class="icons" src="' . IMAGE_PATH . 'features/' . $icoRec->image . '" 
									alt="' . $icoRec->title . '" height="60px"/>
								</span>
								<br> <span class="center">' . $icoRec->title . '</span>
								</div>';
							}
						}
						$faclist .= '</div>
						</div>';
					}
				}
			}
			/*Room subpackage*/
			$resubpkgDetail .= '<section id="room-single-section" class="content-room-single">
						    <div class="container">
						        <div class="row">
						       <div class="col-md-9 col-sm-12 col-xs-12">
						            <div class="single-room-carousel owl-carousel owl-theme">';
			$subpkgImg = $subpkgRec->image;
			if ($subpkgImg != "a:0:{}") {
				$subimageList = unserialize($subpkgImg);
				foreach ($subimageList as $imgs) {
					$resubpkgDetail .= '
								                <div class="item-single-room">
								                    <div class="popup-gallery">
								                		<img src="' . IMAGE_PATH . 'subpackage/banner/' . $imgs . '" alt="">
								                	</div>
								            	</div>';
				}
			}
			$resubpkgDetail .= '</div>
										        </div>
										        ';
			$resubpkgDetail .= '<div class="col-md-3 col-sm-12 col-xs-12">
							<div class="row">
							
							<h2> Make <br><span> Reservation</span></h2>

							</div>
								' . $jVars['module:inner-booking-form'] . '
								
								<!--<p class="text-justify">' . substr(strip_tags($subpkgRec->detail), 0, 400) . '</p>-->
								</div> ';

			$resubpkgDetail .= '<div class="col-md-12 col-sm-12 col-xs-12">
							<h3 class="room-titlehead">' . $subpkgRec->title . '</h3>
							<div class="tab" role="tabpanel">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
							
							<li role="presentation" class="active"><a href="#aboutroom" aria-controls="profile" role="tab" data-toggle="tab"><i class="fa fa-cube"></i>About room</a></li>
							<li role="presentation"><a href="#facilities" aria-controls="home" role="tab" data-toggle="tab"><i class="fa fa-user"></i>Facilities</a></li>
							<li role="presentation"><a href="#askinfo" aria-controls="messages" role="tab" data-toggle="tab"><i class="fa fa-envelope"></i>Ask info</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content tabs">
							<div role="tabpanel" class="tab-pane" id="facilities">
							' . $faclist . '
							</div>

							<div role="tabpanel" class="tab-pane fade in active" id="aboutroom">
							' . $subpkgRec->content . '
							</div>

							<div role="tabpanel" class="tab-pane fade" id="askinfo">
							<p> Write us and we will contact you soon as possible.</p>
							<!-- Contact Form -->
							' . $jVars['module:conatact-us'] . ' <!-- end of contact form -->

							</div>
							</div>
							</div>
							</div>
							</div>
							   </div>  
</section>';
			$resubpkgDetail .= '<section class="blog-section" id="blog">
								  <jcms:module:similar_rooms/>
								</section>  ';
		} elseif ($subpkgRec->type == 4) {
			/*Hall subpackage*/
			$resubpkgDetail .= '<section id="aboutus" class="content">
							<div class="container">
								<div class="row">
									<div class="col-md-6 col-sm-6 ">
										<div class="text-left single-content">
											<h3>welcome to<br><span style="font-size: 50px;">' . $subpkgRec->title . ' </span></h3>
											' . $subpkgRec->content . '
										</div> 	      
									</div>
									<div class="padding-space"> </div>
									<div class="col-md-6 col-sm-6 ">
										 <div class="single-room-carousel owl-carousel owl-theme">';
			$subpkgImg = $subpkgRec->image;
			if ($subpkgImg != "a:0:{}") {
				$subimageList = unserialize($subpkgImg);
				foreach ($subimageList as $imgs) {
					$resubpkgDetail .= '
								                <div class="item-single-room">
								                    <div class="popup-gallery">
								                		<img src="' . IMAGE_PATH . 'subpackage/banner/' . $imgs . '" alt="">
								                	</div>
								            	</div>';
				}
			}
			$resubpkgDetail .= '</div>	
								</div>
							</div>
							<section id="rooms" class="room-section">
						<div class="container">
						<div class="row">';

			if (!empty($subpkgRec->U)) {
				$resubpkgDetail .= '<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						
						<img src="' . IMAGE_PATH . '/U.png" height="80px" width="80px" class="left"/>
						</div>
						<div class="text">
						<h4><a href="#">U</a></h4>
						<p>No. of Pax:' . $subpkgRec->U . '</p>
						</div>
						</div>
						</div>';
			}

			if (!empty($subpkgRec->Round)) {
				$resubpkgDetail .= '<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<img src="' . IMAGE_PATH . '/round.png" height="80px" width="80px" class="left"/>
						</div>
						<div class="text">
						<h4><a href="#">Round</a></h4>
						<p>No. of Pax:' . $subpkgRec->Round . '</p>
						</div>
						</div>
						</div>';
			}

			if (!empty($subpkgRec->Theatre)) {
				$resubpkgDetail .= '<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<img src="' . IMAGE_PATH . '/theatre.png" height="80px" width="80px" class="left"/>
						</div>
						<div class="text">
						<h4><a href="#">Theater</a></h4>
						<p>No. of Pax:' . $subpkgRec->Theatre . '</p>
						</div>
						</div>
						</div>';
			}



			if (!empty($subpkgRec->Double_U)) {
				$resubpkgDetail .= '<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="services-v2">
						<div class="icon">	
						<img src="' . IMAGE_PATH . '/W.png" height="80px" width="80px" class="left"/>
						<div class="text">
						<h4><a href="#">Double U</a></h4>
						<p>No. of Pax:' . $subpkgRec->Double_U . '</p>
						</div>
						</div>
						</div>';
			}

			$resubpkgDetail .= '</div>
						</div>
						</section>
						</section>';
		} else {

			$resubpkgDetail .= '<section id="aboutus" class="content">
							<div class="container">
								<div class="row">
									<div class="col-md-6 col-sm-6 ">
										<div class="text-left single-content">
											<h3>welcome to<br><span style="font-size: 50px;">' . $subpkgRec->title . ' </span></h3>
											' . $subpkgRec->content . '
										</div> 	      
									</div>
									<div class="padding-space"> </div>
									<div class="col-md-6 col-sm-6 ">
										 <div class="single-room-carousel owl-carousel owl-theme">';
			$subpkgImg = $subpkgRec->image;
			if ($subpkgImg != "a:0:{}") {
				$subimageList = unserialize($subpkgImg);
				foreach ($subimageList as $imgs) {
					$resubpkgDetail .= '
								                <div class="item-single-room">
								                    <div class="popup-gallery">
								                		<img src="' . IMAGE_PATH . 'subpackage/banner/' . $imgs . '" alt="">
								                	</div>
								            	</div>';
				}
			}
			$resubpkgDetail .= '</div>	
								</div>
							</div></section>';




		}
	}
}

$jVars['module:banlink'] = $banlink;
$jVars['module:sub-package-banner'] = $resubpkgbann;
$jVars['module:sub-package-detail'] = $resubpkgDetail;

$simroom = '';
if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {
	$slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
	$subpkgRec = Subpackage::find_by_slug($slug);
	if ($subpkgRec) {
		$parent = Package::find_by_id($subpkgRec->type);
		if (!empty($parent)) {
			$simroom .= ' <div class="container">
			        <div class="row">
			            <div class="col-md-12 col-sm-12 col-xs-12">
			                <div class="section_title">
			                    <h2>Rooms</h2>
			                    <h3>Other rooms</h3>
			                </div>
			            </div>
			        </div> 
			    </div>';
			$simlist = Subpackage::getPackage_limit($subpkgRec->type, 4);
			foreach ($simlist as $simitem) {
				if ($subpkgRec->title != $simitem->title) {
					$relImg = $simitem->image;
					if ($relImg != "a:0:{}") {
						$relimageList = @unserialize($relImg);
						if (!empty($relimageList[0])) {
							$simroom .= '<div class="nospace container">
											<div class="col-md-4 col-sm-4 col-xs-6">
												<!-- start news-->
												<div class="grid-hotel">
												<figure class="effect-sadie">
												<img src="' . IMAGE_PATH . 'subpackage/banner/' . $relimageList[0] . '" alt="blog"/>
												<figcaption>
												<h2>' . $simitem->title . '</h2>
												<p>' . substr(strip_tags($simitem->detail), 0, 50) . '<br /> <a href="' . BASE_URL . 'subpackage/' . $simitem->slug . '">View more</a></p>
												</figcaption>           
												</figure>
												</div>
												 <!-- end news -->
												</div>';
						}
					}
				}
			}
		}
	}
}

$jVars['module:similar_rooms'] = $simroom;

<?php 
$reslgall='';

$gallRec = Gallery::getGalleryList(6);
if($gallRec) {
	$reslgall.='<!-- Carousel | START -->
    <div class="section carousel fade">
        <div class="slider">';
        	foreach($gallRec as $gallRow) {
				$img_path = SITE_ROOT.'images/gallery/'.$gallRow->image;
				if(!empty($gallRow->image) and file_exists($img_path)) {
					$reslgall.='<img src="'.IMAGE_PATH.'gallery/'.$gallRow->image.'" alt="'.$gallRow->title.'">';
				}
			}            
        $reslgall.='</div>
        <div class="slider-nav">
            <a class="prev"><i class="icon ion-ios-arrow-left"></i></a>
            <a class="next"><i class="icon ion-ios-arrow-right"></i></a>
        </div>
    </div>
    <!-- Carousel | END -->';
}

$jVars['module:galleryList'] = $reslgall;


/*
* Gallery Page
*/
$resgall='';
if(defined('GALLERY_PAGE')) {
	$slug = !empty($_REQUEST['slug'])?addslashes($_REQUEST['slug']):'';
	$galRec = Gallery::find_by_slug($slug);
	
	if(!empty($galRec)) {
		$imglink='';
		$img_path = SITE_ROOT.'images/gallery/'.$galRec->image;
		if(!empty($galRec->image) and file_exists($img_path)) {
			$imglink=IMAGE_PATH.'gallery/'.$galRec->image;
		}else{$imglink=IMAGE_PATH.'static/gallery-img.jpg';}
		$resgall.='<section class="row final-inner-header" style="background-image:url('.$imglink.'); background-repeat: no-repeat; ">
	 	</section>
	 	<section class="row final-breadcrumb">
		    <div class="container">
		        <ol class="breadcrumb">
		            <li><a href="'.BASE_URL.'home">Home</a></li>
		            <li class="active">Gallery</li>
		            <li class="active">'.$galRec->title.'</li>
		        </ol>
		    </div>
	 	</section>

	 	<section class="clearfix news-wrapper"> 
    		<div class="container clearfix common-pad gallery-page-one" id="gallery">
		       	<div class="sec-header3">
		         	<h2>'.$galRec->title.'</h2>
		         	<h3>Pictorial representation of Jagatpur Lodge and it\'s experience</h3>
		     	</div>

		     	<div class="row">
		     		<div class="image-gallery" data-filter-class="gallery-sorter">';
		     		$sgallRec = GalleryImage::getImagelist_by($galRec->id);
		     		if(!empty($sgallRec)) { 
		     			foreach($sgallRec as $sgallRow) {
			     			$img_path = SITE_ROOT.'images/gallery/galleryimages/'.$sgallRow->image;
			     			if(!empty($sgallRow->image) and file_exists($img_path)) {
								$resgall.='<div class="single-gallery anim-5-all bedroom activities masonryImage mix span-4">
									<div class="img-holder">
										<img src="'.BASE_URL.'timthumb.php?src='.IMAGE_PATH.'gallery/galleryimages/'.$sgallRow->image.'&w=370&h=346&q=100" alt="'.$sgallRow->title.'">
										<div class="content">
											<a class="link-gallery" rel="next" data-imagelightbox="g" href="'.IMAGE_PATH.'gallery/galleryimages/'.$sgallRow->image.'">
												<span class="media-bottom">...</span>
											</a> 						
										</div>
									</div>
								</div>';
							}
						}
					}
		     		$resgall.='</div>
		     	</div>
		    </div>
		</div>';
	}
}
$jVars['module:allgallery'] = $resgall;
?>
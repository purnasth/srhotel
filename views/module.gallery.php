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
		
		     	if($galRec->type=='1') {
		     		$resgall.='<div class="popup-gallery"> data-filter-class="gallery-sorter">';
		     		$sgallRec = GalleryImage::getImagelist_by($galRec->id);
		     		if(!empty($sgallRec)) { 
		     			foreach($sgallRec as $sgallRow) {
			     			$img_path = SITE_ROOT.'images/gallery/galleryimages/'.$sgallRow->image;
			     			if(!empty($sgallRow->image) and file_exists($img_path)) {
								$resgall.='div class="col-md-4 col-sm-6 col-xs-12">
									<div class="img-holder">
									<a  data-fancybox="gallery"  href="'.IMAGE_PATH.'gallery/galleryimages/'.$sgallRow->image.'">
									<img src="'.BASE_URL.'timthumb.php?src='.IMAGE_PATH.'gallery/galleryimages/'.$sgallRow->image.'&w=370&h=346&q=100" alt="'.$sgallRow->title.'">
										<div class="content">
											
												<span class="media-bottom">'.$sgallRow->title.'</span>
											</a> 						
										</div>
									</div>
								</div>';
							}
						}
					}
		     		$resgall.='</div>';
		     	}
		     	else {
		     		$vgallRec = GalleryImage::getImagelist_by($galRec->id);
		     		if(!empty($vgallRec)) {
			     		$resgall.='<div class="vid-container">
				            <iframe id="vid_frame" src="http://www.youtube.com/embed/'.get_youtube_code($vgallRec[0]->image).'?rel=0&amp;showinfo=0&amp;autohide=1" allowfullscreen="allowfullscreen" frameborder="0" width="100%" height="550"></iframe>
				        </div>
				        <div class="row">
							<ul id="col-sm-12">';
								foreach($vgallRec as $vrow) {                   
								$resgall.='<li class="col-sm-3">
									<div class="vid-item" data-link="'.get_youtube_code($vrow->image).'" data-ulink="'.$vrow->image.'" data-title="'.$vrow->title.'"> 
										<div class="thumb">
											<div class="play"></div>
											<img src="'.get_youtube_thumbnail($vrow->image).'" alt="img" class="img-responsive">
										</div>									
										<div class="desc">'.$vrow->title.'</div>
									</div>
								</li>';
								}
							$resgall.='</ul>
						</div>';
				    }
				    else {
				    	$resgall.='Comming Soon !';
				    }
		     	}
		
	}
}
$jVars['module:allgallery'] = $resgall;


$homegal='';
$gal='';
 
// Any mobile device (phones or tablets).


	$gallRec = GalleryImage::find_all();
if(defined('GALLERY_PAGE')) {
	if(isset($_REQUEST['slug'])){
$gallRectit ='';
	}
	else{
		$gallRectit = Gallery::getGallery();
	}
	$slug = !empty($_REQUEST['slug'])?addslashes($_REQUEST['slug']):'';
	
		$gal='';
	if($gallRectit){
		$gal.='<div class="container gallery">
		<div class="toolbar mb2 mt2 text-center">
        			<button class="theme-btn btn-style-three fil-cat" href="" data-rel="all">All</button>';
				        foreach ($gallRectit as $grec) {
				        	//if($grec->id != 7){
				        		$gal.='<button class="theme-btn btn-style-three fil-cat" data-rel="cate-'.$grec->id.'">'.$grec->title.'</button>';
				        	
				        }
		$gal.='<div class="clearfix">&nbsp;</div> 
		 
		<div id="portfolio">';
/*		$gal.='
        <div class="gallery-cat text-center">
            <ul class="list-inline">
                <li class="active"><a href="#" data-filter="*">All
                  </a></li>';
                foreach($gallRectit as $row){
                $gal.='<li><a href="#" data-filter=".filter'.$row->id.'">'.$row->title.'</a></li>';
            	}
            $gal.='</ul>
        </div>
        <!-- END / FILTER -->';*/

        	foreach ($gallRec as $img) {
				$img_path = SITE_ROOT.'images/gallery/galleryimages/'.$img->image;
				if(file_exists($img_path) and !empty($img->image)) {
					$gal.='					
					  <div class="tile scale-anm cate-'.$img->galleryid.' all">
					        <a href="'.IMAGE_PATH.'gallery/galleryimages/'.$img->image.'" title="'.$img->title.'" data-fancybox="gallery" >
					        	<img src="'.IMAGE_PATH.'gallery/galleryimages/'.$img->image.'" alt="" />
					        </a>
					  </div>
					  ';
				}
			
		}
		$gal.='</div>
		</div>
					<div style="clear:both;"></div>   ';
        /*-----------------------------filter ends-----------------------------*/
	}
}
$jVars['module:gallery'] =$gal;


?>
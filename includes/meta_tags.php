<?php
// SEO Meta Tags And Meta Description

function className_metatags() {
	$current_url = pathinfo($_SERVER["PHP_SELF"]);
	$fileName = $current_url['filename'];	
	
	if($fileName=='inner'):
		$className = 'Article';
		return $className;
		exit;
	endif;	

	if($fileName=='subpkgdetail'):
		$className = 'Subpackage';
		return $className;
		exit;
	endif;

	if($fileName!='index'):
		$className	= ucfirst(strtolower($fileName));
		return $className;
		exit;
	endif;
	
	return '';
}

function MetaTagsFor_SEO(){

	$c_url = pathinfo($_SERVER["PHP_SELF"]);
	$chk = $c_url['filename'];
	$config 		= Config::find_by_id(1);
	$sitetitle 		= (!empty($config->meta_title) and $chk=='index')?$config->meta_title:$config->sitetitle;
	$keywords		= $config->site_keywords;
	$description	= $config->site_description;
	
	$addtitle = '';
	$class 	  = className_metatags();

	
	$class_path = SITE_ROOT.'includes/modals/class.'.strtolower($class).'.php';
	if(file_exists($class_path)) {
	// Transaction start
	if(isset($_REQUEST['slug']) and !empty($_REQUEST['slug'])){
		$cls = new $class;
		$rec = $cls->find_by_slug(addslashes($_REQUEST['slug']));
		if(!empty($rec)) {
			$addtitle 	 = !empty($rec->meta_title)?$rec->meta_title:$rec->title;
			if(!empty($rec->meta_keywords)) {
				$keywords    = $rec->meta_keywords;
				$description = $rec->meta_description;
			}
		}
	}

	if(isset($_REQUEST['id']) and !empty($_REQUEST['id'])){
		$cls = new $class;
		$rec = $cls->find_by_id($_REQUEST['id']);
		if($rec){
			$addtitle 	 = $rec->title;
			}
		}
	}		
	
	$altclass = !empty($class)? $class:'';
	$addtitle = !empty($addtitle)?$addtitle:$altclass;
	$addsep = !empty($addtitle)?' - ':'';

	$seoSources = '<title>'.$addtitle.$addsep.$sitetitle.'</title>'."\n";
	$seoSources.= '<meta charset="utf-8">'."\n";
	$seoSources.= '<meta http-equiv="X-UA-Compatible" content="IE=edge">'."\n";
	$seoSources.= '<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">'."\n";
	$seoSources.= '<meta name="robots" content="index,follow">'."\n";
	$seoSources.= '<meta name="Googlebot" content="index, follow"/>'."\n";
	$seoSources.= '<meta name="distribution" content="Global">'."\n";
	$seoSources.= '<meta name="revisit-after" content="2 Days" />'."\n";
	$seoSources.= '<meta name="classification" content="Hotel, Hotels in Nepal" />'."\n";
	$seoSources.= '<meta name="category" content="Hotel, Hotels in Nepal" />'."\n";
	$seoSources.= '<meta name="language" content="en-us" />'."\n";	
	$seoSources.= '<meta name="keywords" content="'.$keywords.'">'."\n";
	$seoSources.= '<meta name="description" content="'.$description.'">'."\n";
	$seoSources.= '<meta name="author" content="Longtail-e-media">'."\n";
	$seoSources.= '<meta name="msvalidate.01" content="D3ADCF98EF3FBD0D274199D4EAE2A73E" />'."\n";
	$seoSources.='<link rel="canonical" href="'.curPageURL().'" />'."\n";
	
	$seoSources.= '<base url="'.BASE_URL.'"/>'."\n";
	$seoSources.= $config->google_anlytics."\n";
	$seoSources.= $config->schema_code."\n";
	
	return $seoSources;
}

?>
<?php
// SITE REGULARS
$jVars['site:header'] 		= Config::getField('headers',true);
$jVars['site:footer'] 		= Config::getField('footer',true);
$siteRegulars 				= Config::find_by_id(1);
$jVars['site:copyright']	= '<div class="pull-left fo-txt"> '.str_replace('{year}',date('Y'),$siteRegulars->copyright).'</div>

                               <div class="pull-right fo-txt">
								 <p>Developed by: <a href="http://longtail.info/n/" target="_blank">Longtail e-media</a></p>
								 </div>';

$jVars['site:fevicon']		=  '<link rel="shortcut icon" href="'.IMAGE_PATH.'preference/'.$siteRegulars->icon_upload.'"> 
							    <link rel="apple-touch-icon" href="'.IMAGE_PATH.'preference/'.$siteRegulars->icon_upload.'"> 
							    <link rel="apple-touch-icon" sizes="72x72" href="'.IMAGE_PATH.'preference/'.$siteRegulars->icon_upload.'"> 
							    <link rel="apple-touch-icon" sizes="114x114" href="'.IMAGE_PATH.'preference/'.$siteRegulars->icon_upload.'">';
$jVars['site:logo']			= '	<a href="'.BASE_URL.'home" class="logo" data-dark-logo="images/logo-dark.png">
          						<img src="'.IMAGE_PATH.'preference/'.$siteRegulars->logo_upload.'" alt="'.$siteRegulars->sitetitle.'">
          						</a>';	

$jVars['site:footerlogo']	= '<a href="'.BASE_URL.'home">
<img src="'.IMAGE_PATH.'preference/'.$siteRegulars->logo_upload.'" 
alt="'.$siteRegulars->sitetitle.'" class="img-responsive"></a>
<p>'.$siteRegulars->breif.'</p>'; 		

$jVars['site:seotitle'] = MetaTagsFor_SEO();
$jVars['site:baseurl'] = BASE_URL;

$jVars['site:FB'] = '
    <!-- Messenger Chat Plugin Code -->
    <div id="fb-root"></div>

    <!-- Your Chat Plugin code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById(\'fb-customer-chat\');
      chatbox.setAttribute("page_id", "465717410105832");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : \'v19.0\'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, \'script\', \'facebook-jssdk\'));
    </script>
';

// view modules 
require_once("views/module.contact.php");
require_once("views/module.booking.php");
require_once("views/module.reservation.php");
require_once("views/module.bookpkgs.php");
require_once("views/module.services.php");
require_once("views/module.gallery.php");
require_once("views/module.subscribers.php");

// SITE MODULES
$modulesList = Module::getAllmode();
foreach($modulesList as $module):	
	$fileName = "module.".$module->mode.".php";
	if(file_exists("views/".$fileName)){
	  	require_once("views/".$fileName);
	}
endforeach;
?>
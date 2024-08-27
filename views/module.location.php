<?php $configRec = Config::find_by_id(1);
$emlAddress = str_replace('@', '&#64;', $configRec->email_address);
/*
 * Top Location
 */
$tpres = '';
$tel = '';
$phn = explode(",", $configRec->contact_info);
foreach ($phn as $phno) {

    $tel .= '<a href="tel:' . $phno . '">' . $phno . '&nbsp</a>';
}
$tpres .= '<div class="">
            <ul class="top-menu">
              <li><span ><i class="fa fa-phone" aria-hidden="true"></i></span>&nbsp' . $tel . '</li>
              <li><a href="mailto:' . $emlAddress . '"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span style="font-style:normal; text-transform: lowercase;">' . $emlAddress . '</span></a></li> 
						<!--<li><a href="#">Address: <spam style="text-transform: capitalize;">' . $configRec->fiscal_address . '</spam></a></li>-->
                    </ul>
                </div>';

$jVars['module:header-location'] = $tpres;

$bloc = '';
$tellinked = '';
$telno = explode(",", $configRec->contact_info);
foreach ($telno as $tel) {
    $tellinked .= '<a href="tel:' . $tel . '">' . $tel . '&nbsp</a>';
}
$bloc .= '<ul>
	<li class="class="fleft location_address">
			<i class="fa fa-map-marker"></i>
			' . $configRec->fiscal_address . '

			</li>
			<li class="fleft contact_no">
			<i class="fa fa-phone"></i>
			' . $tellinked . '
			</li>
			<li class="fleft contact_mail">
			<i class="fa fa-envelope-o"></i>
			<a href="mailto:' . $emlAddress . '">' . $emlAddress . '</a>
			</li>
			<li>
			    <div class="fleft">
			    <!--General Manager-->
    			<br><i class="fa-brands fa-whatsapp"></i><img src="' . BASE_URL . '/images/viber.svg" width="24" /><a href="https://wa.me/9857043020">9857043020</a>
    			</div>
			</li>
		<!--	<li>
			    <div class="fleft">
			   Saroj Acharya (Sales Executive)
    			<br><i class="fa fa-viber"></i><a href="https://wa.me/9857043020">9857043020</a>
    			</div>
			</li>
			<li>
			    <div class="fleft">
			    Praven Acharya (MD)
    			<br><i class="fa fa-phone"></i><a href="tel:9851221780">9851221780</a>
    			</div>
			</li>-->
		</ul>
		<!-- Messenger Chat Plugin Code -->
    <div id="fb-root"></div>

    <!-- Your Chat Plugin code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById("fb-customer-chat");
      chatbox.setAttribute("page_id", "105792191250242");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : "v14.0"
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js";
        fjs.parentNode.insertBefore(js, fjs);
      }(document, "script", "facebook-jssdk"));
    </script>
    ';
$jVars['module:footer-location'] = $bloc;

$rescnt = '';
$tell = '';
$tel = explode(",", $configRec->contact_info);
foreach ($tel as $telphn) {
    $tell .= '<a href="tel:' . $telphn . '">' . $telphn . '&nbsp</a>';
}

$rescnt .= '<div class="col-md-8 col-sm-6 col-xs-12" style="
    margin-top: 20px;
">
<jcms:module:location-map/>
<!--
<div class="contact-text">
				<h2>Corporate Office</h2>
				<ul class="contact-info-list">
				<li><h3><span>Address</span><br>' . ucwords($configRec->fiscal_address) . '</h3></li>
				<li><h3><span>Call Us</span><br>' . $tell . '</h3></li>
				<li><h3><span>Mail Us</span><br><a href="mailto:' . $emlAddress . '">' . $emlAddress . '</a></h3></li>
				</ul>
				</div>
                -->
				
                
                </div>
				
				</div> ';

$jVars['module:contact-location'] = $rescnt;


$footerBlock = '';

$footerBlock .= '
    <ul class="footer-ul">
        <li class="fleft location_address">
            <i class="fa fa-map-marker"></i>
                ' . $configRec->fiscal_address . '
        </li>
        <li class="fleft contact_no">
            <i class="fa fa-phone"></i>
                ' . $tell . '
        </li>
        <li class="fleft contact_mail">
            <i class="fa fa-envelope-o"></i>
                <a href="mailto:' . $emlAddress . '">' . $emlAddress . '</a>
        </li>
    </ul>
';
$jVars['module:location:footer-location'] = $footerBlock;


/*
 * Google map
 */
$resgmap = '';
if ($configRec->location_type == 1) {
    $resgmap .= '
					<iframe id="map" width="100%" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src=' . $configRec->location_map . '></iframe>
			
				';
} else {
    $resgmap .= '

    <div class="nopadding nomargin" id="overlay">
        <img src="' . IMAGE_PATH . 'preference/locimage/' . $configRec->location_image . '" alt="' . $configRec->sitetitle . '" class="img-responsive">
    </div>';
}

$jVars['module:location-map'] = $resgmap;

?>
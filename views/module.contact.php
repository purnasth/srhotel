<?php 
/*
* Contact form
*/

$rescimg='';
$rescont='';
$contbanner='';

if(defined('CONTACT_PAGE') ||  defined('SUBPACKAGE_PAGE')) {
    $rescimg.='
    <div class="header-title white" style="background-image:url('.IMAGE_PATH.'contact-img.jpg);">
        <div class="container">
            <div class="title-base">                
                <h1>CONTACT US</h1>
                <hr class="anima" />
                <p>We are avilable 24 / 7 / 365</p>
            </div>
        </div>
    </div>';


$rescont.='



<!-- Contact Form -->
<form id="ContactForm" data-toggle="validator">
<div class="form-same-line form-group">
<input type="text" class="form-control" name="hfirstname" placeholder="First Name" required>
</div>
<div class="form-same-line form-group">
<input type="text" class="form-control" name="hlastname" placeholder="Last Name" required>
</div>
<div class="form-same-line form-group">
<input type="text" class="form-control" name="contactno" placeholder="Contact no" required>
</div>
<div class="form-same-line form-group">
<input type="email" class="form-control" name="hemail" placeholder="Email" required>
</div>
<div class="form-group">
<textarea class="form-control" name="hmessage" placeholder="Write your message here" rows="4" required></textarea>
</div>

<div id="g-recaptcha-response" class="g-recaptcha" data-sitekey="6Le9mowpAAAAAAub2CSBta7N2r9utzlntWRUQpKr"></div>

<div class="text-center">
<button type="submit" id="contactBtn" class="button-small-solid">SUBMIT</button>
<div id="msg" class="h3 text-center "></div>

</form> 
</div>
<!-- end of contact form -->
';

$configcont = Config::find_by_id(1);
$contbanner.='        
    <div class="intro inner-intro">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title text-right">
                                            
                    <h1 class="margin-auto">Contact Us</h1>
                    <p>Contact us to find our offers</p>
                       
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
        <li><a href="index.html">Home</a></li>
        <li><i class="fa fa-caret-right" aria-hidden="true"></i></li>
        <li>Contact Us</li>
        </ul>
        </div>
        <div class="right pull-right">
        <a class="a2a_dd" href="https://www.addtoany.com/share"><i class="fa fa-share-alt" aria-hidden="true"></i> Share</a>
        </div> 
    </div>
</section>  ';  

}

$jVars['module:contact_img'] = $rescimg;
$jVars['module:conatact-us'] = $rescont;


$jVars['module:contactbanner'] = $contbanner;
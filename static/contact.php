<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Jagatpur Lodge by Annapurna</title>
<!-- reponsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- strock gap icons -->
<link rel="stylesheet" href="vendors/Stroke-Gap-Icons-Webfont/style.css">
<link rel="stylesheet" href="css/animate.min.css">
<!--    owl-carousel-->
<link rel="stylesheet" href="vendors/owlcarousel/owl.carousel.css"> 
<link rel="stylesheet" href="vendors/jquery-ui-1.11.4/jquery-ui.min.css">
<!-- Main Css  -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">    
<!-- <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png"> -->

</head>
<body>

    
 <?php include_once 'header.php';?>

  
 <!-- Header  Inner style-->
<section class="row final-inner-header">
<img class="background" src="images/gate.jpg">
 	<!-- <div class="container">
    <h2 class="this-title">Contact us</h2>
  </div> -->
 </section>
 <section class="row final-breadcrumb">
 	<div class="container">
 		<ol class="breadcrumb">
 			<li><a href="'' index.html">Home</a></li>
 			<li class="active">Contact us</li>
 		</ol>
 	</div>
 </section>
<!-- Header  Slider style-->
    

<!-- Booking style-->
  <section class="container clearfix common-pad booknow">
    <div class="sec-header">
         <h2>Contact Details</h2>
             <h3>Contact us for an amazing experience</h3>
         </div> 
        
     <div class="row nasir-contact">
      <div class="col-md-8">
         
         <div class="book-left-content input_form">
          <form action="mail.php" method="post" id="contactForm">         
           <div class="row">   
           <div class="col-lg-6 col-md-6 col-sm-12 m0 col-xs-12">
               <span>Your Name</span>
               <input type="text" class="form-control" id="name" name="name" placeholder="Your name" required></div>   
            <div class="col-lg-6 col-md-6 col-sm-12 m0 col-xs-12">
                <span>Your Email</span>
                <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" required></div>
            </div>  
              
            <div class="row">   
           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <span>Phone</span>
                       <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" required>
                    </div>
            </div>
              
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <span>Message</span>
                       <textarea class="form-control" rows="6" id="message" name="message" placeholder="Message" required></textarea>
                    </div>
              </div>
              <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><input type="submit" name="submit" class="res-btn" value="Submit Now" ></div>
              </div>
          </form>

<?php if(!empty($_GET['id']) and $_GET['id']=='1'){?>

             <div id="success" style="display: block;"><p>Your message sent successfully.</p></div>
             <?php }
 if(@$_GET['id']=='0') { ?>
             <div id="error" style="display: block;"><p>Something is wrong. Message cant be sent!</p></div>
             <?php } ?>
          </div>
         
         
         </div>
      <div class="col-md-4">
         
          <div class="contact-info">
          
          <h2>Contact Info</h2>
          
           <div class="media-contact clearfix">
                            <div class="media-contact-icon">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="media-contact-info">
                                <p>JAGATPUR LODGE<br>Jagatpur, Chitwan, Nepal</p>
                            </div>
              </div>   
            <div class="media-contact clearfix">
                            <div class="media-contact-icon">
                                <i class="fa fa-envelope-o" aria-hidden="true"></i>
                            </div>
                            <div class="media-contact-info">
                              <p>
                                        <a href="mailto:info@jagatpurlodge.Com">info@jagatpurlodge.com</a><br>
                                        
                                    </p>
                            </div>
              </div> 
              
              <div class="media-contact clearfix">
                            <div class="media-contact-icon">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </div>
                            <div class="media-contact-info">
                              <p><a href="tel:9801030260">+ 977 9801030260</a>
                                        
                                    </p>
                            </div>
              </div> 
              
             
              
          </div>
          
          
         
         </div>  
      
      </div>
    </div>
    </section> 
    
<!-- Booking style-->
    

   
  <!-- TT-CONTACT-MAP -->
          <!--   <div class="tt-contact-map map-block" id="map-canvas"  data-lat="27.569576" data-lng="84.310939" data-zoom="14"></div> -->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d113180.79452945598!2d84.23781080989649!3d27.565619138046706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3994f656dd1781c9%3A0xd078946e2342fa99!2sJagatpur+Lodge!5e0!3m2!1sen!2snp!4v1488274669952" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
            <div class="addresses-block">
                <a data-lat="51.477254" data-marker="images/marker.png" data-lng="-0.026888" data-string="1. Here is some address or email or phone or something else..."></a>                 
            </div>

    
  
  
 
<?php include_once 'footer.php';?>
</body> 


</html>
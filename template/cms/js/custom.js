/*
* File Name: Helper Js file
* File Author: Design Arc
* File Description: This is helper javascript file. Used for activating js plugins and Other javascript effects adding. Thanks
*/


/*-------------------------------------
--------- TABLE OF CONTENT ------------
---------------------------------------

SmoothMenuScroll
hiddenBarMenuConfig
customScrollBarHiddenSidebar
hiddenBarToggler
handlePreloader
Mobile Navigation
stickyHeader
Vertical slider
Testimonial slider
Room Suite slider
welcome four box slider
zebraDatePickerInit 
GalleryFilter
Family Fun Gallery
fancyboxInit
singleroomslider
counter number changer
Testimonial slider
full width home two slider
Room Suite slider
Select drop down

----------------------------------------
--------------------------------------*/
var base_url = jQuery('base').attr('url');
(function($) {
    "use strict";

	function bootstrapAnimatedLayer() {

		/* Demo Scripts for Bootstrap Carousel and Animate.css article
		 * on SitePoint by Maria Antonietta Perna
		 */

		//Function to animate slider captions 
		function doAnimations(elems) {
			//Cache the animationend event in a variable
			var animEndEv = 'webkitAnimationEnd animationend';

			elems.each(function() {
				var $this = $(this),
					$animationType = $this.data('animation');
				$this.addClass($animationType).one(animEndEv, function() {
					$this.removeClass($animationType)
				})
			})
		}

		//Variables on page load 
		var $myCarousel = $('#minimal-bootstrap-carousel'),
			$firstAnimatingElems = $myCarousel.find('.item:first').find("[data-animation ^= 'animated']");

		//Initialize carousel 
		$myCarousel.carousel({
			interval: 7000
		});

		//Animate captions in first slide on page load 
		doAnimations($firstAnimatingElems);

		//Pause carousel  
		$myCarousel.carousel('pause');


		//Other slides to be animated on carousel slide event 
		$myCarousel.on('slide.bs.carousel', function(e) {
			var $animatingElems = $(e.relatedTarget).find("[data-animation ^= 'animated']");
			doAnimations($animatingElems)
		})
	}

	// 1. SmoothMenuScroll
	function SmoothMenuScroll () {
		// must install jquery easein plugin

		var anchor = $('.scrollToLink');		
		if(anchor.length){
			anchor.children('a').bind('click', function (event) {
				var target = $(this);
				var anchorHeight= target.height();
				$('html, body').stop().animate({
					scrollTop: $(target.attr('href')).offset().top - anchorHeight + 'px'
				}, 1200, 'easeInOutExpo');
				anchor.removeClass('current');
				target.parent().addClass('current');
				event.preventDefault()
			})
		}
	}

	// 2. hiddenBarMenuConfig
	function hiddenBarMenuConfig () {
		var menuWrap = $('.hidden-bar .main-menu');
		// appending expander button
		menuWrap.find('.dropdown').children('a').append(function () {
			return '<button type="button" class="btn expander"><i class="fa fa-chevron-down"></i></button>'
		});
		// hidding submenu 
		menuWrap.find('.dropdown').children('ul').hide();
		// toggling child ul
		menuWrap.find('.btn.expander').each(function () {
			$(this).on('click', function () {
				$(this).parent() // return parent of .btn.expander (a) 
					.parent() // return parent of a (li)
					.children('ul').slideToggle();

				// adding class to expander container
				$(this).parent().toggleClass('current');
				// toggling arrow of expander
				$(this).find('i').toggleClass('fa-chevron-up fa-chevron-down');			

				return false

			})
		})
	}
	// 3. customScrollBarHiddenSidebar
	function customScrollBarHiddenSidebar () {
		if ($('.hidden-bar-wrapper').length || $('.side-menu').length) {
			$('.hidden-bar-wrapper,.side-menu').mCustomScrollbar()
		}
	}
	// 4. hiddenBarToggler
	function hiddenBarToggler () {
		if ($('.hidden-bar-closer').length) {
			$('.hidden-bar-closer').on('click', function () {
				$('.hidden-bar').css({
					'right': '-150%'
				})
			})
		}
		if ($('.hidden-bar-opener').length) {
			$('.hidden-bar-opener').on('click', function () {
				$('.hidden-bar').css({
					'right': '0%'
				})
			})
		}
	}
	// 5. handlePreloader
	function handlePreloader() {
		if($('.preloader').length){
			$('.preloader').fadeOut()
		}
	}
	// 6. Mobile Navigation
	function mobileNavToggler () {
		if ($('.nav-holder').length) {
			$('.nav-holder .nav-header button').on('click', function () {
				$('.nav-holder .nav-footer').slideToggle();
				return false
			});
			$('.nav-holder li.has-submenu').children('a').append(function () {
				return '<button class="dropdown-expander"><i class="fa fa-chevron-down"></i></button>'
			});
			$('.nav-holder .nav-footer .dropdown-expander').on('click', function () {
				$(this).parent().parent().children('.submenu').slideToggle();
				console.log($(this).parents('li'));
				return false
			})
		}
	}
	// 7. stickyHeader
	function stickyHeader () {
		if ($('.stricky').length) {
			var strickyScrollPos = 100;
			if($(window).scrollTop() > strickyScrollPos) {
				$('.stricky').removeClass('fadeIn animated');
				$('.stricky').addClass('stricky-fixed fadeInDown animated')
			}
			else if($(window).scrollTop() <= strickyScrollPos) {
				$('.stricky').removeClass('stricky-fixed fadeInDown animated');
				$('.stricky').addClass('slideIn animated')
			}
		}
	}


	// 8. Vertical slider
	var slidertestimonial = $('.bxslider');
	try{
		slidertestimonial.bxSlider({
			mode: 'vertical',
            auto: true,
            pause: 8000 , 
            responsiveClass:true         
           
		})
	} catch(err) {}

	$('.room-acc').owlCarousel({
        loop: true,
   		autoplay:true,
   		autoplayHoverPause:true,
   		items:1

   	});

	// 9. Testimonial slider	
	$('.testimonial-sliders').owlCarousel({
        loop: true,
   		autoplay:true,
        margin:30,
        items:2,
        //nav: true,
        //navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
        autoplayTimeout:3000,
		autoplayHoverPause:true,
        responsive:{
            0:{
                items:1
            },
            992:{
                items:2
            }            
        }
    });
	
	// 10. Room Suite slider
	function roomsuiteslider (){
		$('.roomsuite-slider').owlCarousel({
			loop:true,
			margin:30,
			items:3,
			 dots:false,
			nav: true,
			navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
			responsiveClass:true,
			responsive:{
				0:{
					items:1
				},
				481:{
					items:2
				},
				700:{
					items:2
				},
				992:{
					items:3
				}
			}
		}) 
	}


      


     


 
	// 12. zebraDatePickerInit 
	function zebraDatePickerInit () {
		$('.datepicker-example8').Zebra_DatePicker({
			 format: 'M d, Y'
		})
	}
	
	// 13. GalleryFilter
	function GalleryFilter () {
		if ($('.image-gallery').length) {
			if ( $('.image-gallery').hasClass('ntracing-images') ){

				var tracing_images = $('.ntracing-images');

				tracing_images.imagesLoaded(function(){
					tracing_images.isotope({
						// options
						itemSelector: '.single-gallery',
						layoutMode: 'masonry',
						masonry: {
							columnWidth: 1
						}
					})
				})			

			}else{
				$('.image-gallery').each(function () {
					var filterSelector = $(this).data('filter-class');
					var showItemOnLoad = $(this).data('show-on-load');
					if (showItemOnLoad) {
						$(this).mixItUp({
							load: {
								filter: '.'+showItemOnLoad
							},
							selectors: {
								filter: '.'+filterSelector
							}
						})	
					};
					$(this).mixItUp({
						selectors: {
							filter: '.'+filterSelector
						}
					})
				})
			}
		}
	}

	// 14. Family Fun Gallery
	function projectMasonry(){
        if ( $('#projects').length ){
            $('#projects').imagesLoaded( function() {
              // images have loaded
                      // Activate isotope in container
                $("#projects").isotope({
                    itemSelector: ".project",
                    layoutMode: 'masonry',
                    masonry: {
                        columnWidth: '.grid-sizer'
                    }
                });

                // Add isotope click function
                $(".project_filter li").on('click',function(){
                    $(".project_filter li").removeClass("active");
                    $(this).addClass("active");

                    var selector = $(this).attr("data-filter");
                    $("#projects").isotope({
                        filter: selector
                    })
                })
            })
        }
    }


	// 15. fancyboxInit
	function fancyboxInit () {
		if ($('a.fancybox').length) {
			$('a.fancybox').fancybox()
		}
	}

	// 16. singleroomslider

	function singleroomslider (){
		$('.single-sl-room').owlCarousel({
			items:1,
			loop:false,
			center:true,
			nav: false,
			navText: ['<i class="fa fa-chevron-left"></i>','<i class="fa fa-chevron-right"></i>'],
			dots:false,        
			URLhashListener:true,
			autoplayHoverPause:true,
			startPosition: 'URLHash'
		})
	}

	// 17. counter number changer
	function CounterNumberChanger () {
		var timer = $('.timer');
		if(timer.length) {
			timer.appear(function () {
				timer.countTo()
			})
		}
	}

	// 18. Testimonial slider	
	$('.testimonial-sliders-two').owlCarousel({
		loop: true,
		autoplay:true,
		margin:30,
		items:1,
		//nav: true,
		//navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
		responsiveClass:true,
		autoplayTimeout:3000,
		autoplayHoverPause:true        
	});


	// 19. full width home two slider

	function fullwidthslider (){
		$('.fullwidth-slider').owlCarousel({
			loop:true,
			margin:30,
			items:5,
			 dots:false,
			nav: true,
			navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
			responsiveClass:true,
			responsive:{
				0:{
					items:1
				},
				481:{
					items:2
				},
				700:{
					items:2
				},
				992:{
					items:5
				}
			}
		})   
	}
	
	// 20. Room Suite slider
	function roomsuitesliderhometwo (){
		$('.roomsuite-slider-two').owlCarousel({
			loop:true,
			margin:30,
			items:4,
			 dots:false,
			nav: true,
			navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
			responsiveClass:true,
			responsive:{
				0:{
					items:1
				},
				481:{
					items:2
				},
				700:{
					items:2
				},
				992:{
					items:4
				}
			}
		})   
	}
	
	// 21. Select drop down
	function selectMenu() {
		if ($('.select-menu').length) $('.select-menu').selectmenu()
	}


	singleroomslider();
	roomsuiteslider();
	zebraDatePickerInit();
	hiddenBarMenuConfig();
	hiddenBarToggler();
	//DeadMenuConfig();
	GalleryFilter();
	fancyboxInit();
	CounterNumberChanger();
	fullwidthslider();
	roomsuitesliderhometwo();
	mobileNavToggler();
	selectMenu();
	projectMasonry();

	/*Home Slider*/
	bootstrapAnimatedLayer();


	if ( $('.nasir-home-slider').length ){
		$('.nasir-home-slider').each(function(){
			$('.nasir-home-slider').owlCarousel({
				items: 1,
				margin: 0,
				autoplay: 1,
				nav: false,
				dots: false
			})
		})
	}

	if ( $('a[data-imagelightbox]').length ){
		$('a[data-imagelightbox]').imageLightbox({
			activity: true,
			arrows: true,
			button: true,
			overlay: true,
			quitOnDocClick: false,
			selector: 'a[data-imagelightbox]'
		})
	}
		
	// instance of fuction while Window Load event
	$(window).on('load', function () {
		SmoothMenuScroll();
		customScrollBarHiddenSidebar();
		handlePreloader()
	});
	
	// instance of fuction while Window Scroll event
	$(window).on('scroll', function () {	
		stickyHeader()
	})
	
	
	jQuery(document).ready(function(){$("#map").addClass("scrolloff"),jQuery("#overlay").on("mouseup",function(){jQuery("#map").addClass("scrolloff")}),jQuery("#overlay").on("mousedown",function(){$("#map").removeClass("scrolloff")}),jQuery("#map").mouseleave(function(){jQuery("#map").addClass("scrolloff")})});
   	

	// Package Booking form
	if(jQuery("form#frm-booking")[0]) {
		jQuery("form#frm-booking")[0].reset();
	    jQuery('input[name="no_pax[]"]').keyup(function () {  
		    this.value = this.value.replace(/[^0-9\.]/g,''); 
		});

		jQuery(document).on('blur', 'input[name="no_pax[]"]', function() {
			var _parent = jQuery(this).parents("tr.parent");
		 	var pax = jQuery(this).val();
		    var price =  _parent.find('input[name="package_price[]"]').val();
		    if(pax!='') {	    	
		    	var totamt = (parseInt(pax)*parseInt(price));
		    	_parent.find('td.totalamt').html(totamt);
		    }else {
		    	_parent.find('td.totalamt').html(0);
		    }	
		    totalpkgamt();
		});

	    jQuery('#person_checkin').datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'yy-mm-dd',
            minDate: '0',
            maxDate: '+2Y'
        });
        // form validate
        jQuery("form#frm-booking").validate({
            errorElement: 'span',
            errorClass: 'validate-has-error',
            rules: {
            	'no_pax[]': { required: true },
                person_checkin: { required: true },
                person_first: { required: true },
                person_last: { required: true },
                person_contact: { required: true },
                person_email: { required: true, email: true },
                person_address: { required: true },
                person_country: { required: true },
                person_city: { required: true },
                person_zpicode: { required: true },
                person_message: { required: true },
                userstring:{
	                required:true,
	                minlength:5,
	                remote: {
	                    url: base_url+"captcha/checkcaptcha.php",
	                    type: "post"
	                }
	            }
            },
            messages:{              
            	'no_pax[]': { required: 'Required no. of pax. !' },
                person_checkin: { required: 'Required join date !' },
                person_first: { required: 'Required first name !' },
                person_last: { required: 'Required last name !' },
                person_contact: { required: 'Required contact no. !' },
                person_email: { required: 'Required email address', email: 'Required valid email address !' },
                person_address: { required: 'Required address !' },
                person_country: { required: 'Required country !' },
                person_city: { required: 'Required city !' },
                person_zpicode: { required: 'Required zip code !' },
                person_message: { required: 'Required inquiry message !' },
                userstring:{
	                required: 'Enter Security Code',
	                minlength: 'Security Code must be at least 5 characters',
	                remote: "Security Code Not match"     
	            } 
            },      
            submitHandler:function(form){    
                if(form) {
	        		var submittedForm = false;
			        var travel_logo = jQuery('a.navbar-brand img').attr('src');
			        var travel_name = jQuery('a.navbar-brand img').attr('alt');
			        var trans_key = jQuery('input[name="trans_key"]').val();
			        var publishable_key = jQuery('input[name="publishable_key"]').val();
			        var pay_amount = jQuery('input[name="pay_amount"]').val();
			        var handler = StripeCheckout.configure({
			            key: publishable_key,
			            image: travel_logo,
			            locale: 'auto',
			            token: function(token) {
			                submittedForm = true;
			                jQuery('form#frm-booking').append('<input type="hidden" name="stripeToken" value="'+token.id+'">'); 
			            }
			        });
			        // Data store
			        jQuery('button.pay-btn').html('Processing...').attr('disabled', 'true');
			        var data = jQuery('form#frm-booking').serialize();
					var queryString = 'action=request_inquiry&'+data;
					jQuery.ajax({
					   	type: "POST",
					   	dataType:"JSON",
					   	url:  base_url+'includes/controllers/ajax.bookinginfo.php',
					   	data: queryString,
					   	success: function(data){}
					});
		            // Open Checkout with further options:
		            handler.open({
		                name: travel_name,
		                description: 'Order Id : '+trans_key,
		                amount: parseInt(pay_amount*100),
		                closed: function () {
		                    if(submittedForm == false) {
		                        // window.location.href="";
		                        return false;
		                    }
		                    else {
		                        form.submit();		                        
		                        return false;
		                    }		                    
		                }           
		            });
		            return false;
	        	}
            }
        });
	}
})(jQuery)


$(document).on('click', '.vid-item', function(){
    var youcode = $(this).attr('data-link');
    $('#vid_frame').attr('src', 'http://youtube.com/embed/'+youcode+'?autoplay=1&amp;rel=0&amp;showinfo=0&amp;autohide=1');
});

// captcha
function updateCaptcha(c){
    var d = new Date();
    c.src= base_url+'captcha/imagebuilder.php?rand='+d.getTime();
}
// 
function totalpkgamt() {
    var e = 0;
    jQuery("form#frm-booking").find("td.totalamt").each(function() {
        var a = jQuery(this).text();
        e += parseFloat(a)
    });
    // var a = 10 * e / 100;
    jQuery("form#frm-booking").find(".grand-total").text(e);
    jQuery("form#frm-booking").find('input[name="pay_amount"]').val(e);
}
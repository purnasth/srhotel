(function($) {
	
	"use strict";
	
	
	//Hide Loading Box (Preloader)
	function handlePreloader() {
		if($('.preloader').length){
			$('.preloader').delay(200).fadeOut(500);
		}
	}

	
	
	
	//Update Header Style and Scroll to Top
	function headerStyle() {
		if($('.main-header').length){
			var windowpos = $(window).scrollTop();
			var siteHeader = $('.main-header');
			var scrollLink = $('.scroll-to-top');
			if (windowpos >= 200) {
				siteHeader.addClass('fixed-header');
				scrollLink.fadeIn(300);
			} else {
				siteHeader.removeClass('fixed-header');
				scrollLink.fadeOut(300);
			}
		}
	}
	
	headerStyle();
	
	
	//Submenu Dropdown Toggle
	if($('.main-header li.dropdown ul').length){
		$('.main-header li.dropdown').append('<div class="dropdown-btn"></div>');
		
		//Dropdown Button
		$('.main-header li.dropdown .dropdown-btn').on('click', function() {
			$(this).prev('ul').slideToggle(500);
		});
		
		//Disable dropdown parent link
		$('.main-header .navigation li.dropdown > a,.hidden-bar .side-menu li.dropdown > a').on('click', function(e) {
			e.preventDefault();
		});
	}
	
	
	//Hidden Bar Menu Config
	function hiddenBarMenuConfig() {
		var menuWrap = $('.hidden-bar .side-menu');
		// appending expander button
		menuWrap.find('.dropdown').children('a').append(function () {
			return '<button type="button" class="btn expander"><i class="icon fa fa-angle-down"></i></button>';
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
				$(this).find('i').toggleClass('fa-angle-up fa-angle-down');
	
				return false;
	
			});
		});
	}
	
	hiddenBarMenuConfig();
	
	//Hidden Sidebar
	if ($('.hidden-bar').length) {
		var hiddenBar = $('.hidden-bar');
		var hiddenBarOpener = $('.hidden-bar-opener');
		var hiddenBarCloser = $('.hidden-bar-closer');
		$('.hidden-bar-wrapper').mCustomScrollbar();
		
		
		hiddenBarOpener.on('click', function () {
			hiddenBar.addClass('visible-sidebar');
		});
		
		
		hiddenBarCloser.on('click', function () {
			hiddenBar.removeClass('visible-sidebar');
		});
		
	}
	
	
	//Revolution Slider
	if($('.main-slider .tp-banner').length){
		
		var MainSlider = $('.main-slider');
		var strtHeight = MainSlider.attr('data-start-height');
		var slideOverlay =  "'"+ MainSlider.attr('data-slide-overlay') +"'";
		
		$('.main-slider .tp-banner').show().revolution({
		dottedOverlay: slideOverlay,
		  delay:100000,
		  startwidth:1200,
		  startheight:strtHeight,
		  hideThumbs:600,

		  thumbWidth:80,
		  thumbHeight:50,
		  thumbAmount:5,

		  navigationType:"bullet",
		  navigationArrows:"0",
		  navigationStyle:"preview3",

		  touchenabled:"on",
		  onHoverStop:"off",

		  swipe_velocity: 0.7,
		  swipe_min_touches: 1,
		  swipe_max_touches: 1,
		  drag_block_vertical: false,

		  parallax:"mouse",
		  parallaxBgFreeze:"on",
		  parallaxLevels:[7,4,3,2,5,4,3,2,1,0],

		  keyboardNavigation:"off",

		  navigationHAlign:"center",
		  navigationVAlign:"bottom",
		  navigationHOffset:0,
		  navigationVOffset:50,

		  soloArrowLeftHalign:"left",
		  soloArrowLeftValign:"center",
		  soloArrowLeftHOffset:20,
		  soloArrowLeftVOffset:0,

		  soloArrowRightHalign:"right",
		  soloArrowRightValign:"center",
		  soloArrowRightHOffset:20,
		  soloArrowRightVOffset:0,

		  shadow:0,
		  fullWidth:"on",
		  fullScreen:"off",

		  spinner:"spinner4",

		  stopLoop:"off",
		  stopAfterLoops:-1,
		  stopAtSlide:-1,

		  shuffle:"off",

		  autoHeight:"off",
		  forceFullWidth:"on",

		  hideThumbsOnMobile:"on",
		  hideNavDelayOnMobile:1500,
		  hideBulletsOnMobile:"on",
		  hideArrowsOnMobile:"on",
		  hideThumbsUnderResolution:0,

		  hideSliderAtLimit:0,
		  hideCaptionAtLimit:0,
		  hideAllCaptionAtLilmit:0,
		  startWithSlide:0,
		  videoJsPath:"",
		  fullScreenOffsetContainer: ""
	  });
	}
	
	//Two Item Slider
	if ($('.two-item-carousel').length) {
		$('.two-item-carousel').owlCarousel({
			loop:true,
			margin:30,
			nav:true,
			smartSpeed: 700,
			autoplay: 4000,
			navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
			responsive:{
				0:{
					items:1
				},
				600:{
					items:1
				},
				800:{
					items:1
				},
				1024:{
					items:2
				},
				1200:{
					items:2
				}
			}
		});    		
	}
	
	//Four Item Slider
	if ($('.four-item-carousel').length) {
		$('.four-item-carousel').owlCarousel({
			loop:true,
			margin:30,
			nav:true,
			smartSpeed: 700,
			autoplay: 4000,
			navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
			responsive:{
				0:{
					items:1
				},
				600:{
					items:1
				},
				800:{
					items:2
				},
				1024:{
					items:3
				},
				1200:{
					items:4
				}
			}
		});    		
	}
	
	//Four Item Slider
	if ($('.three-item-carousel').length) {
		$('.three-item-carousel').owlCarousel({
			loop:true,
			margin:0,
			nav:true,
			smartSpeed: 700,
			autoplay: 4000,
			navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
			responsive:{
				0:{
					items:1
				},
				600:{
					items:2
				},
				800:{
					items:2
				},
				1024:{
					items:3
				},
				1200:{
					items:2
				},
				1400:{
					items:2
				},
				1920:{
					items:3
				}
			}
		});    		
	}
	
	//Full Width Slider
	if ($('.full-width-carousel').length) {
		$('.full-width-carousel').owlCarousel({
			loop:true,
			margin:0,
			nav:false,
			smartSpeed: 700,
			autoplay: 4000,
			navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
			responsive:{
				0:{
					items:1
				},
				600:{
					items:2
				},
				800:{
					items:2
				},
				1024:{
					items:3
				},
				1200:{
					items:4
				}
			}
		});    		
	}
	
	// Fact Counter
	function factCounter() {
		if($('.fact-counter').length){
			$('.fact-counter .counter-column.animated').each(function() {
		
				var $t = $(this),
					n = $t.find(".count-text").attr("data-stop"),
					r = parseInt($t.find(".count-text").attr("data-speed"), 10);
					
				if (!$t.hasClass("counted")) {
					$t.addClass("counted");
					$({
						countNum: $t.find(".count-text").text()
					}).animate({
						countNum: n
					}, {
						duration: r,
						easing: "linear",
						step: function() {
							$t.find(".count-text").text(Math.floor(this.countNum));
						},
						complete: function() {
							$t.find(".count-text").text(this.countNum);
						}
					});
				}
				
			});
		}
	}
	
	//LightBox / Fancybox
	if($('.lightbox-image').length) {
		$('.lightbox-image').fancybox({
			openEffect  : 'fade',
			closeEffect : 'fade',
			helpers : {
				media : {}
			}
		});
	}
	
	
	// Feedback Carousel Slider
	$(".feedback-section .content-carousel").owlCarousel({
		loop:true,
		items: 1,
		margin: 0,
		nav: true,
		navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
		dots: true,
		autoplay: true,
		autoplayTimeout: 5000
	})
	if ($('.feedback-section .content-carousel').length && $('.feedback-section .thumbs-carousel').length) {

		var $sync1 = $(".feedback-section .content-carousel"),
			$sync2 = $(".feedback-section .thumbs-carousel"),
			flag = false,
			duration = 500;

			$sync1
				.owlCarousel({
					loop:false,
					items: 1,
					margin: 0,
					nav: true,
					navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
					dots: false,
					autoplay: true,
					autoplayTimeout: 5000
				})
				.on('changed.owl.carousel', function (e) {
					if (!flag) {
						flag = false;
						$sync2.trigger('to.owl.carousel', [e.item.index, duration, true]);
						flag = false;
					}
				});

			$sync2
				.owlCarousel({
					loop:false,
					margin: 10,
					items: 1,
					nav: false,
					navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
					dots: false,
					center: false,
					autoplay: true,
					autoplayTimeout: 5000,
					responsive: {
						0:{
				            items:1,
				            autoWidth: false
				        },
				        400:{
				            items:2,
				            autoWidth: false
				        },
				        600:{
				            items:3,
				            autoWidth: false
				        },
				        900:{
				            items:4,
				            autoWidth: false
				        },
				        1000:{
				            items:4,
				            autoWidth: false
				        },
						1100:{
				            items:4,
				            autoWidth: false
				        }
				    },
				})
				
		.on('click', '.owl-item', function () {
			$sync1.trigger('to.owl.carousel', [$(this).index(), duration, true]);
		})
		.on('changed.owl.carousel', function (e) {
			if (!flag) {
				flag = true;		
				$sync1.trigger('to.owl.carousel', [e.item.index, duration, true]);
				flag = false;
			}
		});
	}
	
	//Our attractions carousel
	if ($('.attractions-carousel .image-carousel').length && $('.attractions-carousel .thumbs-carousel').length) {

		var $sync3 = $(".attractions-carousel .image-carousel"),
			$sync4 = $(".attractions-carousel .thumbs-carousel"),
			flag = false,
			duration = 500;

			$sync3
				.owlCarousel({
					loop:false,
					items: 1,
					margin: 0,
					nav: false,
					navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
					dots: false,
					autoplay: true,
					autoplayTimeout: 5000
				})
				.on('changed.owl.carousel', function (e) {
					if (!flag) {
						flag = false;
						$sync4.trigger('to.owl.carousel', [e.item.index, duration, true]);
						flag = false;
					}
				});

			$sync4
				.owlCarousel({
					loop:false,
					margin: 10,
					items: 1,
					nav: true,
					navText: [ '<span class="icon flaticon-arrows-8"></span>', '<span class="icon flaticon-arrows-9"></span>' ],
					dots: false,
					center: false,
					autoplay: true,
					autoplayTimeout: 5000,
					responsive: {
						0:{
				            items:2,
				            autoWidth: false
				        },
				        600:{
				            items:3,
				            autoWidth: false
				        },
				        800:{
				            items:4,
				            autoWidth: false
				        },
				        900:{
				            items:5,
				            autoWidth: false
				        },
				        1000:{
				            items:6,
				            autoWidth: false
				        }
				    },
				})
				
		.on('click', '.owl-item', function () {
			$sync3.trigger('to.owl.carousel', [$(this).index(), duration, true]);
		})
		.on('changed.owl.carousel', function (e) {
			if (!flag) {
				flag = true;		
				$sync3.trigger('to.owl.carousel', [e.item.index, duration, true]);
				flag = false;
			}
		});

	}
	
	// room Carousel Slider
	if ($('.room-carousel .image-carousel').length && $('.room-carousel .thumbs-carousel').length) {

		var $sync3 = $(".room-carousel .image-carousel"),
			$sync4 = $(".room-carousel .thumbs-carousel"),
			flag = false,
			duration = 500;

			

			$sync3
				.owlCarousel({
					loop:false,
					items: 1,
					margin: 0,
					nav: false,
					navText: [ '<span class="fa fa-angle-left"></span>', '<span class="fa fa-angle-right"></span>' ],
					dots: false,
					autoplay: true,
					autoplayTimeout: 5000
				})
				.on('changed.owl.carousel', function (e) {
					if (!flag) {
						flag = false;
						$sync4.trigger('to.owl.carousel', [e.item.index, duration, true]);
						flag = false;
					}
				});

			$sync4
				.owlCarousel({
					loop:false,
					margin: 10,
					items: 1,
					nav: true,
					navText: [ '<span class="icon flaticon-arrows-8"></span>', '<span class="icon flaticon-arrows-9"></span>' ],
					dots: false,
					center: false,
					autoplay: true,
					autoplayTimeout: 5000,
					responsive: {
						0:{
				            items:2,
				            autoWidth: false
				        },
				        600:{
				            items:3,
				            autoWidth: false
				        },
				        800:{
				            items:4,
				            autoWidth: false
				        },
				        900:{
				            items:5,
				            autoWidth: false
				        },
				        1000:{
				            items:6,
				            autoWidth: false
				        }
				    },
				})
				
		.on('click', '.owl-item', function () {
			$sync3.trigger('to.owl.carousel', [$(this).index(), duration, true]);
		})
		.on('changed.owl.carousel', function (e) {
			if (!flag) {
				flag = true;		
				$sync3.trigger('to.owl.carousel', [e.item.index, duration, true]);
				flag = false;
			}
		});

	}
	
	//Tabs Box
	if($('.prod-tabs .tab-btn').length){
		$('.prod-tabs .tab-btn').on('click', function(e) {
			e.preventDefault();
			var target = $($(this).attr('href'));
			$('.prod-tabs .tab-btn').removeClass('active-btn');
			$(this).addClass('active-btn');
			$('.prod-tabs .tab').fadeOut(0);
			$('.prod-tabs .tab').removeClass('active-tab');
			$(target).fadeIn(500);
			$(target).addClass('active-tab');
		});
	}
	
	//Contact Form Validation
	/*if($('#contact-form').length){
		$('#contact-form').validate({
			rules: {
				username: {
					required: true
				},
				email: {
					required: true,
					email: true
				},
				phone: {
					required: true
				},
				message: {
					required: true
				}
			}
		});
	}*/

	// contact us form
	if(jQuery('#frm-contact')[0]) {
		
		jQuery("#frm-contact").validate({
	    	errorElement: 'span',
			errorClass: 'validate-has-error',
	        rules: {
	        	fullname: {
	                required: true
	            },
	            phoneno: {
	                required: true
	            },
	            mailaddress: {
	                required: true,
	                email: true
	            },
	            message: {
	                required: true
	            }
	        },
	        messages:{  
	        	fullname:{
                	required: "Enter your Fullname"
	            },     
	            phoneno: {
	                required: "Enter your Contact No."
	            },
	            mailaddress: {
	                required: "Enter your email address",
	                email: "Enter a valid email address"
	            },      
	            message:{
	                required: "Enter your message"
	            },      
	        },
	        submitHandler:function(form) {
	        	if(form) {
	        		var Frmval = jQuery("#frm-contact").serialize();  
            jQuery("#btn-submit")
            
            .attr("disabled","true");
            jQuery.ajax({
                type: "POST",
                dataType:"JSON",
                url: "contact_mail.php",
                data: Frmval,
                success:function(data){
                    var msg=eval(data); 
                    jQuery("#btn-submit").removeAttr("disabled");  
                    $('#msgs').html(msg.message).addClass('alert alert-warning').slideDown('slow');  
                    $('#frm-contact img.loader').fadeOut('slow',function(){$(this).remove()});
                    jQuery("#frm-contact")[0].reset();
                }               
            });
            return false;
	        	}
	        }
	   	});

	}
	
	
	
	//Date Picker
	// if($('.datepicker').length){
	// 	$( '.datepicker' ).datepicker();
	// }
	
	
	// Scroll to a Specific Div
	if($('.scroll-to-target').length){
		$(".scroll-to-target").on('click', function() {
			var target = $(this).attr('data-target');
		   
		   $('html, body').animate({
			   scrollTop: $(target).offset().top
			 }, 1500);
	
		});
	}
	
	// Elements Animation
	if($('.wow').length){
		var wow = new WOW(
		  {
			boxClass:     'wow',      // animated element css class (default is wow)
			animateClass: 'animated', // animation css class (default is animated)
			offset:       0,          // distance to the element when triggering the animation (default is 0)
			mobile:       true,       // trigger animations on mobile devices (default is true)
			live:         true       // act on asynchronously loaded content (default is true)
		  }
		);
		wow.init();
	}
/*------------------------apixu------------------------*/
	function successFunction(position) {
		//set vars for coordinates
		var lat = position.coords.latitude;
		var lon = position.coords.longitude;
		//Get JSON
		$.getJSON("https://api.apixu.com/v1/current.json?key=32df9829b4c84bfc994230724170803&q="+lat+","+lon, function (data) {
		   //Declare & set vars in celcius & fahrenheit for temperature, feelsLike temperature, weather text, & icon img
		   var cel = data.current.temp_c;
		   var cond = data.current.condition.text;
		   var icon = data.current.condition.icon;
		   //Display temperature in farenheit by default
		   $("#temp").text(cel);
		   //Set img alt & to text condition & img src to icon
		   $("#image").attr("src", icon);
		  });
		}

		//console error message
		function errorFunction() {
		 console.log("sorry");
		}

		//If geolocation works successFunction is run
		if (navigator.geolocation) {
		 navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
		} else {
		 alert('Geolocation not enabled in your browser.');
	}
/*-----------------------------------------------------*/


/* ==========================================================================
   When document is Scrollig, do
   ========================================================================== */
	
	$(window).on('scroll', function() {
		headerStyle();
		factCounter();
	});
	
/* ==========================================================================
   When document is loading, do
   ========================================================================== */
	
	$(window).on('load', function() {
		handlePreloader();
	});

})(window.jQuery);
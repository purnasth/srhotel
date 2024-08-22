/* Template: Hotel - Hotel HTML Template
   Author: Payo Themes
   Version: 1.0.0
   Created: Aug 2017
   Description: Custom JS file
*/

(function ($) {
  "use strict";

  /* Single Room Carousel */
  $(".single-room-carousel").owlCarousel({
    loop: true,
    margin: 0,
    responsiveClass: true,
    pagination: false,
    autoplay: true,
    autoplayTimeout: 2900,
    autoplayHoverPause: true,
    responsive: {
      0: {
        items: 1,
        nav: false,
      },
      600: {
        items: 1,
        nav: false,
      },
      1000: {
        items: 1,
        nav: false,
        loop: true,
        dots: true,
      },
    },
  });

  /* Attractions Carousel */
  $(".attractions-carousel2").owlCarousel({
    loop: true,
    margin: 0,
    responsiveClass: true,
    pagination: false,
    autoplay: true,
    autoplayTimeout: 2900,
    autoplayHoverPause: true,
    responsive: {
      0: {
        items: 1,
        nav: false,
      },
      600: {
        items: 1,
        nav: false,
      },
      1000: {
        items: 1,
        nav: false,
        loop: true,
        dots: false,
      },
    },
  });

  $(".attractions-carousel").owlCarousel({
    loop: true,
    margin: 0,
    responsiveClass: true,
    pagination: false,
    autoplay: true,
    autoplayTimeout: 3500,
    autoplayHoverPause: true,
    responsive: {
      0: {
        items: 1,
        nav: false,
      },
      600: {
        items: 1,
        nav: false,
      },
      1000: {
        items: 1,
        nav: false,
        loop: true,
        dots: false,
      },
    },
  });

  /* Room Carousel Images*/
  $(".room-carousel").owlCarousel({
    loop: true,
    margin: 20,
    responsiveClass: true,
    autoplay: true,
    autoplayTimeout: 3500,
    autoplayHoverPause: true,
    responsive: {
      0: {
        items: 1,
        nav: true,
      },
      600: {
        items: 2,
        nav: true,
      },
      1000: {
        items: 1,
        nav: true,
        loop: false,
        dots: false,
      },
    },
  });

  /*popup gallery*/
  $(".popup-gallery").magnificPopup({
    delegate: "a",
    type: "image",
    tLoading: "Loading image #%curr%...",
    mainClass: "mfp-img-mobile",
    gallery: {
      enabled: true,
      navigateByImgClick: true,
      preload: [0, 1], // Will preload 0 - before current, and 1 after the current image
    },
    image: {
      tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
      titleSrc: function (item) {
        return item.el.attr("title") + "<small></small>";
      },
    },
  });

  /*end popup gallery*/

  /* Booking Form */
  $("#BookingForm")
    .validator()
    .on("submit", function (event) {
      if (event.isDefaultPrevented()) {
        // handle the invalid form...
        formBError();
        submitBMSG(false, "All fields are required");
      } else {
        // everything looks good!
        event.preventDefault();
        submitBForm();
      }
    });

  function submitBForm() {
    // initiate variables with form content
    var byourname = $("#byourname").val();
    var bnumberofrooms = $("#bnumberofrooms").val();
    var bemail = $("#bemail").val();
    var bnumberofpeople = $("#bnumberofpeople").val();
    var bphonenumber = $("#bphonenumber").val();
    var bcheckin = $("#bcheckin").val();
    var bcheckout = $("#bcheckout").val();

    $.ajax({
      type: "POST",
      url: "assets/contact/bookingform.php",
      data:
        "yourname=" +
        byourname +
        "&numberofrooms=" +
        bnumberofrooms +
        "&email=" +
        bemail +
        "&numberofpeople=" +
        bnumberofpeople +
        "&phonenumber=" +
        bphonenumber +
        "&checkin=" +
        bcheckin +
        "&checkout=" +
        bcheckout,

      success: function (text) {
        if (text == "success") {
          formBSuccess();
        } else {
          formBError();
          submitBMSG(false, text);
        }
      },
    });
  }

  function formBSuccess() {
    $("#BookingForm")[0].reset();
    submitBMSG(true, "Message Sent!");
  }

  function formBError() {
    $("#BookingForm")
      .removeClass()
      .addClass("shake animated")
      .one(
        "webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend",
        function () {
          $(this).removeClass();
        }
      );
  }

  function submitBMSG(valid, msg) {
    if (valid) {
      var msgClasses = "h3 text-center text-success";
    } else {
      var msgClasses = "h3 text-center text-danger";
    }
    $("#bmsgSubmit").removeClass().addClass(msgClasses).text(msg);
  }
  /* end Booking Form */

  /* Contact Form */
  $("#ContactForm")
    .validator()
    .on("submit", function (event) {
      if (event.isDefaultPrevented()) {
        // handle the invalid form...
        formCError();
        submitCMSG(false, "All fields are required");
      } else {
        // everything looks good!
        event.preventDefault();
        submitCForm();
      }
    });

  function submitCForm() {
    // initiate variables with form content
    var hfirstname = $("#hfirstname").val();
    var hlastname = $("#hlastname").val();
    var hemail = $("#hemail").val();
    var hmessage = $("#hmessage").val();

    $.ajax({
      type: "POST",
      url: "assets/contact/contactform.php",
      data:
        "firstname=" +
        hfirstname +
        "&lastname=" +
        hlastname +
        "&email=" +
        hemail +
        "&message=" +
        hmessage,
      success: function (text) {
        if (text == "success") {
          formCSuccess();
        } else {
          formCError();
          submitCMSG(false, text);
        }
      },
    });
  }

  function formCSuccess() {
    $("#ContactForm")[0].reset();
    submitCMSG(true, "Message Sent!");
  }

  function formCError() {
    $("#ContactForm")
      .removeClass()
      .addClass("shake animated")
      .one(
        "webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend",
        function () {
          $(this).removeClass();
        }
      );
  }

  function submitCMSG(valid, msg) {
    if (valid) {
      var msgClasses = "h3 text-center text-success";
    } else {
      var msgClasses = "h3 text-center text-danger";
    }
    $("#cmsgSubmit").removeClass().addClass(msgClasses).text(msg);
  }
})(jQuery);

// Nepal Hotel Reservation
if (jQuery("#nepalhotel-form")[0]) {
  jQuery("#checkin").datepicker({
    changeMonth: true,
    changeYear: true,
    dateFormat: "yy-mm-dd",
    minDate: "0",
    maxDate: "+2Y",
    onSelect: function (dateStr) {
      var d1 = jQuery(this).datepicker("getDate");
      d1.setDate(d1.getDate() + 1); // change to + 1 if necessary
      var d2 = jQuery(this).datepicker("getDate");
      d2.setDate(d2.getDate() + 180); // change to + 180 if necessary
      jQuery("#checkout").datepicker("option", "minDate", d1);
      jQuery("#checkout").datepicker("option", "maxDate", d2);
      var start = jQuery("#checkin").datepicker("getDate");
      var end = jQuery("#checkout").datepicker("getDate");
      var days = (end - start) / 1000 / 60 / 60 / 24;
      if (end != null) var dd = jQuery(this).datepicker("getDate");
      jQuery("#checkout").datepicker("setDate", d1);
    },
  });

  jQuery("#checkout").datepicker({
    changeMonth: true,
    changeYear: true,
    dateFormat: "yy-mm-dd",
    minDate: jQuery("#checkin").datepicker("getDate"),
    maxDate: "+2Y",
  });

  jQuery("#nepalhotel-form").validate({
    errorElement: "span",
    errorClass: "validate-has-error",
    rules: {
      nepalhotel_check_in: { required: true },
      nepalhotel_check_out: { required: true },
      nepalhotel_code: { required: true },
    },
    messages: {
      nepalhotel_check_in: { required: "" },
      nepalhotel_check_out: { required: "" },
      nepalhotel_code: { required: "" },
    },
    submitHandler: function (form) {
      form.submit();
      // window.open('about:blank', 'booking_popup', 'width=1000,height=800');
      return false;
    },
  });
}

jQuery(document).ready(function () {
  if (jQuery(".form_subscribe")[0]) {
    var baseurl = window.location.pathname;
    jQuery(".form_subscribe").validate({
      rules: {
        email_address: {
          required: !0,
          email: !0,
        },
      },
      messages: {
        email_address: {
          required: "Enter your email address",
          email: "Enter a VALID email address",
        },
      },
      submitHandler: function (form) {
        var Frmval = jQuery(".form_subscribe").serialize();
        return (
          jQuery("#btn-submit").attr("disabled", "true"),
          jQuery.ajax({
            type: "POST",
            dataType: "JSON",
            url: "/godavari/includes/controllers/ajax.subscribers.php",
            data: "action=getMailaddress&" + Frmval,
            success: function (data) {
              var msg = eval(data);
              jQuery("#btn-submit").removeAttr("disabled"),
                jQuery("#result-newsletter").html(msg.message),
                jQuery(".form_subscribe")[0].reset();
            },
          }),
          !1
        );
      },
    });
  }
  if (jQuery(".form_subscribepop")[0]) {
    var baseurl = window.location.pathname;
    jQuery(".form_subscribepop").validate({
      rules: {
        fullname: {
          required: !0,
        },
        email_address: {
          required: !0,
          email: !0,
        },
      },
      messages: {
        fullname: {
          required: "Enter your Fullname",
        },
        email_address: {
          required: "Enter your email address",
          email: "Enter a VALID email address",
        },
      },
      submitHandler: function (form) {
        var Frmval = jQuery(".form_subscribepop").serialize();
        return (
          jQuery("#btn-submit").attr("disabled", "true"),
          jQuery.ajax({
            type: "POST",
            dataType: "JSON",
            url: "/includes/controllers/ajax.subscribers.php",
            data: "action=getMailaddress&" + Frmval,
            success: function (data) {
              var msg = eval(data);
              jQuery("#btn-submit").removeAttr("disabled"),
                jQuery("#result-newsletterpop").html(msg.message),
                jQuery(".form_subscribepop")[0].reset();
            },
          }),
          !1
        );
      },
    });
  }
});

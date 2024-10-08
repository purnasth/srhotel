function sendBooking() {
    var e = jQuery;
    return e("#ajax-form-search-send").validate({
        rules: {
            name: {
                required: !0,
                minlength: 2
            },
            surname: {
                required: !1
            },
            email: {
                required: !0,
                email: !0
            },
            phone: {
                required: !0,
                minlength: 9
            }
        },
        messages: {
            name: {
                required: "Please enter your name.",
                minlength: e.format("At least {0} characters required.")
            },
            email: {
                required: "Please enter your email.",
                email: "Please enter a valid email."
            },
            phone: {
                required: "Please enter your phone.",
                minlength: e.format("At least {0} characters required.")
            }
        },
        submitHandler: function(t) {
            return e(t).ajaxSubmit({
                success: function(a, n, i, o) {
                    e(t).parent().append(a), e(t).remove()
                }
            }), !1
        }
    }), e("#ajax-form-search-send").submit(), !1
}! function(e) {
    "use strict";

    function t() {
        e(".awe-calendar:not(.from, .to)").datepicker({
            prevText: '<i class="fa fa-arrow-left"></i>',
            nextText: '<i class="fa fa-arrow-right"></i>',
            buttonImageOnly: !1
        }), e(".awe-calendar.from").datepicker({
            prevText: '<i class="fa fa-arrow-left"></i>',
            nextText: '<i class="fa fa-arrow-right"></i>',
            buttonImageOnly: !1,
            minDate: 0,
            onClose: function(t) {
                var a = new Date(t),
                    n = new Date(a.getTime() + 864e5),
                    i = n.getMonth() + 1 + "/" + n.getDate() + "/" + n.getFullYear();
                e(".awe-calendar.to").datepicker("option", "minDate", i).focus()
            }
        }), e(".awe-calendar.to").datepicker({
            prevText: '<i class="fa fa-arrow-left"></i>',
            nextText: '<i class="fa fa-arrow-right"></i>',
            buttonImageOnly: !1,
            minDate: 0,
            onClose: function(e) {}
        })
    }

    function a() {
        e(".accordion").accordion({
            heightStyle: "content"
        })
    }

    function n() {
        e(".tabs").tabs({
            show: {
                effect: "fadeIn",
                duration: 300
            },
            hide: {
                effect: "fadeOut",
                duration: 300
            }
        })
    }

    function i() {
        e(".awe-select").each(function(t, a) {
            e(this).selectpicker()
        })
    }

    function o() {
        e(".awe-calendar").each(function() {
            var t = e(this);
            t.wrap('<div class="awe-calendar-wrapper"></div>'), t.after('<i class="fa fa-calendar"></i>')
        })
    }

    function r() {
        if (e("#header_content").length) {
            var t = e("#header_content"),
                a = t.data().responsive,
                n = e(window).innerWidth(),
                i = e(window).scrollTop(),
                o = e("#header .header_top").innerHeight(),
                r = t.innerHeight();
            (void 0 == a || "" == a) && (a = 1199), i > o ? 0 == t.hasClass("header-sticky") && (t.addClass("header-sticky"), a >= n && t.find(".header_menu").css("top", r + "px")) : (t.removeClass("header-sticky"), a >= n && t.find(".header_menu").css("top", r + o + "px"))
        }
    }

    function s() {
        if (e("#header_content").length) {
            var t = e("#header_content"),
                a = t.data().responsive,
                n = (e(window).scrollTop(), e("#header .header_top").innerHeight(), t.innerHeight(), e(window).innerWidth());
            (void 0 == a || "" == a) && (a = 1199), a >= n ? t.addClass("header_mobile").removeClass("header_content") : (e(".menu-bars").removeClass("active"), t.removeClass("header_mobile").addClass("header_content"), e("#header_content .header_menu").css({
                top: ""
            }).removeClass("active").find("ul").css("display", ""))
        }
    }

    function l() {
        e(".menu-bars").click(function(t) {
            e(".header_menu").hasClass("active") ? (e(".header_menu").removeClass("active"), e(this).removeClass("active")) : (e(".header_menu").addClass("active"), e(this).addClass("active"))
        }), e(".menu li a").on("click", "span", function(t) {
            t.preventDefault();
            var a = e(this),
                n = a.parent("a").parent("li"),
                i = n.parent("ul");
            return n.find("> ul").is(":hidden") ? (i.find("> li > ul").slideUp(), n.find("> ul").slideDown()) : n.find("> ul").slideUp(), !1
        })
    }

    function c() {
        u()
    }

    function d(t) {
        e(".awe-ajax").click(function(a) {
            var n = e(this),
                i = n.attr("href");
            return e("body").addClass("awe-overflow-h"), e("#awe-popup-overlay, #awe-popup-wrap").addClass("in"), p(i, "#awe-popup-wrap .awe-popup-content", t), !1
        }), e(document).on("click", "#awe-popup-overlay, #awe-popup-close, #awe-popup-wrap", function(t) {
            return t.preventDefault(), e("#awe-popup-wrap, #awe-popup-overlay").removeClass("in"), e("body").removeClass("awe-overflow-h"), e("#awe-popup-wrap .awe-popup-content").html(""), !1
        }), e(document).on("click", "#awe-popup-wrap .awe-popup-content", function(e) {
            e.stopPropagation()
        })
    }

    function u() {
        if (e("#awe-popup-wrap").hasClass("in")) {
            var t = e("#awe-popup-wrap .awe-popup-content"),
                a = e(window).innerHeight(),
                n = t.innerHeight(),
                i = (a - n) / 2;
            a > n && n > 0 ? t.parent().css({
                "padding-top": i + "px",
                "padding-bottom": "0"
            }) : t.parent().css({
                "padding-top": "10px",
                "padding-bottom": "10px"
            })
        }
    }

    function p(t, a, n, i) {
        e.ajax({
            url: t,
            type: "GET",
            dataType: "html",
            beforeSend: function() {
                i && i()
            }
        }).done(function(t) {
            e(a).html(t), n && n()
        }).fail(function() {
            console.log("error")
        }).always(function() {
            console.log("complete")
        })
    }

    function h() {
        if (e("#banner-slider").length) {
            var t = e("#header").innerHeight();
            e("#banner-slider").owlCarousel({
                autoPlay: 5e3,
                navigation: !0,
                singleItem: !0,
                pagination: !1,
                transitionStyle: "fade",
                navigationText: ['<i class="fa fa-arrow-left"></i>', '<i class="fa fa-arrow-right"></i>'],
                beforeInit: function() {
                    var a = e("#banner-slider").data().height,
                        n = e(window).height(),
                        i = e(window).width();
                    e(".slider-item").each(function(o, r) {
                        var s = e(this).data().image;
                        e(this).css("background-image", "url(" + s + ")"), "" != a && void 0 != a ? i > 767 ? e(this).css("height", a) : 767 >= i ? e(this).css("height", 500) : 480 >= i && e(this).css("height", 400) : e(this).css("height", n - t)
                    })
                },
                beforeUpdate: function() {
                    var a = e("#banner-slider").data().height,
                        n = e(window).width();
                    "" == a || void 0 == a ? e(".slider-item").each(function(a, n) {
                        var i = e(window).height();
                        e(this).css("height", i - t + "px")
                    }) : e(".slider-item").each(function(t, i) {
                        n > 767 ? e(this).css("height", a) : 767 >= n ? e(this).css("height", 500) : 480 >= n && e(this).css("height", 400)
                    })
                }
            })
        }
    }

    function m() {
        e("#slider-revolution").length && jQuery("#slider-revolution").show().revolution({
            dottedOverlay: "none",
            delay: 7e3,
            startwidth: 1060,
            startheight: 700,
            hideThumbs: 200,
            thumbWidth: 100,
            thumbHeight: 50,
            thumbAmount: 5,
            navigationType: "both",
            navigationArrows: "none",
            navigationStyle: "round",
            touchenabled: "on",
            onHoverStop: "off",
            swipe_velocity: .7,
            swipe_min_touches: 1,
            swipe_max_touches: 1,
            drag_block_vertical: !1,
            parallax: "mouse",
            parallaxBgFreeze: "on",
            parallaxLevels: [7, 4, 3, 2, 5, 4, 3, 2, 1, 0],
            keyboardNavigation: "off",
            navigationHAlign: "center",
            navigationVAlign: "bottom",
            navigationHOffset: 0,
            navigationVOffset: 20,
            soloArrowLeftHalign: "left",
            soloArrowLeftValign: "center",
            soloArrowLeftHOffset: 20,
            soloArrowLeftVOffset: 0,
            soloArrowRightHalign: "right",
            soloArrowRightValign: "center",
            soloArrowRightHOffset: 20,
            soloArrowRightVOffset: 0,
            shadow: 0,
            fullWidth: "on",
            fullScreen: "on",
            spinner: "spinner4",
            stopLoop: "off",
            stopAfterLoops: -1,
            stopAtSlide: -1,
            shuffle: "off",
            autoHeight: "off",
            forceFullWidth: "off",
            hideThumbsOnMobile: "off",
            hideNavDelayOnMobile: 1500,
            hideBulletsOnMobile: "off",
            hideArrowsOnMobile: "off",
            hideThumbsUnderResolution: 0,
            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            startWithSlide: 0,
            fullScreenOffsetContainer: "#header"
        })
    }

    function f() {
        e(".gallery").length && e(".gallery").each(function(t, a) {
            var n = e(this),
                i = n.find(".gallery-isotope"),
                o = n.find(".gallery-cat");
            if (i.length) {
                var r = function(e) {
                    i.isotope({
                        itemSelector: ".item-isotope",
                        filter: e,
                        percentPosition: !0,
                        masonry: {
                            columnWidth: ".item-size"
                        },
                        transitionDuration: "0.8s",
                        hiddenStyle: {
                            opacity: 0
                        },
                        visibleStyle: {
                            opacity: 1
                        }
                    })
                };
                o.on("click", "a", function(t) {
                    t.preventDefault(), e(this).parents("ul").find(".active").removeClass("active"), e(this).parent("li").addClass("active"), r(e(this).attr("data-filter"))
                }), r("*")
            }
        })
    }

    function g() {
        e(".guest-book_mansory").length && e(".guest-book_mansory").each(function(t, a) {
            e(this).isotope({
                itemSelector: ".item-masonry"
            })
        })
    }

    function v() {
        e(".owl-single").length && e(".owl-single").each(function(t, a) {
            var n = e(this);
            n.owlCarousel({
                autoPlay: 4e3,
                autoplayHoverPause: !0,
                singleItem: !0,
                smartSpeed: 1e3,
                navigation: !0,
                navigationText: ['<i class="hillter-icon-left-arrow"></i>', '<i class="hillter-icon-right-arrow"></i>']
            })
        })
    }

    function w() {
        if (e("#countdown").length) {
            var t = new Date((new Date).getFullYear() + 1, 0, 26);
            e("#countdown").countdown(t, function(t) {
                e(this).html(t.strftime('<div class="item"><span class="count">%D</span><span>Days</span></div><div class="item"><span class="count">%H</span><span>Hours</span></div><div class="item"><span class="count">%M</span><span>Minutes</span></div><div class="item"><span class="count">%S</span><span>Seconds</span></div>'))
            })
        }
    }

    function b() {
        e(".count-date").length && e(".count-date").each(function(t, a) {
            var n = e(this),
                i = n.attr("data-end");
            "" !== n.attr("data-end") && "undefined" != typeof n.attr("data-end") && n.countdown(i, function(t) {
                e(this).html(t.strftime("<span> %D <span>Days</span></span> <span> %H <span>HOURS</span></span> <span> %M <span>MINUTES</span></span> <span> %S <span>SECONDS</span></span>"))
            })
        })
    }

    function y() {
        e(".container .gallery").length && e(".container .gallery").each(function(t, a) {
            e(this).magnificPopup({
                delegate: "a",
                type: "image",
                mainClass: "mfp-with-zoom",
                zoom: {
                    enabled: true,
                    duration: 300,
                    easing: "ease-in-out"
                },
                gallery: {
                    enabled: true,
                    arrowMarkup: '<button title="%title%" type="button" class="mfp-prevent-%dir% fa fa-arrow-%dir%"></button>',
                   navigateByImgClick: true,
                }
            })
        })
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
    

    function _() {
        e(".room-detail_img").length && e(".room-detail_img").owlCarousel({
            navigation: !0,
            pagination: !1,
            navigationText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
            singleItem: !0,
            mouseDrag: !1,
            transitionStyle: "fade"
        }), e(".room-detail_thumbs").length && (e(".room-detail_thumbs").owlCarousel({
            items: 7,
            pagination: !1,
            navigation: !0,
            mouseDrag: !1,
            navigationText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
            itemsCustom: [
                [0, 3],
                [320, 4],
                [480, 5],
                [768, 6],
                [992, 7],
                [1200, 7]
            ]
        }), void 0 !== e(".room-detail_img").data("owlCarousel") && void 0 !== e(".room-detail_thumbs").data("owlCarousel") && e(".room-detail_thumbs").on("click", ".owl-item", function(t) {
            var a = e(this),
                n = a.index();
            return e(".room-detail_thumbs").find(".active").removeClass("active"), a.addClass("active"), e(".room-detail_img").data("owlCarousel").goTo(n), !1
        }))
    }

    function C() {
        e(".accomd-modations-slide_1").length && e(".accomd-modations-slide_1").owlCarousel({
            pagination: !0,
            navigation: !1,
            itemsCustom: [
                [0, 1],
                [480, 2],
                [992, 3],
                [1200, 3]
            ]
        })
    }

    function x() {
        e(".room_item-6, .room_item-5").each(function(t, a) {
            var n = e(this),
                i = n.data().background;
            void 0 != i && "" != i && n.css("background-image", "url(" + i + ")")
        })
    }

    function A() {
        T.iOS() ? e(".awe-parallax, .awe-static").addClass("fix-background-ios") : e(".awe-parallax").each(function(t, a) {
            e(this).parallax("50%", .2)
        })
    }

    function k() {
        if (e("#map").length) {
            for (var t = e("#map"), a = t.data().center.split(","), n = t.data().locations.split("--"), i = new google.maps.LatLng(a[0], a[1]), o = {
                    zoom: 16,
                    scrollwheel: !1,
                    center: i
                }, r = new google.maps.Map(document.getElementById("map"), o), s = 0; s < n.length; s++) {
                var l = n[s].split(","),
                    c = new google.maps.LatLng(l[0], l[1]);
                q(r, c, "", "")
            }
            e(".location-item").on("click", function(t) {
                t.preventDefault();
                var a = e(this),
                    n = a.data().location.split(","),
                    i = new google.maps.LatLng(n[0], n[1]);
                r.setCenter(i)
            })
        }
    }

    function q(e, t, a, n) {
        var i = {
            url: "images/icon-marker.png",
            size: new google.maps.Size(27, 40),
            origin: new google.maps.Point(0, 0),
            anchor: new google.maps.Point(14, 40)
        };
        new google.maps.Marker({
            position: t,
            map: e,
            draggable: !1,
            icon: i,
            title: a
        })
    }

    function S() {
        if (e("#attraction-maps").length) {
            var t = new google.maps.InfoWindow,
                a = e("#attraction_location").find(".active a"),
                n = a.data().latlng.split(","),
                i = new google.maps.LatLng(n[0], n[1]),
                o = {
                    zoom: 16,
                    scrollwheel: !1,
                    center: i
                },
                r = new google.maps.Map(document.getElementById("attraction-maps"), o);
            t.setOptions({
                content: "<div class='info-location-map'><h2>" + a.data().title + "</h2><span>" + a.data().address + "</span></div>",
                position: i
            }), t.open(r), e(document).on("click", "#attraction_location a", function(a) {
                a.preventDefault();
                var n = e(this),
                    o = n.attr("href"),
                    s = n.data().latlng.split(","),
                    l = n.data().title,
                    c = n.data().address;
                return n.parents("#attraction_location").find(".active").removeClass("active"), n.parent("li").addClass("active"), p(o, "#attraction_content"), i = new google.maps.LatLng(s[0], s[1]), r.setCenter(i), t.open(r), t.setOptions({
                    content: "<div class='info-location-map'><h2>" + l + "</h2><span>" + c + "</span></div>",
                    position: i
                }), !1
            }), google.maps.event.addDomListener(window, "resize", function() {
                google.maps.event.trigger(r, "resize"), r.setCenter(i)
            })
        }
    }

    function O() {
        var t = window.innerWidth;
        991 > t ? e(".attraction_sidebar .attraction_heading").addClass("attraction_heading_dropdown") : (e(".attraction_sidebar .attraction_heading").removeClass("attraction_heading_dropdown"), e(".attraction_sidebar .attraction_sidebar-content").css("display", ""))
    }

    function D() {
        e(".attraction_sidebar").on("click", ".attraction_heading_dropdown", function(t) {
            t.preventDefault(), e(".attraction_sidebar-content").is(":hidden") ? e(".attraction_sidebar .attraction_sidebar-content").slideDown() : e(".attraction_sidebar .attraction_sidebar-content").slideUp()
        })
    }

    function H() {
        e(".statistics_item .count").length && e(".statistics_item").appear(function() {
            var t = e(".count", this).html();
            e(".count", this).countTo({
                from: 0,
                to: t,
                speed: 2e3,
                refreshInterval: 50
            })
        })
    }

    function P() {
        e(".view-pass").mousedown(function(t) {
            e(this).prev('input[type="password"]').attr("type", "text")
        }), e(".view-pass").mouseup(function(t) {
            e(this).prev('input[type="text"]').attr("type", "password")
        })
    }
    var T = {
        Android: function() {
            return navigator.userAgent.match(/Android/i)
        },
        BlackBerry: function() {
            return navigator.userAgent.match(/BlackBerry/i)
        },
        iOS: function() {
            return navigator.userAgent.match(/iPhone|iPad|iPod/i)
        },
        Opera: function() {
            return navigator.userAgent.match(/Opera Mini/i)
        },
        Windows: function() {
            return navigator.userAgent.match(/IEMobile/i)
        },
        any: function() {
            return T.Android() || T.BlackBerry() || T.iOS() || T.Opera() || T.Windows()
        }
    };
    t(), a(), n(), i(), o(), l(), d(c), h(), m(), v(), w(), b(), y(), _(), C(), x(), D(), H(), P(), e("#send-contact-form").length && e("#send-contact-form").validate({
        rules: {
            name: {
                required: !0,
                minlength: 2
            },
            email: {
                required: !0,
                email: !0
            },
            subject: {
                required: !0,
                minlength: 2
            },
            message: {
                required: !0,
                minlength: 10
            }
        },
        messages: {
            name: {
                required: "Please enter your name.",
                minlength: e.format("At least {0} characters required.")
            },
            email: {
                required: "Please enter your email.",
                email: "Please enter a valid email."
            },
            subject: {
                required: "Please enter your subject.",
                minlength: e.format("At least {0} characters required.")
            },
            message: {
                required: "Please enter a message.",
                minlength: e.format("At least {0} characters required.")
            }
        },
        submitHandler: function(t) {
            return e(t).ajaxSubmit({
                success: function(t, a, n, i) {
                    e("#contact-content").slideUp(600, function() {
                        e("#send-contact-form input[type=text], #send-contact-form textarea").val(""), e("#contact-content").html(t).slideDown(600)
                    })
                }
            }), !1
        }
    }), e("#ajax-form-search-room").length && (e("#ajax-form-search-room").validate({
        rules: {
            arrive: {
                required: !0,
                minlength: 10
            },
            departure: {
                required: !0,
                minlength: 10
            },
            adults: {
                required: !0,
                minlength: 1
            },
            children: {
                required: !1
            }
        },
        messages: {
            arrive: {
                required: "Please enter a arrive.",
                minlength: e.format("At least {0} characters required.")
            },
            departure: {
                required: "Please enter a departure.",
                minlength: e.format("At least {0} characters required.")
            },
            adults: {
                required: "Please select number of adults.",
                minlength: e.format("At least {0} characters required.")
            }
        },
        submitHandler: function(t) {
            return e(t).ajaxSubmit({
                success: function(a, n, i, o) {
                    e(t).parent().append(a), e(t).remove()
                }
            }), !1
        }
    }), e("#ajax-form-search-room .vailability-submit .awe-btn").click(function() {
        e(this).parents("form:first").submit()
    })), e(document).ready(function() {
        e(window).load(function() {
            e("#preloader").delay(1e3).fadeOut("400", function() {
                e(this).fadeOut()
            }), e("body").append('<div class="awe-popup-overlay" id="awe-popup-overlay"></div><div class="awe-popup-wrap" id="awe-popup-wrap"><div class="awe-popup-content"></div><span class="awe-popup-close" id="awe-popup-close"></div>'), f(), g(), S(), k()
        }), e(window).scroll(function(e) {
            r()
        }), e(window).resize(function(e) {
            A(), u(), s(), r(), O()
        }).trigger("resize")
    })
}(jQuery);

$('a[data-toggle="dropdown"]').click(function() {
    var location = $(this).attr('href');
    window.location.href = location;
    return false;
});


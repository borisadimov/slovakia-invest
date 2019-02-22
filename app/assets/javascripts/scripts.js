$( document ).ready(function() {
  var burger = $('.burger')
  var menu = $('.menu')
  burger.click(function() {
    burger.toggleClass('active');
    menu.toggleClass('active');
  })
  
  var languageArrowBtn = $('.language-arrow__img')
  var languageArrowBoard = $('.language-arrow')
  var language = $('.language')
  
  languageArrowBtn.click(function() {
    languageArrowBoard.toggleClass('active')
    language.toggleClass('active')
  })

  //sliders
  var rewiewSlider = $('.rewiews__list')
  rewiewSlider.slick({
    infinite: true,
    slidesToShow: 2,
    slidesToScroll: 2,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });


  var popupSlider = $('.popup-content-wrapper')
  popupSlider.slick({
    infinite: true,
    slidesToShow: 2,
    slidesToScroll: 2,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  })
  
  // open popup
  var body = $('body')
  var btnQuestions = $('.any-questions__btn')
  var overlay = $('.overlay')
  var popupOverlay = $('.overlay-popup')
  var popup = $('.popup')
  var popupClose = $('.popup-close')

  var togglePopup = function() {
    popup.toggleClass('hidden')
    popup.toggleClass('visible')
    overlay.toggleClass('hidden')
    overlay.toggleClass('visible')
    body.toggleClass('scroll-remove')
  }

  btnQuestions.click(function() {
    togglePopup()
    popupSlider.slick('setPosition')
  })
  popupOverlay.click(function() {
    togglePopup()
  })
  overlay.click(function() {
    togglePopup()
  })
  popupClose.click(function() {
    togglePopup()
  })

  // scroll magic
  var controller = new ScrollMagic.Controller();
  
  var sceneFeatures = new ScrollMagic.Scene({triggerElement: ".features"})
    .offset(-200)
    .addTo(controller)
    // .addIndicators()
    .setClassToggle(".features", "active")
    .on('enter', function(e) {
      var item1To =  parseFloat($('.features-item:nth-child(1)').attr('data-to'))
      $('.features-item:nth-child(1) h2 span').spincrement({
        from: 0,
        to: item1To,
        duration: 2000
      })

      var item2To =  parseFloat($('.features-item:nth-child(2)').attr('data-to'))
      $('.features-item:nth-child(2) h2 span').spincrement({
        from: 0,
        to: item2To,
        duration: 2000
      })

      var item3To =  parseFloat($('.features-item:nth-child(3)').attr('data-to'))
      $('.features-item:nth-child(3) h2 span').spincrement({
        from: 0,
        to: item3To,
        duration: 2000
      })

      var item4To = parseFloat($('.features-item:nth-child(4)').attr('data-to'))
      $('.features-item:nth-child(4) h2 span').spincrement({
        from: 0,
        to: item4To,
        duration: 2000
      })
      sceneFeatures.remove()
    })

    function scrollMagicAddClass(className) {
      if ($(className).length > 0) {
        var scene = new ScrollMagic.Scene({triggerElement: className})
          .offset(-100)
          .addTo(controller)
          // .addIndicators()
          .setClassToggle(className, "active")
          .on('enter', function(e) {
            scene.remove()
        })  
      }
    }
  
    scrollMagicAddClass(".services")
    scrollMagicAddClass(".guarantee-wrapper")
    scrollMagicAddClass(".for-whom")
    scrollMagicAddClass(".how-work__items")
    scrollMagicAddClass(".prices-cards__wrapper")
    if ($('.item-page').length > 0) {
      scrollMagicAddClass(".news__content")
    }
  
  // sticky
  var backButton = $('.article-page__back')

  if (backButton.length > 0) {
    var container = $('.article-page__container')
    var scene = new ScrollMagic.Scene({triggerElement: ".article-page__container", duration: container.height() - 65})
      .triggerHook("onLeave")
      .offset(-100)
      .setPin(".article-page__back")
      // .addIndicators() // add indicators (requires plugin)
      .addTo(controller);
  }
  
  //video
  var headerVideo = $('.main-header__video')
  if (headerVideo.length > 0) {
    $('.main-header__video').get(0).play()
  }

  //menu
  var timerId
  var submenuBackground = $('.submenu-background')
  var navItems = $('.header__nav-item')
  navItems.each(function(i, item) {

    $(item).mouseenter(function(evt) {
      clearTimeout(timerId)
      var submenu = $(item).find('.submenu-wrapper')
      if (evt.currentTarget.childNodes[1]) {
        var heightSubmenu = $(item).find(".submenu").innerHeight()
      } else {
        var heightSubmenu = 0
      }
      submenuBackground.height(heightSubmenu)
      submenu.height(heightSubmenu)
    })
    
    $(item).mouseleave(function(evt) {
      var submenu = $(item).find('.submenu-wrapper')
      timerId = setTimeout(function() {
        submenuBackground.height(0)
      }, 300)
      submenu.height(0)
    })
  })

  // validation
  $(".footer__dispatch").validate({
    rules: {
      email: {
        required: true
      },
      checkbox: {
        required: true
      }
    },
    messages: {
      email: {
        required: 'this field is required',
        email: 'Please enter a valid email address.'
      }
    },
    submitHandler: function(form) {
     console.log('submit')
     form.submit()
    }
  });

  if ($(".blog-page_form").length > 0) {
    $(".blog-page_form").validate({
      rules: {
        name: {
          required: true
        },
        email: {
          required: true
        },
        checkbox: {
          required: true
        }
      },

      messages: {
        email: {
          required: 'this field is required',
          email: 'Please enter a valid email address.'
        }
      },
      submitHandler: function(form) {
      console.log('submit')
      form.submit()
      }
    });
  }

  if ($(".contacts-page__form").length > 0) {
    $(".contacts-page__form").validate({
      rules: {
        name: {
          required: true
        },
        email: {
          required: true
        },
        checkbox: {
          required: true
        }
      },

      messages: {
        email: {
          required: 'this field is required',
          email: 'Please enter a valid email address.'
        }
      },
      submitHandler: function(form) {
      console.log('submit')
      form.submit()
      }
    });
  }

  // tabs
  if ($('.tabs').length > 0) {
    $('.tabs').tabs({
      hide: 'fadeOut',
      show: 'fadeIn'
    })
  }

  // accordion price
  if ($('.accordion').length > 0) {
    var acc = $(".accordion");
    var i;
    
    var scenes = {}
    for (i = 0; i < acc.length; i++) {
      acc[i].dataset.id = i

      acc[i].onclick = function() {
        this.classList.toggle("active");
        $(this).next().toggle("show");

        var elementId = this.dataset.id
        var container = this.nextSibling;
				
        var cross = this.querySelector(".service-global__cross")

        if (this.classList.contains('active')) {
          setTimeout(function() {
            var scene = new ScrollMagic.Scene({triggerElement: container, duration: container.offsetHeight})
              .triggerHook("onLeave")
              .offset(-150)
              .setPin(cross)
              // .addIndicators()
              .addTo(controller);
  
              scenes[elementId] = scene
          }, 500)
        }
        
        if (scenes[elementId]) {
          scenes[elementId].destroy(true)
        }
      }
    }
  }

  // header animation
  if (($('.item-page__header-logo').length > 0)) {
    $('.item-page__header-logo').addClass('fade-in-left')

    if (($('.item-page__links').length > 0)) {
      setTimeout(function() {
        $('.item-page__links').addClass('animate')
      }, 1300)
    }
  }

  // cookie
  if (localStorage.getItem('cookieClosed') === null) {
    $('.cookie-item').addClass('show');
  }
  $('#cookieAccept').on('click', function() {
    localStorage.setItem('cookieClosed', 'true')
    $('.cookie-item').addClass('hidden');
  })

  // search 
  var searchForm = $('.search-form form');
  var searchCross = $('.search-form__input-cross')

  if (searchForm.length > 0) {
    function getParameterByName(name, url) {
      if (!url) url = window.location.href;
      name = name.replace(/[\[\]]/g, '\\$&');
      var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
          results = regex.exec(url);
      if (!results) return null;
      if (!results[2]) return '';
      return decodeURIComponent(results[2].replace(/\+/g, ' '));
    }

    getParameterByName('query') === null ? 
      searchCross.addClass('hidden') : 
      searchCross.removeClass('hidden')
  }
})
$( document ).ready(function() {
  var addDropDownMenuListener = function(element, buttonElementClass, dropContentClass, contentHeightClass) {
    const buttonElement = element.querySelector('.' + buttonElementClass)
    const dropContent = element.querySelector('.' + dropContentClass)
    const contentHeight = dropContent.querySelector('.' + contentHeightClass).offsetHeight
  
    buttonElement.addEventListener('click', function() {
      if (element.classList.contains('active')) {
        element.classList.remove('active')
        dropContent.style.height = 0 + 'px'
      } else {
        element.classList.add('active')
        dropContent.style.height = contentHeight + 'px'
      }
    })
  }
  
  var prices = $('.price-page__item')
  prices.each(function(i, element) {
    addDropDownMenuListener(element, 'price-page__item-title', 'price-page__item-content', 'item-page__price')
  })
  
  var contacts = $(document.querySelectorAll('.contacts-page__faces-item-dd'))
  contacts.each(function(i, element) {
    addDropDownMenuListener(element, 'contacts-page__faces-item-dd-title', 'contacts-page__faces-item-dd-wrapper', 'contacts-page__faces-item-wrapper')
  })
  
  
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

  var btnQuestions = $('.any-questions__btn')
  var overlay = $('.overlay')
  var popup = $('.popup')

  btnQuestions.click(function() {
    popup.toggleClass('hidden')
    overlay.toggleClass('hidden')
  })

  overlay.click(function() {
    popup.toggleClass('hidden')
    overlay.toggleClass('hidden')
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
  
  // scroll magic
  
  var controller = new ScrollMagic.Controller();
  
  var sceneServices = new ScrollMagic.Scene({triggerElement: ".services"})
    .offset(-100)
    .addTo(controller)
    // .addIndicators()
    .setClassToggle(".services", "active")
    .on('enter', function(e) {
      sceneServices.remove()
    })
  
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
      }, 400)
      submenu.height(0)
    })
  })
})

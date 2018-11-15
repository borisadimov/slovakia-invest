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

languageArrowBtn.click(function() {
  languageArrowBoard.toggleClass('active')
})

var rewiewSlider = $('.rewiews__list')

rewiewSlider.slick({
  infinite: true,
  slidesToShow: 2,
  slidesToScroll: 2
});

// scroll magic

var controller = new ScrollMagic.Controller();

var scene = new ScrollMagic.Scene({triggerElement: ".services"})
  .addTo(controller)
  .addIndicators()
  .setClassToggle(".services", "active")
  .on('enter', function(e) {
    scene.remove()
  })

var dropDownMenu = function(elements, buttonElementClass, dropContentClass, contentHeightClass) {
  elements.each(function(i, element) {
    const buttonElement = element.querySelector('.' + buttonElementClass)
    const dropContent = element.querySelector('.' + dropContentClass)
    const contentHeight = dropContent.querySelector('.' + contentHeightClass).offsetHeight
  
    buttonElement.addEventListener('click', () => {
      if (element.classList.contains('active')) {
        element.classList.remove('active')
        dropContent.style.height = 0 + 'px'
      } else {
        element.classList.add('active')
        dropContent.style.height = contentHeight + 'px'
      }
    })
  })
}

var prices = $('.price-page__item')
dropDownMenu(prices, 'price-page__item-title', 'price-page__item-content', 'item-page__price')

var contacts = $(document.querySelectorAll('.contacts-page__faces-item-dd'))
dropDownMenu(contacts, 'contacts-page__faces-item-dd-title', 'contacts-page__faces-item-dd-wrapper', 'contacts-page__faces-item-wrapper')
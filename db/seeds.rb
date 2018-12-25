# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

lorem = <<~TEXT
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet urna posuere, tempor arcu vitae, porttitor tortor. Ut malesuada feugiat nisl vel molestie. Cras semper accumsan elementum. Etiam quis purus diam. Curabitur sem velit, viverra vel orci ac, lacinia condimentum libero. Donec eleifend ac lectus ut interdum. Vivamus eleifend a sapien in ultrices.
  Nunc aliquet, orci nec auctor placerat, odio lectus auctor ante, scelerisque suscipit lorem urna sed nibh. Suspendisse mi risus, rutrum eu mollis id, varius in elit. Curabitur neque quam, semper vulputate blandit eget, pharetra ut enim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus tempor nisi a ligula mattis dignissim. Aliquam ullamcorper laoreet mi, in vestibulum quam luctus non. Sed velit odio, hendrerit eu odio eget, blandit gravida dui. Cras porttitor mollis ipsum vitae venenatis."
TEXT

desc_ru = 'ВНЖ позволяет иммигрировать и проживать в какой-либо стране дольше, чем это возможно по визе. Тогда как шенгенская виза дает возможность находиться на территории Словакии и Шенгенского пространства не больше, чем 90 дней в течение шести месяцев. Получение вида на жительство позволяет его владельцу проживать в Словакии непрерывно в течение всего срока его действия, а также беспрепятственно находится в странах Шенгена до 90 дней.'
desc_en = 'A residence permit allows you to immigrate and live in any country longer than is possible on a visa. While the Schengen visa makes it possible to stay on the territory of Slovakia and the Schengen area for no more than 90 days within six months. Obtaining a residence permit allows its owner to reside in Slovakia continuously for the entire duration of its validity, and also freely resides in the Schengen countries for up to 90 days.'
desc_uk = 'ВНЖ дозволяє іммігрувати і проживати в будь-якій країні довше, ніж це можливо за візою. Тоді як шенгенська віза дає можливість перебувати на території Словаччини та Шенгенського простору не більш, ніж 90 днів протягом шести місяців. Отримання дозволу на проживання дозволяє його власнику проживати в Словаччині безперервно протягом всього терміну його дії, а також безперешкодно знаходиться в країнах Шенгену до 90 днів.'

content = "<p><strong><span style=\"font-size: 48px;\">Иммиграция в деталях</span></strong></p><p><span style=\"font-size: 14px;\">#{lorem}</span></p><p><span style=\"font-size: 14px;\"><span class=\"fr-video fr-fvc fr-dvb fr-draggable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"//www.youtube.com/embed/tDoLUCKvLWk?wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\"></iframe></span></span><br></p>"

services = [
  {
    order: 1,
    title_ru: 'Иммиграция', title_en: 'Immigration', title_uk: 'Iмміграція',
    description_ru: desc_ru, description_en: desc_en, description_uk: desc_uk,
    content_ru: content, content_en: content, content_uk: content,
    reviews_attributes: [
      {
        order: 1,
        name_ru: 'Александр Илларионов', name_en: 'Alexander Illarionov', name_uk: 'Олександр Ілларіонов',
        description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
        text_ru: lorem, text_en: lorem, text_uk: lorem
      },
      {
        order: 2,
        name_ru: 'Александр Николаенко', name_en: 'Alexander Nikolayenko', name_uk: 'Олександр Ніколаєнко',
        description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
        text_ru: lorem, text_en: lorem, text_uk: lorem
      }
    ],
    articles: [
      {
        order: 1,
        title_ru: 'ВНЖ для бизнеса', title_en: 'Residence permit for business', title_uk: 'ВНЖ для бізнесу',
        content_ru: content, content_en: content, content_uk: content,
        prices_attributes: [
          {
            order: 1,
            title_ru: 'Первый ВНЖ', title_en: 'First residence permit', title_uk: 'Перший ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            value: '1699 €'
          },
          {
            order: 2,
            title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            value: '249 €'
          },
          {
            order: 3,
            title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            value: '249 €'
          },
          {
            order: 4,
            title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            value: '249 €'
          },
          {
            order: 5,
            title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            value: '249 €'
          }
        ]
      },
      { order: 2, title_ru: 'ВНЖ для работы', title_en: 'Residence permit for work', title_uk: 'ВНЖ для роботи' },
      { order: 3, title_ru: 'ВНЖ для учебы', title_en: 'Residence permit for study', title_uk: 'ВНЖ для навчання' },
      { order: 4, title_ru: 'Виза', title_en: 'Visa', title_uk: 'Віза' },
      { order: 5, title_ru: 'ПМЖ', title_en: 'Permanent residence', title_uk: 'ПМЖ' },
      { order: 6, title_ru: 'Гражданство', title_en: 'Citizenship', title_uk: 'Громадянство' }
    ]
  },
  {
    order: 2,
    title_ru: 'Бизнес', title_en: 'Business', title_uk: 'Бізнес',
    description_ru: desc_ru, description_en: desc_en, description_uk: desc_uk,
    content_ru: content, content_en: content, content_uk: content,
    articles: [
      { order: 1, title_ru: 'Учреждение фирмы', title_en: 'Company establishment', title_uk: 'Установа фірми' },
      { order: 2, title_ru: 'Банковский счет', title_en: 'Bank account', title_uk: 'Банківський рахунок' },
      { order: 3, title_ru: 'Бухучет и отчетность', title_en: 'Accounting and Reporting', title_uk: 'Бухоблік і звітність' },
      { order: 4, title_ru: 'Начисление зарплаты', title_en: 'Payroll', title_uk: 'Нарахування зарплатні' },
      { order: 5, title_ru: 'Аудит', title_en: 'Audit', title_uk: 'Аудит' },
      { order: 6, title_ru: 'Другие обязательства', title_en: 'Other obligations', title_uk: 'Iнші зобов\'язання' },
      { order: 7, title_ru: 'Регистрация торговой марки', title_en: 'Trademark Registration', title_uk: 'Реєстрація торгової марки' }
    ]
  },
  {
    order: 3,
    title_ru: 'Образование', title_en: 'Education', title_uk: 'Освіта',
    description_ru: desc_ru, description_en: desc_en, description_uk: desc_uk,
    content_ru: content, content_en: content, content_uk: content,
    articles: [
      { order: 1, title_ru: 'Образование в Словакии', title_en: 'Education in Slovakia', title_uk: 'Освіта в Словаччині' },
      { order: 2, title_ru: 'Словацкий язык', title_en: 'Slovak language', title_uk: 'Словацька мова' },
      { order: 3, title_ru: 'Другие языки', title_en: 'Other languages', title_uk: 'Інші мови' },
      { order: 4, title_ru: 'Нострификация диплома', title_en: 'Diploma nostrification', title_uk: 'Нострифікація диплома' }
    ]
  },
  {
    order: 4,
    title_ru: 'Инвестиции', title_en: 'Investments', title_uk: 'Iнвестиції',
    description_ru: desc_ru, description_en: desc_en, description_uk: desc_uk,
    content_ru: content, content_en: content, content_uk: content,
    articles: [
      { order: 1, title_ru: 'Анализ инвестиционной среды', title_en: 'Investment environment analysis', title_uk: 'Аналіз інвестиційного середовища' },
      { order: 2, title_ru: 'Холдинговая компания', title_en: 'Holding company', title_uk: 'Холдингова компанія' },
      { order: 3, title_ru: 'Инвестиционные проекты', title_en: 'Investment projects', title_uk: 'Інвестиційні проекти' },
      { order: 4, title_ru: 'Исследование рынка', title_en: 'Market research', title_uk: 'Дослідження ринку' },
      { order: 5, title_ru: 'Инвестирование в промышленность', title_en: 'Investing in industry', title_uk: 'Інвестування в промисловість' },
      { order: 6, title_ru: 'Объекты недвижимости', title_en: 'Real estate', title_uk: 'Об\'єкт нерухомості' },
      { order: 7, title_ru: 'Тур по объектам недвижимости', title_en: 'Property Tour', title_uk: 'Тур по об\'єктах нерухомості' },
      { order: 8, title_ru: 'Налогообложение недвижимости', title_en: 'Property Taxation', title_uk: 'Оподаткування нерухомості' },
      { order: 9, title_ru: 'Ипотечниый кредит', title_en: 'Mortgage', title_uk: 'Іпотечний кредит' }
    ]
  },
  {
    order: 5,
    title_ru: 'Другие услуги', title_en: 'Other services', title_uk: 'Інші послуги',
    description_ru: desc_ru, description_en: desc_en, description_uk: desc_uk,
    content_ru: content, content_en: content, content_uk: content,
    articles: [
      { order: 1, title_ru: 'Водительские права', title_en: 'Driver\'s license', title_uk: 'Водійські права' },
      { order: 2, title_ru: 'Открытие банковского счета', title_en: 'Opening a bank account', title_uk: 'Відкриття банківського рахунку' },
      { order: 3, title_ru: 'Услуги переводчика', title_en: 'Translation services', title_uk: 'Послуги перекладача' },
      { order: 4, title_ru: 'Трансфер', title_en: 'Transfer', title_uk: 'Трансфер' },
      { order: 5, title_ru: 'Резервация гостиниц и апартаментов', title_en: 'Hotel and apartment reservation', title_uk: 'Резервація готелів та апартаментів' },
      { order: 6, title_ru: 'Лизинг', title_en: 'Leasing', title_uk: 'Лізинг' },
      { order: 7, title_ru: 'Сбережения и пенсия', title_en: 'Savings and pension', title_uk: 'Заощадження та пенсія' },
    ]
  }
]

contacts = [
  { order: 1, contact_type: 'skype', value: 'SlovakiaInvest6' },
  { order: 2, contact_type: 'phone', value: '+421-2-321-44-901' },
  { order: 3, contact_type: 'email', value: 'Office@SlovakiaInvest.sk' }
]

employees = [
  {
    order: 1,
    name_ru: 'Светлана Коновалова', name_en: 'Svetlana Konovalova', name_uk: 'Світлана Коновалова',
    position_ru: 'Офис-менеджер', position_en: 'Office Manager', position_uk: 'Офіс менеджер',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: contacts
  },
  {
    order: 2,
    name_ru: 'Татьяна Морозова', name_en: 'Tatyana Morozova', name_uk: 'Татьяна Морозова',
    position_ru: 'Офис-менеджер', position_en: 'Office Manager', position_uk: 'Офіс менеджер',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: contacts
  },
  {
    order: 3,
    name_ru: 'Оксана Шаровская', name_en: 'Oksana Sharovskaya', name_uk: 'Оксана Шаровська',
    position_ru: 'Менеджер по работе с клиентами', position_en: 'Customer Service Manager', position_uk: 'Менеджер по роботі з клієнтами',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: contacts
  },
  {
    order: 4,
    name_ru: 'Михаела Мелова', name_en: 'Michaela Melova', name_uk: 'Михаела Мелова',
    position_ru: 'Менеджер по работе с клиентами', position_en: 'Customer Service Manager', position_uk: 'Менеджер по роботі з клієнтами',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: contacts
  }
]

LandingPage.create(
  singleton_guard: 0,
  title_ru: 'Добро пожаловать в Словакию', title_en: 'Welcome to Slovakia', title_uk: 'Ласкаво просимо в Словаччину',
  subtitle_ru: 'Иммиграция. Бизнес. Инвестиции. Образование.', subtitle_en: 'Immigration. Business. Investments. Education.', subtitle_uk: 'Імміграція. Бізнес. Інвестиції. Освіта.',
  about_block_text_ru: lorem, about_block_text_en: lorem, about_block_text_uk: lorem,
  reviews_attributes: [
    {order: 1, link: '#', name_ru: 'Иван', name_en: 'Іван', name_uk: 'Іван', avatar: 'manager.jpg', description: 'profession', text: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, dolor repudiandae nobis illum soluta eveniet.'},
    {order: 2, link: '#', name_ru: 'Александр', name_en: 'Alexander', name_uk: 'Олександр', avatar: 'manager.jpg', description: 'profession', text: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, dolor repudiandae nobis illum soluta eveniet.'},
    {order: 3, link: '#', name_ru: 'Чак', name_en: 'Chuck', name_uk: 'Чак', avatar: 'manager.jpg', description: 'profession', text: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, dolor repudiandae nobis illum soluta eveniet.'},
    {order: 4, link: '#', name_ru: 'Александр', name_en: 'Alexander', name_uk: 'Олександр', avatar: 'manager.jpg', description: 'profession', text: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, dolor repudiandae nobis illum soluta eveniet.'},
    {order: 5, link: '#', name_ru: 'Иван', name_en: 'Іван', name_uk: 'Іван', avatar: 'manager.jpg', description: 'profession', text: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, dolor repudiandae nobis illum soluta eveniet.'},
    {order: 6, link: '#', name_ru: 'Чак', name_en: 'Chuck', name_uk: 'Чак', avatar: 'manager.jpg', description: 'profession', text: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, dolor repudiandae nobis illum soluta eveniet.'}
  ]
)

AboutUsPage.create(
  singleton_guard: 0,
  content_ru: content, content_en: content, content_uk: content
)

ContactsPage.create(
  singleton_guard: 0,
  page_title_ru: 'Контакты: как с нами связаться', page_title_en: 'Contacts: how to contact us', page_title_uk: 'Контакти: як з нами зв\'язатися',
  employees_title_ru: 'Мы в лицах', employees_title_en: 'We are in faces', employees_title_uk: 'Ми в особах',
  contacts_title_ru: 'Контакты', contacts_title_en: 'Contacts', contacts_title_uk: 'Контакти',
  contacts_attributes: contacts
)

Footer.create(
  singleton_guard: 0,
  contacts_attributes: contacts,
  bratislava_phone: '+421 2 321 44 901', moscow_phone: '+7-499-504-4421', kiev_phone: '+38-044-361-07-72',
  vk_link: 'https://vk.com/slovakiainvest', facebook_link: 'https://www.facebook.com/SlovakiaInvest', gplus_link: 'https://plus.google.com/+SlovakiainvestRu/posts', youtube_link: 'https://www.youtube.com/user/SlovakiaInvest'
)

(1..20).each do |index|
  Post.create(
    title_ru: "Тестовый пост #{index}",
    text_ru: lorem,
    author_ru: 'Иван Иванов',
    title_en: "Test Post #{index}",
    text_en: lorem,
    author_en: 'John Doe',
    title_uk: "Тiстовий Пiст #{index}",
    text_uk: lorem,
    author_uk: 'Егор Шульган'
  )
end

posts_ids = Post.all.pluck(:id)

services.each do |s|
  service_params = s.except(:articles)
  service = Service.create(service_params)
  
  s[:articles].each do |a|
    Article.create(a.merge(service_id: service.id, post_ids: 3.times.map { posts_ids.sample }))
  end

  employees.each do |employee_params|
    Employee.create(employee_params.merge(service_id: service.id))
  end
end

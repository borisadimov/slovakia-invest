# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

LOREM = <<~TEXT
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet urna posuere, tempor arcu vitae, porttitor tortor. Ut malesuada feugiat nisl vel molestie. Cras semper accumsan elementum.
  Nunc aliquet, orci nec auctor placerat, odio lectus auctor ante, scelerisque suscipit lorem urna sed nibh. Suspendisse mi risus, rutrum eu mollis id, varius in elit. Curabitur neque quam, semper vulputate blandit eget, pharetra ut enim.
TEXT

DESC_RU = 'ВНЖ позволяет иммигрировать и проживать в какой-либо стране дольше, чем это возможно по визе. Тогда как шенгенская виза дает возможность находиться на территории Словакии и Шенгенского пространства не больше, чем 90 дней в течение шести месяцев. Получение вида на жительство позволяет его владельцу проживать в Словакии непрерывно в течение всего срока его действия, а также беспрепятственно находится в странах Шенгена до 90 дней.'
DESC_EN = 'A residence permit allows you to immigrate and live in any country longer than is possible on a visa. While the Schengen visa makes it possible to stay on the territory of Slovakia and the Schengen area for no more than 90 days within six months. Obtaining a residence permit allows its owner to reside in Slovakia continuously for the entire duration of its validity, and also freely resides in the Schengen countries for up to 90 days.'
DESC_UK = 'ВНЖ дозволяє іммігрувати і проживати в будь-якій країні довше, ніж це можливо за візою. Тоді як шенгенська віза дає можливість перебувати на території Словаччини та Шенгенського простору не більш, ніж 90 днів протягом шести місяців. Отримання дозволу на проживання дозволяє його власнику проживати в Словаччині безперервно протягом всього терміну його дії, а також безперешкодно знаходиться в країнах Шенгену до 90 днів.'

CONTENT = "<p><strong><span style=\"font-size: 48px;\">Иммиграция в деталях</span></strong></p><p><span style=\"font-size: 14px;\">#{LOREM}</span></p><p><span style=\"font-size: 14px;\"><span class=\"fr-video fr-fvc fr-dvb fr-draggable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"//www.youtube.com/embed/tDoLUCKvLWk?wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\"></iframe></span></span><br></p>"

REVIEWS = [
  {
    order: 1,
    name_ru: 'Александр Илларионов', name_en: 'Alexander Illarionov', name_uk: 'Олександр Ілларіонов',
    description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
    text_ru: LOREM, text_en: LOREM, text_uk: LOREM
  },
  {
    order: 2,
    name_ru: 'Александр Николаенко', name_en: 'Alexander Nikolayenko', name_uk: 'Олександр Ніколаєнко',
    description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
    text_ru: LOREM, text_en: LOREM, text_uk: LOREM
  },
  {
    order: 3,
    name_ru: 'Александр Николаенко', name_en: 'Alexander Nikolayenko', name_uk: 'Олександр Ніколаєнко',
    description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
    text_ru: LOREM, text_en: LOREM, text_uk: LOREM
  },
  {
    order: 4,
    name_ru: 'Александр Илларионов', name_en: 'Alexander Illarionov', name_uk: 'Олександр Ілларіонов',
    description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
    text_ru: LOREM, text_en: LOREM, text_uk: LOREM
  }
]

FEATURES = [
  {
    order: 1, from: 0, to: 100,
    unit_ru: '%', unit_en: '%', unit_uk: '%',
    description_ru: 'Гарантия получения ВНЖ в Словакии или полный возврат денег',
    description_en: 'Guarantee of obtaining a residence permit in Slovakia or a full refund',
    description_uk: 'Гарантія отримання ВНЖ в Словаччині чи повне повернення грошей'
  },
  {
    order: 2, from: 0, to: 25,
    unit_ru: 'лет', unit_en: 'years', unit_uk: 'рокiв',
    description_ru: 'На рынке бухгалтерских услуг',
    description_en: 'In the market of accounting services',
    description_uk: 'На ринку бухгалтерських послуг'
  },
  {
    order: 3, from: 0, to: 10,
    unit_ru: 'лет', unit_en: 'years', unit_uk: 'рокiв',
    description_ru: 'Оказываем миграционные услуги в Словакию',
    description_en: 'We provide migration services to Slovakia',
    description_uk: 'Надаємо міграційні послуги в Словаччину',
  },
  {
    order: 4, from: 0, to: 0,
    unit_ru: '€', unit_en: '€', unit_uk: '€',
    description_ru: 'Заплатили штрафы наши клиенты за наши ошибки при ведении бухгалтерского учета или в миграционной полиции',
    description_en: 'Our clients paid fines for our accounting errors or in the migration police',
    description_uk: 'Заплатили штрафи наші клієнти за наші помилки при веденні бухгалтерського обліку або в міграційній поліції',
  }
]

PRICES = [
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

CONTACTS = [
  { order: 1, contact_type: 'skype', value: 'SlovakiaInvest6' },
  { order: 2, contact_type: 'phone', value: '+421-2-321-44-901' },
  { order: 3, contact_type: 'email', value: 'Office@SlovakiaInvest.sk' }
]

EMPLOYEES = [
  {
    order: 1,
    name_ru: 'Светлана Коновалова', name_en: 'Svetlana Konovalova', name_uk: 'Світлана Коновалова',
    position_ru: 'Офис-менеджер', position_en: 'Office Manager', position_uk: 'Офіс менеджер',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: CONTACTS
  },
  {
    order: 2,
    name_ru: 'Татьяна Морозова', name_en: 'Tatyana Morozova', name_uk: 'Татьяна Морозова',
    position_ru: 'Офис-менеджер', position_en: 'Office Manager', position_uk: 'Офіс менеджер',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: CONTACTS
  },
  {
    order: 3,
    name_ru: 'Оксана Шаровская', name_en: 'Oksana Sharovskaya', name_uk: 'Оксана Шаровська',
    position_ru: 'Менеджер по работе с клиентами', position_en: 'Customer Service Manager', position_uk: 'Менеджер по роботі з клієнтами',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: CONTACTS
  },
  {
    order: 4,
    name_ru: 'Михаела Мелова', name_en: 'Michaela Melova', name_uk: 'Михаела Мелова',
    position_ru: 'Менеджер по работе с клиентами', position_en: 'Customer Service Manager', position_uk: 'Менеджер по роботі з клієнтами',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: CONTACTS
  }
]

def generate_articles_attributes(titles)
  titles.map.with_index do |title, index|
    {
      order: index + 1,
      title_ru: title[:ru], title_en: title[:en], title_uk: title[:uk],
      content_ru: CONTENT, content_en: CONTENT, content_uk: CONTENT,
      prices_attributes: PRICES
    }
  end
end

def generate_services_attributes(services)
  services.map.with_index do |service, index|
    {
      order: index + 1,
      title_ru: service[:ru], title_en: service[:en], title_uk: service[:uk],
      description_ru: DESC_RU, description_en: DESC_EN, description_uk: DESC_UK,
      content_ru: CONTENT, content_en: CONTENT, content_uk: CONTENT,
      reviews_attributes: REVIEWS,
      features_attributes: FEATURES,
      articles: generate_articles_attributes(service[:articles])
    }
  end
end

services = generate_services_attributes([
  {
    ru: 'Иммиграция', en: 'Immigration', uk: 'Iмміграція',
    articles: [
      { ru: 'ВНЖ для бизнеса', en: 'Residence permit for business', uk: 'ВНЖ для бізнесу' },
      { ru: 'ВНЖ для работы', en: 'Residence permit for work', uk: 'ВНЖ для роботи' },
      { ru: 'ВНЖ для учебы', en: 'Residence permit for study', uk: 'ВНЖ для навчання' },
      { ru: 'Виза', en: 'Visa', uk: 'Віза' },
      { ru: 'ПМЖ', en: 'Permanent residence', uk: 'ПМЖ' },
      { ru: 'Гражданство', en: 'Citizenship', uk: 'Громадянство' }
    ]
  },
  {
    ru: 'Бизнес', en: 'Business', uk: 'Бізнес',
    articles: [
      { ru: 'Учреждение фирмы', en: 'Company establishment', uk: 'Установа фірми' },
      { ru: 'Банковский счет', en: 'Bank account', uk: 'Банківський рахунок' },
      { ru: 'Бухучет и отчетность', en: 'Accounting and Reporting', uk: 'Бухоблік і звітність' },
      { ru: 'Начисление зарплаты', en: 'Payroll', uk: 'Нарахування зарплатні' },
      { ru: 'Аудит', en: 'Audit', uk: 'Аудит' },
      { ru: 'Другие обязательства', en: 'Other obligations', uk: 'Iнші зобов\'язання' },
      { ru: 'Регистрация торговой марки', en: 'Trademark Registration', uk: 'Реєстрація торгової марки'  }
    ]
  },
  {
    ru: 'Образование', en: 'Education', uk: 'Освіта'
    articles: [
      { ru: 'Образование в Словакии', en: 'Education in Slovakia', uk: 'Освіта в Словаччині' },
      { ru: 'Словацкий язык', en: 'Slovak language', uk: 'Словацька мова', },
      { ru: 'Другие языки', en: 'Other languages', uk: 'Інші мови' },
      { ru: 'Нострификация диплома', en: 'Diploma nostrification', uk: 'Нострифікація диплома'  }
    ]
  },
  {
    ru: 'Инвестиции', en: 'Investments', uk: 'Iнвестиції',
    articles: [
      { ru: 'Анализ инвестиционной среды', en: 'Investment environment analysis', uk: 'Аналіз інвестиційного середовища' },
      { ru: 'Холдинговая компания', en: 'Holding company', uk: 'Холдингова компанія' },
      { ru: 'Инвестиционные проекты', en: 'Investment projects', uk: 'Інвестиційні проекти' },
      { ru: 'Исследование рынка', en: 'Market research', uk: 'Дослідження ринку' },
      { ru: 'Инвестирование в промышленность', en: 'Investing in industry', uk: 'Інвестування в промисловість' },
      { ru: 'Объекты недвижимости', en: 'Real estate', uk: 'Об\'єкт нерухомості' },
      { ru: 'Тур по объектам недвижимости', en: 'Property Tour', uk: 'Тур по об\'єктах нерухомості' },
      { ru: 'Налогообложение недвижимости', en: 'Property Taxation', uk: 'Оподаткування нерухомості' },
      { ru: 'Ипотечниый кредит', en: 'Mortgage', uk: 'Іпотечний кредит'  }
    ]
  },
  {
    ru: 'Другие услуги', en: 'Other services', uk: 'Інші послуги',
    articles: [
      { ru: 'Водительские права', en: 'Driver\'s license', uk: 'Водійські права' },
      { ru: 'Открытие банковского счета', en: 'Opening a bank account', uk: 'Відкриття банківського рахунку' },
      { ru: 'Услуги переводчика', en: 'Translation services', uk: 'Послуги перекладача' },
      { ru: 'Трансфер', en: 'Transfer', uk: 'Трансфер' },
      { ru: 'Резервация гостиниц и апартаментов', en: 'Hotel and apartment reservation', uk: 'Резервація готелів та апартаментів' },
      { ru: 'Лизинг', en: 'Leasing', uk: 'Лізинг' },
      { ru: 'Сбережения и пенсия', en: 'Savings and pension', uk: 'Заощадження та пенсія' },
    ]
  }
])

LandingPage.create(
  singleton_guard: 0,
  title_ru: 'Добро пожаловать в Словакию', title_en: 'Welcome to Slovakia', title_uk: 'Ласкаво просимо в Словаччину',
  subtitle_ru: 'Иммиграция. Бизнес. Инвестиции. Образование.', subtitle_en: 'Immigration. Business. Investments. Education.', subtitle_uk: 'Імміграція. Бізнес. Інвестиції. Освіта.',
  about_block_text_ru: LOREM, about_block_text_en: LOREM, about_block_text_uk: LOREM,
  features_attributes: FEATURES,
  reviews_attributes: REVIEWS
)

AboutUsPage.create(singleton_guard: 0, content_ru: CONTENT, content_en: CONTENT, content_uk: CONTENT)

ContactsPage.create(singleton_guard: 0, contacts_attributes: CONTACTS)

Footer.create(
  singleton_guard: 0,
  contacts_attributes: CONTACTS,
  bratislava_phone: '+421 2 321 44 901', moscow_phone: '+7-499-504-4421', kiev_phone: '+38-044-361-07-72',
  vk_link: 'https://vk.com/slovakiainvest', facebook_link: 'https://www.facebook.com/SlovakiaInvest', gplus_link: 'https://plus.google.com/+SlovakiainvestRu/posts', youtube_link: 'https://www.youtube.com/user/SlovakiaInvest'
)

(1..20).each do |index|
  Post.create(
    title_ru: "Тестовый пост #{index}",
    text_ru: LOREM,
    author_ru: 'Иван Иванов',
    title_en: "Test Post #{index}",
    text_en: LOREM,
    author_en: 'John Doe',
    title_uk: "Тестовий пост #{index}",
    text_uk: LOREM,
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

  EMPLOYEES.sample(3).each do |employee_params|
    Employee.create(employee_params.merge(service_id: service.id))
  end
end

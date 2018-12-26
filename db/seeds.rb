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
DESC_SK = 'Povolenie na pobyt je povolené іmmіgruvati a pobyt v akejkoľvek krajine, neváhajte a získajte. Todi yak shengenska vіza dan mozhlіst perebuvati na území Slovachchini a schengenskom rozlohe nie bіlsh, nіzh 90 dní za šesť mesiacov mіsyatsіv. Otrimannya povolené na pobyt povolené povolenie vlasniki žiť v Slovachchі bez ťažkostí po celé obdobie, a tiež až 90 dní v schengenskom regióne.'

CONTENT = "<p><strong><span style=\"font-size: 48px;\">Иммиграция в деталях</span></strong></p><p><span style=\"font-size: 14px;\">#{LOREM}</span></p><p><span style=\"font-size: 14px;\"><span class=\"fr-video fr-fvc fr-dvb fr-draggable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"//www.youtube.com/embed/tDoLUCKvLWk?wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\"></iframe></span></span><br></p>"

REVIEWS = [
  {
    order: 1,
    name_ru: 'Александр Илларионов', name_en: 'Alexander Illarionov', name_uk: 'Олександр Ілларіонов', name_sk: 'Alexander Illarionov',
    description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець', description_sk: 'Podnikateľ',
    text_ru: LOREM, text_en: LOREM, text_uk: LOREM, text_sk: LOREM
  },
  {
    order: 2,
    name_ru: 'Александр Николаенко', name_en: 'Alexander Nikolayenko', name_uk: 'Олександр Ніколаєнко', name_sk: 'Alexander Nikolayenko',
    description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець', description_sk: 'Podnikateľ',
    text_ru: LOREM, text_en: LOREM, text_uk: LOREM, text_sk: LOREM
  },
  {
    order: 3,
    name_ru: 'Александр Николаенко', name_en: 'Alexander Nikolayenko', name_uk: 'Олександр Ніколаєнко', name_sk: 'Alexander Nikolayenko',
    description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець', description_sk: 'Podnikateľ',
    text_ru: LOREM, text_en: LOREM, text_uk: LOREM, text_sk: LOREM
  },
  {
    order: 4,
    name_ru: 'Александр Илларионов', name_en: 'Alexander Illarionov', name_uk: 'Олександр Ілларіонов', name_sk: 'Alexander Illarionov',
    description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець', description_sk: 'Podnikateľ',
    text_ru: LOREM, text_en: LOREM, text_uk: LOREM, text_sk: LOREM
  }
]

PRICES = [
  {
    order: 1,
    title_ru: 'Первый ВНЖ', title_en: 'First residence permit', title_uk: 'Перший ВНЖ', title_sk: 'Prvé povolenie na pobyt',
    description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність', description_sk: 'obchodná činnosť',
    value: '1699 €'
  },
  {
    order: 2,
    title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ', title_sk: 'Rozšírenie povolenia na pobyt',
    description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність', description_sk: 'obchodná činnosť',
    value: '249 €'
  },
  {
    order: 3,
    title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ', title_sk: 'Rozšírenie povolenia na pobyt',
    description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність', description_sk: 'obchodná činnosť',
    value: '249 €'
  },
  {
    order: 4,
    title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ', title_sk: 'Rozšírenie povolenia na pobyt',
    description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність', description_sk: 'obchodná činnosť',
    value: '249 €'
  },
  {
    order: 5,
    title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ', title_sk: 'Rozšírenie povolenia na pobyt',
    description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність', description_sk: 'obchodná činnosť',
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
    name_ru: 'Светлана Коновалова', name_en: 'Svetlana Konovalova', name_uk: 'Світлана Коновалова', name_sk: 'Svetlana Konovalová',
    position_ru: 'Офис-менеджер', position_en: 'Office Manager', position_uk: 'Офіс менеджер', position_sk: 'Správca kancelárie',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету', description_sk: 'Otázky týkajúce sa účtovníctva',
    contacts_attributes: CONTACTS
  },
  {
    order: 2,
    name_ru: 'Татьяна Морозова', name_en: 'Tatyana Morozova', name_uk: 'Татьяна Морозова', name_sk: 'Tatyana Morozová',
    position_ru: 'Офис-менеджер', position_en: 'Office Manager', position_uk: 'Офіс менеджер', position_sk: 'Správca kancelárie',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету', description_sk: 'Otázky týkajúce sa účtovníctva',
    contacts_attributes: CONTACTS
  },
  {
    order: 3,
    name_ru: 'Оксана Шаровская', name_en: 'Oksana Sharovskaya', name_uk: 'Оксана Шаровська', name_sk: 'Oksana Šarovská',
    position_ru: 'Менеджер по работе с клиентами', position_en: 'Customer Service Manager', position_uk: 'Менеджер по роботі з клієнтами', position_sk: 'Správca služieb zákazníkom',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету', description_sk: 'Otázky týkajúce sa účtovníctva',
    contacts_attributes: CONTACTS
  },
  {
    order: 4,
    name_ru: 'Михаела Мелова', name_en: 'Michaela Melova', name_uk: 'Михаела Мелова', name_sk: 'Mihaela Melov',
    position_ru: 'Менеджер по работе с клиентами', position_en: 'Customer Service Manager', position_uk: 'Менеджер по роботі з клієнтами', position_sk: 'Správca služieb zákazníkom',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету', description_sk: 'Otázky týkajúce sa účtovníctva',
    contacts_attributes: CONTACTS
  }
]

def generate_articles_attributes(titles)
  titles.map.with_index do |title, index|
    {
      order: index + 1,
      title_ru: title[:ru], title_en: title[:en], title_uk: title[:uk], title_sk: title[:sk],
      content_ru: CONTENT, content_en: CONTENT, content_uk: CONTENT, content_sk: CONTENT,
      prices_attributes: PRICES
    }
  end
end

def generate_services_attributes(services)
  services.map.with_index do |service, index|
    {
      order: index + 1,
      title_ru: service[:ru], title_en: service[:en], title_uk: service[:uk], title_sk: service[:sk],
      description_ru: DESC_RU, description_en: DESC_EN, description_uk: DESC_UK, description_sk: DESC_SK,
      content_ru: CONTENT, content_en: CONTENT, content_uk: CONTENT, content_sk: CONTENT,
      reviews_attributes: REVIEWS,
      articles: generate_articles_attributes(service[:articles])
    }
  end
end

services = generate_services_attributes([
  {
    ru: 'Иммиграция', en: 'Immigration', uk: 'Iмміграція', sk: 'Imigrácia',
    articles: [
      { ru: 'ВНЖ для бизнеса', en: 'Residence permit for business', uk: 'ВНЖ для бізнесу' , sk: 'Povolenie na pobyt pre podnikanie' },
      { ru: 'ВНЖ для работы', en: 'Residence permit for work', uk: 'ВНЖ для роботи' , sk: 'Povolenie na pobyt pre prácu' },
      { ru: 'ВНЖ для учебы', en: 'Residence permit for study', uk: 'ВНЖ для навчання' , sk: 'Povolenie na pobyt na štúdium' },
      { ru: 'Виза', en: 'Visa', uk: 'Віза' , sk: 'Vízum' },
      { ru: 'ПМЖ', en: 'Permanent residence', uk: 'ПМЖ' , sk: 'Trvalý pobyt' },
      { ru: 'Гражданство', en: 'Citizenship', uk: 'Громадянство', sk: 'Občianstvo' }
    ]
  },
  {
    ru: 'Бизнес', en: 'Business', uk: 'Бізнес', sk: 'Obchodné',
    articles: [
      { ru: 'Учреждение фирмы', en: 'Company establishment', uk: 'Установа фірми' , sk: 'Založenie spoločnosti' },
      { ru: 'Банковский счет', en: 'Bank account', uk: 'Банківський рахунок' , sk: 'Bankový účet' },
      { ru: 'Бухучет и отчетность', en: 'Accounting and Reporting', uk: 'Бухоблік і звітність' , sk: 'Účtovníctvo a výkazníctvo' },
      { ru: 'Начисление зарплаты', en: 'Payroll', uk: 'Нарахування зарплатні' , sk: 'Platba účtovníctva' },
      { ru: 'Аудит', en: 'Audit', uk: 'Аудит' , sk: 'Audit' },
      { ru: 'Другие обязательства', en: 'Other obligations', uk: 'Iнші зобов\'язання' , sk: 'Ostatné povinnosti' },
      { ru: 'Регистрация торговой марки', en: 'Trademark Registration', uk: 'Реєстрація торгової марки', sk: 'Registrácia ochrannej známky' }
    ]
  },
  {
    ru: 'Образование', en: 'Education', uk: 'Освіта', sk: 'Vzdelávanie',
    articles: [
      { ru: 'Образование в Словакии', en: 'Education in Slovakia', uk: 'Освіта в Словаччині', sk: 'Vzdelávanie na Slovensku' },
      { ru: 'Словацкий язык', en: 'Slovak language', uk: 'Словацька мова', sk: 'Slovenský jazyk' },
      { ru: 'Другие языки', en: 'Other languages', uk: 'Інші мови', sk: 'Iné jazyky' },
      { ru: 'Нострификация диплома', en: 'Diploma nostrification', uk: 'Нострифікація диплома', sk: 'Diplomová nostrifikácia' }
    ]
  },
  {
    ru: 'Инвестиции', en: 'Investments', uk: 'Iнвестиції', sk: 'Investície',
    articles: [
      { ru: 'Анализ инвестиционной среды', en: 'Investment environment analysis', uk: 'Аналіз інвестиційного середовища', sk: 'Analýza investičného prostredia' },
      { ru: 'Холдинговая компания', en: 'Holding company', uk: 'Холдингова компанія', sk: 'Holdingová spoločnosť' },
      { ru: 'Инвестиционные проекты', en: 'Investment projects', uk: 'Інвестиційні проекти', sk: 'Investičné projekty' },
      { ru: 'Исследование рынка', en: 'Market research', uk: 'Дослідження ринку', sk: 'Prieskum trhu' },
      { ru: 'Инвестирование в промышленность', en: 'Investing in industry', uk: 'Інвестування в промисловість', sk: 'Investovanie do priemyslu' },
      { ru: 'Объекты недвижимости', en: 'Real estate', uk: 'Об\'єкт нерухомості', sk: 'Nehnuteľnosti' },
      { ru: 'Тур по объектам недвижимости', en: 'Property Tour', uk: 'Тур по об\'єктах нерухомості', sk: 'Nehnuteľnosť Tour' },
      { ru: 'Налогообложение недвижимости', en: 'Property Taxation', uk: 'Оподаткування нерухомості', sk: 'Zdanenie nehnuteľností' },
      { ru: 'Ипотечниый кредит', en: 'Mortgage', uk: 'Іпотечний кредит', sk: 'Hypotekárny úver' }
    ]
  },
  {
    ru: 'Другие услуги', en: 'Other services', uk: 'Інші послуги', sk: 'Ostatné služby',
    articles: [
      { ru: 'Водительские права', en: 'Driver\'s license', uk: 'Водійські права', sk: 'Vodičský preukaz' },
      { ru: 'Открытие банковского счета', en: 'Opening a bank account', uk: 'Відкриття банківського рахунку', sk: 'Otvorenie bankového účtu' },
      { ru: 'Услуги переводчика', en: 'Translation services', uk: 'Послуги перекладача', sk: 'Prekladateľské služby' },
      { ru: 'Трансфер', en: 'Transfer', uk: 'Трансфер', sk: 'Prevod' },
      { ru: 'Резервация гостиниц и апартаментов', en: 'Hotel and apartment reservation', uk: 'Резервація готелів та апартаментів', sk: 'Rezervácia hotelov a apartmánov' },
      { ru: 'Лизинг', en: 'Leasing', uk: 'Лізинг', sk: 'leasing' },
      { ru: 'Сбережения и пенсия', en: 'Savings and pension', uk: 'Заощадження та пенсія', sk: 'Úspory a odchod do dôchodku' },
    ]
  }
])

LandingPage.create(
  singleton_guard: 0,
  title_ru: 'Добро пожаловать в Словакию', title_en: 'Welcome to Slovakia', title_uk: 'Ласкаво просимо в Словаччину', title_sk: 'Vitajte na Slovensku',
  subtitle_ru: 'Иммиграция. Бизнес. Инвестиции. Образование.', subtitle_en: 'Immigration. Business. Investments. Education.', subtitle_uk: 'Імміграція. Бізнес. Інвестиції. Освіта.', subtitle_sk: 'Imigrácie. Business. Investíciu. Vzdelávanie.',
  about_block_text_ru: LOREM, about_block_text_en: LOREM, about_block_text_uk: LOREM, about_block_text_sk: LOREM,
  reviews_attributes: REVIEWS
)

AboutUsPage.create(singleton_guard: 0, content_ru: CONTENT, content_en: CONTENT, content_uk: CONTENT, content_sk: CONTENT)

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
    author_uk: 'Егор Шульган',
    title_sk: "Testovacie miesto #{index}",
    text_sk: LOREM,
    author_sk: 'Jozef Kováč'
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

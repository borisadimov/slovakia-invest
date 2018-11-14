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

services = [
  {
    title_ru: 'Иммиграция', title_en: 'Immigration', title_uk: 'Iмміграція',
    text_ru: 'Группа компаний SlovakiaInvest является одним из ведущих игроков на словацком рынке услуг для иностранных клиентов. Независимо от того, хотите ли вы перебраться в Словакию, заниматься здесь бизнесом, получить высшее образование или работать, в нашем лице вы нашли партнера, который поможет вам в ваших намерениях. Мы поможет вам в иммиграции в Словакию законным путем с соблюдением всех требований словацкого и европейского законодательства, что даст вам возможность получения вида на жительство в Словакии, в дальнейшем постоянного места жительства и, в случае необходимости, и получения гражданства.',
    text_en: 'SlovakiaInvest group of companies is one of the leading players on the Slovak market for foreign clients. Regardless of whether you want to move to Slovakia, do business here, get a higher education or work, in our person you have found a partner who will help you with your intentions. We will help you in immigration to Slovakia legally in compliance with all requirements of Slovak and European legislation, which will give you the opportunity to obtain a residence permit in Slovakia, in the future permanent residence and, if necessary, and obtain citizenship.',
    text_uk: 'Група компаній SlovakiaInvest є одним з провідних гравців на словацькому ринку послуг для іноземних клієнтів. Незалежно від того, чи хочете ви перебратися до Словаччини, займатися тут бізнесом, здобути вищу освіту або працювати, в нашій особі ви знайшли партнера, який допоможе вам у ваших намірах. Ми допоможе вам в імміграції в Словаччину законним шляхом з дотриманням всіх вимог словацького та європейського законодавства, що дасть вам можливість отримання посвідки на проживання в Словаччині, в подальшому постійного місця проживання і, в разі необхідності, і отримання громадянства.',
    videolink_ru: 'https://www.youtube.com/embed/ShFVQFUyLvw', videolink_en: 'https://www.youtube.com/embed/ShFVQFUyLvw', videolink_uk: 'https://www.youtube.com/embed/ShFVQFUyLvw',
    facts_attributes: [
      { text_ru: 'Факт 1', text_en: 'Fact 1', text_uk: 'Факт 1'},
      { text_ru: 'Факт 2', text_en: 'Fact 2', text_uk: 'Факт 2'},
      { text_ru: 'Факт 3', text_en: 'Fact 3', text_uk: 'Факт 3'},
      { text_ru: 'Факт 4', text_en: 'Fact 4', text_uk: 'Факт 4'}
    ],
    reviews_attributes: [
      {
        name_ru: 'Александр Илларионов', name_en: 'Alexander Illarionov', name_uk: 'Олександр Ілларіонов',
        description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
        text_ru: lorem, text_en: lorem, text_uk: lorem
      },
      {
        name_ru: 'Александр Николаенко', name_en: 'Alexander Nikolayenko', name_uk: 'Олександр Ніколаєнко',
        description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
        text_ru: lorem, text_en: lorem, text_uk: lorem
      }
    ],
    articles: [
      {
        title_ru: 'ВНЖ для бизнеса', title_en: 'Residence permit for business', title_uk: 'ВНЖ для бізнесу',
        text_ru: 'Группа компаний SlovakiaInvest является одним из ведущих игроков на словацком рынке услуг для иностранных клиентов. Независимо от того, хотите ли вы перебраться в Словакию, заниматься здесь бизнесом, получить высшее образование или работать, в нашем лице вы нашли партнера, который поможет вам в ваших намерениях. Мы поможет вам в иммиграции в Словакию законным путем с соблюдением всех требований словацкого и европейского законодательства, что даст вам возможность получения вида на жительство в Словакии, в дальнейшем постоянного места жительства и, в случае необходимости, и получения гражданства.',
        text_en: 'SlovakiaInvest group of companies is one of the leading players on the Slovak market for foreign clients. Regardless of whether you want to move to Slovakia, do business here, get a higher education or work, in our person you have found a partner who will help you with your intentions. We will help you in immigration to Slovakia legally in compliance with all requirements of Slovak and European legislation, which will give you the opportunity to obtain a residence permit in Slovakia, in the future permanent residence and, if necessary, and obtain citizenship.',
        text_uk: 'Група компаній SlovakiaInvest є одним з провідних гравців на словацькому ринку послуг для іноземних клієнтів. Незалежно від того, чи хочете ви перебратися до Словаччини, займатися тут бізнесом, здобути вищу освіту або працювати, в нашій особі ви знайшли партнера, який допоможе вам у ваших намірах. Ми допоможе вам в імміграції в Словаччину законним шляхом з дотриманням всіх вимог словацького та європейського законодавства, що дасть вам можливість отримання посвідки на проживання в Словаччині, в подальшому постійного місця проживання і, в разі необхідності, і отримання громадянства.',
        videolink_ru: 'https://www.youtube.com/embed/AOAtz8xWM0w', videolink_en: 'https://www.youtube.com/embed/qwirm13tX_4', videolink_uk: 'https://www.youtube.com/embed/xzgViS4Rpf8',
        prices_attributes: [
          {
            title_ru: 'Первый ВНЖ', title_en: 'First residence permit', title_uk: 'Перший ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            value: 1699
          },
          {
            title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            package: :lite,
            value: 249
          },
          {
            title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            package: :medium,
            value: 249
          },
          {
            title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            package: :vip,
            value: 249
          },
          {
            title_ru: 'Продление ВНЖ', title_en: 'Extension of residence permit', title_uk: 'Продовження ВНЖ',
            description_ru: 'предпринимательская деятельность', description_en: 'business activity', description_uk: 'підприємницька діяльність',
            package: :vip,
            value: 249
          }
        ],
        reviews_attributes: [
          {
            name_ru: 'Александр Илларионов', name_en: 'Alexander Illarionov', name_uk: 'Олександр Ілларіонов',
            description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
            text_ru: lorem, text_en: lorem, text_uk: lorem
          },
          {
            name_ru: 'Александр Николаенко', name_en: 'Alexander Nikolayenko', name_uk: 'Олександр Ніколаєнко',
            description_ru: 'Предприниматель', description_en: 'Entrepreneur', description_uk: 'Підприємець',
            text_ru: lorem, text_en: lorem, text_uk: lorem
          }
        ]
      },
      { title_ru: 'ВНЖ для работы', title_en: 'Residence permit for work', title_uk: 'ВНЖ для роботи' },
      { title_ru: 'ВНЖ для учебы', title_en: 'Residence permit for study', title_uk: 'ВНЖ для навчання' },
      { title_ru: 'Виза', title_en: 'Visa', title_uk: 'Віза' },
      { title_ru: 'ПМЖ', title_en: 'Permanent residence', title_uk: 'ПМЖ' },
      { title_ru: 'Гражданство', title_en: 'Citizenship', title_uk: 'Громадянство' }
    ]
  },
  {
    title_ru: 'Бизнес', title_en: 'Business', title_uk: 'Бізнес',
    articles: [
      { title_ru: 'Учреждение фирмы', title_en: 'Company establishment', title_uk: 'Установа фірми' },
      { title_ru: 'Банковский счет', title_en: 'Bank account', title_uk: 'Банківський рахунок' },
      { title_ru: 'Бухучет и отчетность', title_en: 'Accounting and Reporting', title_uk: 'Бухоблік і звітність' },
      { title_ru: 'Начисление зарплаты', title_en: 'Payroll', title_uk: 'Нарахування зарплатні' },
      { title_ru: 'Аудит', title_en: 'Audit', title_uk: 'Аудит' },
      { title_ru: 'Другие обязательства', title_en: 'Other obligations', title_uk: 'Iнші зобов\'язання' },
      { title_ru: 'Регистрация торговой марки', title_en: 'Trademark Registration', title_uk: 'Реєстрація торгової марки' }
    ]
  },
  {
    title_ru: 'Образование', title_en: 'Education', title_uk: 'Освіта',
    articles: [
      { title_ru: 'Образование в Словакии', title_en: 'Education in Slovakia', title_uk: 'Освіта в Словаччині' },
      { title_ru: 'Словацкий язык', title_en: 'Slovak language', title_uk: 'Словацька мова' },
      { title_ru: 'Другие языки', title_en: 'Other languages', title_uk: 'Інші мови' },
      { title_ru: 'Нострификация диплома', title_en: 'Diploma nostrification', title_uk: 'Нострифікація диплома' }
    ]
  },
  {
    title_ru: 'Инвестиции', title_en: 'Investments', title_uk: 'Iнвестиції',
    articles: [
      { title_ru: 'Анализ инвестиционной среды', title_en: 'Investment environment analysis', title_uk: 'Аналіз інвестиційного середовища' },
      { title_ru: 'Холдинговая компания', title_en: 'Holding company', title_uk: 'Холдингова компанія' },
      { title_ru: 'Инвестиционные проекты', title_en: 'Investment projects', title_uk: 'Інвестиційні проекти' },
      { title_ru: 'Исследование рынка', title_en: 'Market research', title_uk: 'Дослідження ринку' },
      { title_ru: 'Инвестирование в промышленность', title_en: 'Investing in industry', title_uk: 'Інвестування в промисловість' },
      { title_ru: 'Объекты недвижимости', title_en: 'Real estate', title_uk: 'Об\'єкт нерухомості' },
      { title_ru: 'Тур по объектам недвижимости', title_en: 'Property Tour', title_uk: 'Тур по об\'єктах нерухомості' },
      { title_ru: 'Налогообложение недвижимости', title_en: 'Property Taxation', title_uk: 'Оподаткування нерухомості' },
      { title_ru: 'Ипотечниый кредит', title_en: 'Mortgage', title_uk: 'Іпотечний кредит' }
    ]
  },
  {
    title_ru: 'Другие услуги', title_en: 'Other services', title_uk: 'Інші послуги',
    articles: [
      { title_ru: 'Водительские права', title_en: 'Driver\'s license', title_uk: 'Водійські права' },
      { title_ru: 'Открытие банковского счета', title_en: 'Opening a bank account', title_uk: 'Відкриття банківського рахунку' },
      { title_ru: 'Услуги переводчика', title_en: 'Translation services', title_uk: 'Послуги перекладача' },
      { title_ru: 'Трансфер', title_en: 'Transfer', title_uk: 'Трансфер' },
      { title_ru: 'Резервация гостиниц и апартаментов', title_en: 'Hotel and apartment reservation', title_uk: 'Резервація готелів та апартаментів' },
      { title_ru: 'Лизинг', title_en: 'Leasing', title_uk: 'Лізинг' },
      { title_ru: 'Сбережения и пенсия', title_en: 'Savings and pension', title_uk: 'Заощадження та пенсія' },
    ]
  }
]

contacts = [
  { contact_type: :skype, value: 'SlovakiaInvest6' },
  { contact_type: :phone, value: '+421-2-321-44-901' },
  { contact_type: :email, value: 'Office@SlovakiaInvest.sk' }
]

employees = [
  {
    name_ru: 'Светлана Коновалова', name_en: 'Svetlana Konovalova', name_uk: 'Світлана Коновалова',
    position_ru: 'Офис-менеджер', position_en: 'Office Manager', position_uk: 'Офіс менеджер',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: contacts
  },
  {
    name_ru: 'Татьяна Морозова', name_en: 'Tatyana Morozova', name_uk: 'Татьяна Морозова',
    position_ru: 'Офис-менеджер', position_en: 'Office Manager', position_uk: 'Офіс менеджер',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: contacts
  },
  {
    name_ru: 'Оксана Шаровская', name_en: 'Oksana Sharovskaya', name_uk: 'Оксана Шаровська',
    position_ru: 'Менеджер по работе с клиентами', position_en: 'Customer Service Manager', position_uk: 'Менеджер по роботі з клієнтами',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: contacts
  },
  {
    name_ru: 'Михаела Мелова', name_en: 'Michaela Melova', name_uk: 'Михаела Мелова',
    position_ru: 'Менеджер по работе с клиентами', position_en: 'Customer Service Manager', position_uk: 'Менеджер по роботі з клієнтами',
    description_ru: 'Вопросы по бухучету', description_en: 'Questions about accounting', description_uk: 'Вопросы по бухучету',
    contacts_attributes: contacts
  }
]

LandingPage.create(
  singleton_guard: 0,
  cooperation_title_ru: 'Предложение сотрудничества', cooperation_title_en: 'Cooperation offer', cooperation_title_uk: 'Пропозиція співпраці',
  about_title_ru: 'Рассказ о компании', about_title_en: 'Company Story', about_title_uk: 'Розповідь про компанію',
  about_text_ru: 'Группа компаний SlovakiaInvest является одним из ведущих игроков на словацком рынке услуг для иностранных клиентов. Независимо от того, хотите ли вы перебраться в Словакию, заниматься здесь бизнесом, получить высшее образование или работать, в нашем лице вы нашли партнера, который поможет вам в ваших намерениях. Мы поможет вам в иммиграции в Словакию законным путем с соблюдением всех требований словацкого и европейского законодательства, что даст вам возможность получения вида на жительство в Словакии, в дальнейшем постоянного места жительства и, в случае необходимости, и получения гражданства.',
  about_text_en: 'SlovakiaInvest group of companies is one of the leading players on the Slovak market for foreign clients. Regardless of whether you want to move to Slovakia, do business here, get a higher education or work, in our person you have found a partner who will help you with your intentions. We will help you in immigration to Slovakia legally in compliance with all requirements of Slovak and European legislation, which will give you the opportunity to obtain a residence permit in Slovakia, in the future permanent residence and, if necessary, and obtain citizenship.',
  about_text_uk: 'Група компаній SlovakiaInvest є одним з провідних гравців на словацькому ринку послуг для іноземних клієнтів. Незалежно від того, чи хочете ви перебратися до Словаччини, займатися тут бізнесом, здобути вищу освіту або працювати, в нашій особі ви знайшли партнера, який допоможе вам у ваших намірах. Ми допоможе вам в імміграції в Словаччину законним шляхом з дотриманням всіх вимог словацького та європейського законодавства, що дасть вам можливість отримання посвідки на проживання в Словаччині, в подальшому постійного місця проживання і, в разі необхідності, і отримання громадянства.',
  services_title_ru: 'Что мы предлагаем', services_title_en: 'What do we offer', services_title_uk: 'Що ми пропонуємо',
  how_work_title_ru: 'Как работаем', how_work_title_en: 'How we work', how_work_title_uk: 'Як працюємо',
  how_work_text_ru: lorem, how_work_text_en: lorem, how_work_text_uk: lorem,
  profits_title_ru: 'Какие выгоды', profits_title_en: 'What are the benefits', profits_title_uk: 'Які вигоди',
  profits_text_ru: lorem, profits_text_en: lorem, profits_text_uk: lorem,
  for_whom_title_ru: 'Для кого наши услуги', for_whom_title_en: 'Who are our services for', for_whom_title_uk: 'Для кого наші послуги',
  for_whom_text_ru: lorem, for_whom_text_en: lorem, for_whom_text_uk: lorem,
  reviews_title_ru: 'Истории клиентов и отзывы', reviews_title_en: 'Customer stories and reviews', reviews_title_uk: 'Історії клієнтів і відгуки',
  partners_title_ru: 'Партнеры', partners_title_en: 'Partners', partners_title_uk: 'Партнери',
  cooperation_facts_attributes: [
    {
      block_type: :cooperation_fact,
      title_ru: 'Факт №1', title_en: 'Fact №1', title_uk: 'Факт №1',
      description_ru: 'о нашей компании', description_en: 'about our company', description_uk: 'про нашу компанію'
    },
    {
      block_type: :cooperation_fact,
      title_ru: 'Факт №2', title_en: 'Fact №2', title_uk: 'Факт №2',
      description_ru: 'о нашей компании', description_en: 'about our company', description_uk: 'про нашу компанію'
    },
    {
      block_type: :cooperation_fact,
      title_ru: 'Факт №3', title_en: 'Fact №3', title_uk: 'Факт №3',
      description_ru: 'о нашей компании', description_en: 'about our company', description_uk: 'про нашу компанію'
    },
    {
      block_type: :cooperation_fact,
      title_ru: 'Факт №4', title_en: 'Fact №4', title_uk: 'Факт №4',
      description_ru: 'о нашей компании', description_en: 'about our company', description_uk: 'про нашу компанію'
    }
  ],
  how_work_items_attributes: [
    {
      block_type: :how_work_item,
      title_ru: '1', title_en: '1', title_uk: '1',
      description_ru: lorem, description_en: lorem, description_uk: lorem,
    },
    {
      block_type: :how_work_item,
      title_ru: '2', title_en: '2', title_uk: '2',
      description_ru: lorem, description_en: lorem, description_uk: lorem,
    },
    {
      block_type: :how_work_item,
      title_ru: '3', title_en: '3', title_uk: '3',
      description_ru: lorem, description_en: lorem, description_uk: lorem,
    }
  ],
  profit_items_attributes: [
    {
      block_type: :profit_item,
      title_ru: 'Выгода 1', title_en: 'Benefit 1', title_uk: 'Вигода 1',
      description_ru: lorem, description_en: lorem, description_uk: lorem
    },
    {
      block_type: :profit_item,
      title_ru: 'Выгода 2', title_en: 'Benefit 2', title_uk: 'Вигода 2',
      description_ru: lorem, description_en: lorem, description_uk: lorem
    },
    {
      block_type: :profit_item,
      title_ru: 'Выгода 3', title_en: 'Benefit 3', title_uk: 'Вигода 3',
      description_ru: lorem, description_en: lorem, description_uk: lorem
    },
    {
      block_type: :profit_item,
      title_ru: 'Выгода 4', title_en: 'Benefit 4', title_uk: 'Вигода 4',
      description_ru: lorem, description_en: lorem, description_uk: lorem
    }
  ],
  reviews_attributes: [
    {
      block_type: :review,
      title_ru: 'Иван', title_en: 'Ivan', title_uk: 'Іван',
      description_ru: lorem, description_en: lorem, description_uk: lorem
    },
    {
      block_type: :review,
      title_ru: 'Александр', title_en: 'Alexander', title_uk: 'Олександр',
      description_ru: lorem, description_en: lorem, description_uk: lorem
    },
    {
      block_type: :review,
      title_ru: 'Чак', title_en: 'Chuck', title_uk: 'Чак',
      description_ru: lorem, description_en: lorem, description_uk: lorem
    }
  ]
)

AboutUsPage.create(
  singleton_guard: 0,
  title_ru: 'О нас: кто мы такие', title_en: 'About us: who we are', title_uk: 'Про нас: хто ми такі',
  text_ru: <<~TEXT,
    Группа компаний SlovakiaInvest представляет собой несколько официальных юридических лиц, зарегистрированных в торговом реестре Словацкой Республики. Кроме всего прочего, мы являемся обладателем лицензий на следующие виды деятельности:

    деятельность предпринимательских, организационных и экономических консультантов.
    в том числе консалтинг в области инвестирования,
    агентство недвижимости,
    подбор персонала,
    переводческая деятельность в сфере иностранных языков: русский и украинский,
    преподавание в сфере иностранных языков: русский и украинский,
    организация внешкольного обучения,
    ведение бухгалтерии,
    аудит.
    Главный офис находится в самом центре Братиславы по адресу: Lazaretska 8, Bratislava. Юридический адрес находится по адресу Špitálska 53, Bratislava. Компания состоит из 6 подразделений:
    
    инвестиции (ответственное лицо – Милан Курота)
    иммиграция (ответственное лицо – Екатерина Плешанова)
    агентство недвижимости (ответственное лицо – Олег Самойлов)
    юридический отдел (ответственное лицо – Михал Снопек)
    образование (ответственное лицо – Алена Куротова)
    бухгалтерия и аудит (ответственное лицо – Дарина Куротова).
    Компания занимается и другими вопросами из области быта и предпринимательства в Словакии. Мы готовы предложить нашим клиентам, например, резервацию гостиниц, лизинг, регистрацию торговой марки, маркетинговые исследования, ипотеку, услуги гида и переводчика, трансфер, сопровождение на встречах и личных акциях, а также не отказываемся от решения других вопросов, которые необходимы для полного удовлетворения требований наших клиентов.
    
    
    Наши преимущества:
    Мы являемся самой большой фирмой в Братиславе по иммиграции в Словакию для русскоговорящих клиентов, занимая около четверти рынка русскоговорящей иммиграции из разных стран,
    мы сопровождаем наших клиентов во всех делах, таким образом, у нас огромный опыт ведения бухгалтерии фирмам с русскими корнями, решение вопросов международного характера и т.д.
    у нас имеется опыт работы на всей территории Словакии, однако самые лучшие связи у нас в г. Братиславе, где мы много лет успешно работаем, и именно этот город считаем хорошим стартом для большинства юридических и физических лиц,
    успех нашей компании можно охарактеризовать следующей статистикой: безотказное получение и продление ВНЖ с нами; количество отказов у нас при получении первого ВНЖ за последние три года: 2013 г.: 0 отказов, 2012 г,: 0 отказов, 2011: 2 отказа (один из которых мы потом в суде выиграли); количество отказов при продлении ВНЖ: 2013 г.: 0 отказов, 2012 г.: 0 отказов, 2011 г.: 0 отказов.
    мы работаем только с трудолюбивыми, честными и порядочными людьми, которые хотят что-то делать в Словакии и ищут своей самореализации, именно так нас воспринимает окружение.
    
    История компании SlovakiaInvest:
    Наша группа компаний не образовалась «на пустом месте». Активная официальная деятельность началась еще в 1997 г., когда были зарегистрированы две наши компании: D.M.K. AUDIT s.r.o., предоставляющая, прежде всего, аудиторские и бухгалтерские услуги и D.M.K. CONSULTING s.r.o., которая предоставляет, консалтинговые и бухгалтерские услуги. Постепенно значительно возрос интерес к Словакии у бизнесменов из русскоговорящих стран. По причине того, что руководство компании говорит по-русски и ему близки традиции русскоговорящих людей, было принято решение выделять больше внимания данному направлению. С увеличением количества русскоговорящих клиентов была зарегистрирована компания SLOVAKIAINVEST.RU s.r.o., которая фокусируется как раз на клиентов из СНГ. Задачей этой специализированной фирмы стало обеспечение квалифицированной и актуальной информации желающим жить, учиться, работать либо заниматься предпринимательской деятельностью на территории Словакии. А также, конечно, предоставлять приехавшим в Словакию людям полный комплекс услуг по обеспечению правильного и грамотного ведения дел в Словакии. Группу компаний чуть позже возглавила новая материнская компания SLOVAKIAINVEST.RU GROUP s.r.o.',
  TEXT
  text_en: <<~TEXT,
    The SlovakiaInvest group of companies represents several official legal entities registered in the commercial register of the Slovak Republic. Among other things, we are the holder of licenses for the following activities:

    activity of business, organizational and economic consultants.
    including investment consulting,
    real estate agency,
    staff recruitment
    translation activities in the field of foreign languages: Russian and Ukrainian,
    Teaching in the field of foreign languages: Russian and Ukrainian,
    organization of out-of-school education,
    bookkeeping,
    audit.
    The main office is located in the very center of Bratislava at the address: Lazaretska 8, Bratislava. The legal address is at Špitálska 53, Bratislava. The company consists of 6 divisions:

    investments (responsible person - Milan Kurota)
    immigration (responsible person - Ekaterina Pleshanova)
    real estate agency (responsible person - Oleg Samoilov)
    legal department (responsible person - Michal Snopek)
    education (responsible person - Alena Kurotova)
    accounting and audit (responsible person - Darina Kurotova).
    The company deals with other issues from the field of life and business in Slovakia. We are ready to offer our clients, for example, hotel reservations, leasing, trademark registration, marketing research, mortgages, guide and interpreter services, transfer, escort at meetings and personal promotions, and also do not refuse to resolve other issues that are necessary for complete satisfaction. requirements of our customers.


    Our advantages:
    We are the largest company in Bratislava for immigration to Slovakia for Russian-speaking clients, occupying about a quarter of the Russian-speaking immigration market from different countries,
    we accompany our clients in all matters, thus, we have extensive experience in conducting accounting to firms with Russian roots, solving international issues, etc.
    we have experience throughout Slovakia, but we have the best contacts in Bratislava, where we have been working successfully for many years, and it is this city that we consider to be a good start for most businesses and individuals,
    The success of our company can be characterized by the following statistics: reliable receipt and extension of a residence permit with us; the number of failures with us in obtaining the first residence permit in the last three years: 2013: 0 failures, 2012,: 0 failures, 2011: 2 failures (one of which we later won in court); the number of failures when extending a residence permit: 2013: 0 failures, 2012: 0 failures, 2011: 0 failures.
    we work only with hardworking, honest and decent people who want to do something in Slovakia and are looking for their self-realization, this is how the environment perceives us.

    History of SlovakiaInvest:
    Our group of companies was not formed "from scratch". Active official activity began in 1997, when two of our companies were registered: D.M.K. AUDIT sr.r.., providing primarily audit and accounting services and D.M.K. CONSULTING sr.r.o., which provides consulting and accounting services. Interest in Slovakia among businessmen from Russian-speaking countries gradually increased. Due to the fact that the company’s management speaks Russian and the traditions of Russian-speaking people are close to it, it was decided to give more attention to this area. With the increase in the number of Russian-speaking clients, the company SLOVAKIAINVEST.RU sr.r.o. was registered, which focuses precisely on clients from the CIS. The task of this specialized company was to provide qualified and relevant information to those who want to live, study, work or engage in business activities in the territory of Slovakia. And also, of course, to provide people who came to Slovakia with a full range of services to ensure correct and competent business management in Slovakia. The group of companies was later led by a new parent company, SLOVAKIAINVEST.RU GROUP S.r.o.
  TEXT
  text_uk: <<~TEXT,
    Група компаній SlovakiaInvest є кілька офіційних юридичних осіб, зареєстрованих в торговому реєстрі Словацької Республіки. Крім усього іншого, ми є представниками ліцензій на такі види діяльності:

    діяльність підприємницьких, організаційних та економічних консультантів.
    в тому числі консалтинг в області інвестування,
    агенство нерухомості,
    підбір персоналу,
    перекладацька діяльність в сфері іноземних мов: російська та українська,
    викладання в сфері іноземних мов: російська та українська,
    організація позашкільного навчання,
    ведення бухгалтерії,
    аудит.
    Головний офіс знаходиться в самому центрі Братислави за адресою: Lazaretska 8, Bratislava. Юридична адреса знаходиться за адресою Špitálska 53, Bratislava. Компанія складається з 6 підрозділів:

    інвестиції (відповідальна особа - Мілан курот)
    імміграція (відповідальна особа - Катерина Плешанова)
    агентство нерухомості (відповідальна особа - Олег Самойлов)
    юридичний відділ (відповідальна особа - Міхал Снопек)
    освіту (відповідальна особа - Олена Куротова)
    бухгалтерія та аудит (відповідальна особа - Дарина Куротова).
    Компанія займається і іншими питаннями з області побуту і підприємництва в Словаччині. Ми готові запропонувати нашим клієнтам, наприклад, резервацію готелів, лізинг, реєстрацію торгової марки, маркетингові дослідження, іпотеку, послуги гіда та перекладача, трансфер, супровід на зустрічах і особистих акціях, а також не відмовляємося від вирішення інших питань, які необхідні для повного задоволення вимог наших клієнтів.


    Наші переваги:
    Ми є найбільшою фірмою в Братиславі по імміграції в Словаччину для російськомовних клієнтів, займаючи близько чверті ринку російськомовної імміграції з різних країн,
    ми супроводжуємо наших клієнтів у всіх справах, таким чином, у нас величезний досвід ведення бухгалтерії фірмам з російським корінням, вирішення питань міжнародного характеру і т.д.
    у нас є досвід роботи на всій території Словаччини, проте найкращі зв'язку у нас в м Братиславі, де ми багато років успішно працюємо, і саме це місто вважаємо хорошим стартом для більшості юридичних і фізичних осіб,
    успіх нашої компанії можна охарактеризувати такою статистикою: безвідмовне отримання та продовження ВНЖ з нами; кількість відмов у нас при отриманні першого ВНЖ за останні три роки: 2013 р .: 0 відмов, 2012 р ,: 0 відмов, 2011: 2 відмови (один з яких ми потім в суді виграли); кількість відмов при продовженні ВНЖ: 2013 р .: 0 відмов, 2012 р .: 0 відмов, 2011 р .: 0 відмов.
    ми працюємо тільки з працьовитими, чесними і порядними людьми, які хочуть щось робити в Словаччині і шукають своєї самореалізації, саме так нас сприймає оточення.

    Історія компанії SlovakiaInvest:
    Наша група компаній не утворилася «на порожньому місці». Активна офіційна діяльність почалася ще в 1997 році, коли було зареєстровано дві наші компанії: D.M.K. AUDIT s.r.o., що надає, перш за все, аудиторські та бухгалтерські послуги та D.M.K. CONSULTING s.r.o., яка надає, консалтингові та бухгалтерські послуги. Поступово значно зріс інтерес до Словаччини у бізнесменів з російськомовних країн. У зв'язку з тим, що керівництво компанії говорить по-російськи і йому близькі традиції російськомовних людей, було прийнято рішення виділяти більше уваги даному напрямку. Зі збільшенням кількості російськомовних клієнтів була зареєстрована компанія SLOVAKIAINVEST.RU s.r.o., яка фокусується саме на клієнтів з СНД. Завданням цієї спеціалізованої фірми стало забезпечення кваліфікованої та актуальної інформації бажаючим жити, вчитися, працювати або займатися підприємницькою діяльністю на території Словаччини. А також, звичайно, надавати приїхали до Словаччини людям повний комплекс послуг із забезпечення правильного і грамотного ведення справ в Словаччині. Групу компаній трохи пізніше очолила нова материнська компанія SLOVAKIAINVEST.RU GROUP s.r.o.
  TEXT
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
  social_network_links_attributes: [
    { url: 'http://facebook.com' },
    { url: 'http://youtube.com' },
    { url: 'http://vk.com' },
    { url: 'http://twitter.com' }
  ]
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

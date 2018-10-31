# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


lorem = <<~TEXT
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet urna posuere, tempor arcu vitae, porttitor tortor. Ut malesuada feugiat nisl vel molestie. Cras semper accumsan elementum. Etiam quis purus diam. Curabitur sem velit, viverra vel orci ac, lacinia condimentum libero. Donec eleifend ac lectus ut interdum. Vivamus eleifend a sapien in ultrices.
  Nunc aliquet, orci nec auctor placerat, odio lectus auctor ante, scelerisque suscipit lorem urna sed nibh. Suspendisse mi risus, rutrum eu mollis id, varius in elit. Curabitur neque quam, semper vulputate blandit eget, pharetra ut enim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus tempor nisi a ligula mattis dignissim. Aliquam ullamcorper laoreet mi, in vestibulum quam luctus non. Sed velit odio, hendrerit eu odio eget, blandit gravida dui. Cras porttitor mollis ipsum vitae venenatis."
TEXT

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
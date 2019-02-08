class AddMetaAndOgTags < ActiveRecord::Migration[5.0]
  def change
    tables = [:about_us_pages, :articles, :contacts_pages, :landing_pages, :posts, :services, :news_pages, :prices_pages]
    columns = [:meta_keywords, :og_title_ru, :og_title_en, :og_title_uk, :og_description_ru, :og_description_en, :og_description_uk, :og_type, :og_image, :og_url]

    tables.each do |table|
      columns.each do |column|
        add_column table, column, :string
      end
    end
  end
end

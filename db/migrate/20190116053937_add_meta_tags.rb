class AddMetaTags < ActiveRecord::Migration[5.0]
  def change
    add_column :about_us_pages, :meta_title_ru, :string
    add_column :about_us_pages, :meta_title_en, :string
    add_column :about_us_pages, :meta_title_uk, :string
    add_column :about_us_pages, :meta_description_ru, :string
    add_column :about_us_pages, :meta_description_en, :string
    add_column :about_us_pages, :meta_description_uk, :string

    add_column :articles, :meta_title_ru, :string
    add_column :articles, :meta_title_en, :string
    add_column :articles, :meta_title_uk, :string
    add_column :articles, :meta_description_ru, :string
    add_column :articles, :meta_description_en, :string
    add_column :articles, :meta_description_uk, :string

    add_column :contacts_pages, :meta_title_ru, :string
    add_column :contacts_pages, :meta_title_en, :string
    add_column :contacts_pages, :meta_title_uk, :string
    add_column :contacts_pages, :meta_description_ru, :string
    add_column :contacts_pages, :meta_description_en, :string
    add_column :contacts_pages, :meta_description_uk, :string

    add_column :landing_pages, :meta_title_ru, :string
    add_column :landing_pages, :meta_title_en, :string
    add_column :landing_pages, :meta_title_uk, :string
    add_column :landing_pages, :meta_description_ru, :string
    add_column :landing_pages, :meta_description_en, :string
    add_column :landing_pages, :meta_description_uk, :string

    add_column :posts, :meta_title_ru, :string
    add_column :posts, :meta_title_en, :string
    add_column :posts, :meta_title_uk, :string
    add_column :posts, :meta_description_ru, :string
    add_column :posts, :meta_description_en, :string
    add_column :posts, :meta_description_uk, :string

    add_column :services, :meta_title_ru, :string
    add_column :services, :meta_title_en, :string
    add_column :services, :meta_title_uk, :string
    add_column :services, :meta_description_ru, :string
    add_column :services, :meta_description_en, :string
    add_column :services, :meta_description_uk, :string

    create_table :news_pages do |t|
      t.integer :singleton_guard
      t.string :meta_title_ru, :meta_title_en, :meta_title_uk
      t.string :meta_description_ru, :meta_description_en, :meta_description_uk
    end

    add_index :news_pages, :singleton_guard, unique: true

    create_table :prices_pages do |t|
      t.integer :singleton_guard
      t.string :meta_title_ru, :meta_title_en, :meta_title_uk
      t.string :meta_description_ru, :meta_description_en, :meta_description_uk
    end

    add_index :prices_pages, :singleton_guard, unique: true
  end
end

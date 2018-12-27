class AddSlovakLocaleColumnsRemoveUnusedColumns < ActiveRecord::Migration[5.0]
  def change
    # About Us Page
    add_column :about_us_pages, :content_sk, :text

    # Articles
    add_column :articles, :title_sk, :string
    add_column :articles, :content_sk, :text
    remove_column :articles, :videolink_ru, :string
    remove_column :articles, :videolink_en, :string
    remove_column :articles, :videolink_uk, :string

    # Contacts Page
    remove_column :contacts_pages, :page_title_ru, :string
    remove_column :contacts_pages, :page_title_en, :string
    remove_column :contacts_pages, :page_title_uk, :string
    remove_column :contacts_pages, :employees_title_ru, :string
    remove_column :contacts_pages, :employees_title_en, :string
    remove_column :contacts_pages, :employees_title_uk, :string
    remove_column :contacts_pages, :contacts_title_ru, :string
    remove_column :contacts_pages, :contacts_title_en, :string
    remove_column :contacts_pages, :contacts_title_uk, :string

    # Employees
    add_column :employees, :name_sk, :string
    add_column :employees, :position_sk, :string
    add_column :employees, :description_sk, :string

    # Facts
    drop_table :facts

    # Features
    add_column :features, :unit_sk, :string
    add_column :features, :description_sk, :string

    # Landing Page
    add_column :landing_pages, :title_sk, :string
    add_column :landing_pages, :subtitle_sk, :string
    add_column :landing_pages, :about_block_text_sk, :text

    # Posts
    add_column :posts, :title_sk, :string
    add_column :posts, :text_sk, :text
    add_column :posts, :author_sk, :string

    # Prices
    add_column :prices, :title_sk, :string
    add_column :prices, :description_sk, :string

    # Reviews
    add_column :reviews, :name_sk, :string
    add_column :reviews, :description_sk, :string
    add_column :reviews, :text_sk, :string

    # Services
    add_column :services, :title_sk, :string
    add_column :services, :description_sk, :text
    add_column :services, :content_sk, :text
    remove_column :services, :videolink_ru, :string
    remove_column :services, :videolink_en, :string
    remove_column :services, :videolink_uk, :string
  end
end

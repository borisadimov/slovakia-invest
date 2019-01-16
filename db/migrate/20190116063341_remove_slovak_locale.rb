class RemoveSlovakLocale < ActiveRecord::Migration[5.0]
  def change
    remove_column :about_us_pages, :content_sk

    remove_column :articles, :title_sk
    remove_column :articles, :content_sk

    remove_column :employees, :name_sk
    remove_column :employees, :position_sk
    remove_column :employees, :description_sk

    remove_column :features, :unit_sk
    remove_column :features, :description_sk

    remove_column :landing_pages, :title_sk
    remove_column :landing_pages, :subtitle_sk
    remove_column :landing_pages, :about_block_text_sk

    remove_column :posts, :title_sk
    remove_column :posts, :text_sk
    remove_column :posts, :author_sk

    remove_column :prices, :title_sk
    remove_column :prices, :description_sk

    remove_column :reviews, :name_sk
    remove_column :reviews, :description_sk
    remove_column :reviews, :text_sk

    remove_column :services, :title_sk
    remove_column :services, :description_sk
    remove_column :services, :content_sk
  end
end

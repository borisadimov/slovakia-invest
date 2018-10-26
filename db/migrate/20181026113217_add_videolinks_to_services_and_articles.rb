class AddVideolinksToServicesAndArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :videolink_ru, :string
    add_column :services, :videolink_en, :string
    add_column :services, :videolink_uk, :string
    add_column :articles, :videolink_ru, :string
    add_column :articles, :videolink_en, :string
    add_column :articles, :videolink_uk, :string
  end
end

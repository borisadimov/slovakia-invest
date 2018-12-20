class AddSlugsToArticlesAndServices < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :slug, :string, unique: true
    add_column :services, :slug, :string, unique: true
  end
end

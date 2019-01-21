class AddDescrptionToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :description_ru, :string
    add_column :posts, :description_en, :string
    add_column :posts, :description_uk, :string
  end
end

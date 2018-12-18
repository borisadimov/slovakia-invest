class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name_ru, :name_en, :name_uk
      t.string :description_ru, :description_en, :description_uk
      t.string :link
      t.text :text_ru, :text_en, :text_uk
      t.string :avatar
      t.references :reviewable, polymorphic: true, index: true

      t.timestamps
    end
  end
end

class CreateFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :features do |t|
      t.integer :from, null: false
      t.integer :to, null: false
      t.string :unit_ru, :unit_en, :unit_uk
      t.string :description_ru, :description_en, :description_uk
      t.references :featureable, polymorphic: true, index: true

      t.timestamps
    end
  end
end

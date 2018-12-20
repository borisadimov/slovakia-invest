class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name_ru, :name_en, :name_uk
      t.string :position_ru, :position_en, :position_uk
      t.string :description_ru, :description_en, :description_uk
      t.string :avatar
      t.references :service, index: true, foreign_key: true

      t.timestamps
    end
  end
end

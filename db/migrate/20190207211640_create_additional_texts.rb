class CreateAdditionalTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :additional_texts do |t|
      t.integer :order
      t.string :title_ru, :title_en, :title_uk
      t.string :text_ru, :text_en, :text_uk
      t.references :service, index: true, foreign_key: true

      t.timestamps
    end
  end
end

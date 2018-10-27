class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.references :article, index: true, foreign_key: true
      t.string :title_ru, :title_en, :title_uk
      t.string :description_ru, :description_en, :description_uk
      t.integer :package
      t.integer :value

      t.timestamps
    end
  end
end

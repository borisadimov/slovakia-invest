class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title_ru, :title_en, :title_uk
      t.text :description_ru, :description_en, :description_uk
      t.text :content_ru, :content_en, :content_uk

      t.timestamps
    end
  end
end

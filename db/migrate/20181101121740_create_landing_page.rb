class CreateLandingPage < ActiveRecord::Migration[5.0]
  def change
    create_table :landing_pages do |t|
      t.integer :singleton_guard
      t.string :cooperation_title_ru, :cooperation_title_en, :cooperation_title_uk
      t.string :about_title_ru, :about_title_en, :about_title_uk
      t.text :about_text_ru, :about_text_en, :about_text_uk
      t.string :services_title_ru, :services_title_en, :services_title_uk
      t.text :services_text_ru, :services_text_en, :services_text_uk
      t.string :how_work_title_ru, :how_work_title_en, :how_work_title_uk
      t.text :how_work_text_ru, :how_work_text_en, :how_work_text_uk
      t.string :profits_title_ru, :profits_title_en, :profits_title_uk
      t.text :profits_text_ru, :profits_text_en, :profits_text_uk
      t.string :for_whom_title_ru, :for_whom_title_en, :for_whom_title_uk
      t.text :for_whom_text_ru, :for_whom_text_en, :for_whom_text_uk
      t.string :reviews_title_ru, :reviews_title_en, :reviews_title_uk
      t.text :reviews_text_ru, :reviews_text_en, :reviews_text_uk
      t.string :partners_title_ru, :partners_title_en, :partners_title_uk
      t.text :partners_text_ru, :partners_text_en, :partners_text_uk

      t.timestamps
    end

    add_index :landing_pages, :singleton_guard, unique: true
  end
end

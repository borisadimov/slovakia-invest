class CreateAboutUsPage < ActiveRecord::Migration[5.0]
  def change
    create_table :about_us_pages do |t|
      t.integer :singleton_guard
      t.string :title_ru, :title_en, :title_uk
      t.text :text_ru, :text_en, :text_uk
    end

    add_index :about_us_pages, :singleton_guard, unique: true
  end
end

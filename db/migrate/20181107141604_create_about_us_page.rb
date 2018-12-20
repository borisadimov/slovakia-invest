class CreateAboutUsPage < ActiveRecord::Migration[5.0]
  def change
    create_table :about_us_pages do |t|
      t.integer :singleton_guard
      t.text :content_ru, :content_en, :content_uk

      t.timestamps
    end

    add_index :about_us_pages, :singleton_guard, unique: true
  end
end

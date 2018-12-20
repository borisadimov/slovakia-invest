class CreateLandingPage < ActiveRecord::Migration[5.0]
  def change
    create_table :landing_pages do |t|
      t.integer :singleton_guard
      t.string :title_ru, :title_en, :title_uk
      t.string :subtitle_ru, :subtitle_en, :subtitle_uk
      t.text :about_block_text_ru, :about_block_text_en, :about_block_text_uk
      t.string :about_block_image
      
      t.timestamps
    end

    add_index :landing_pages, :singleton_guard, unique: true
  end
end

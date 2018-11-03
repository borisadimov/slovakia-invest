class CreateLandingPageItems < ActiveRecord::Migration[5.0]
  def change
    create_table :landing_page_items do |t|
      t.integer :block_type
      t.string :title_ru, :title_en, :title_uk
      t.string :description_ru, :description_en, :description_uk
      t.string :logo
      t.references :landing_page, index: true, foreign_key: true

      t.timestamps
    end
  end
end

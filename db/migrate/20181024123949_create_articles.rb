class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.references :service, foreign_key: true, index: true, null: false
      t.string :title_ru, :title_en, :title_uk
      t.text :text_ru, :text_en, :text_uk

      t.timestamps
    end
  end
end

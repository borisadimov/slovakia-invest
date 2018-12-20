class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title_ru, :title_en, :title_uk
      t.text :text_ru, :text_en, :text_uk
      t.string :author_ru, :author_en, :author_uk

      t.timestamps
    end
  end
end

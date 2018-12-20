class CreateFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :facts do |t|
      t.string :text_ru, :text_en, :text_uk
      t.string :logo
      t.references :page, polymorphic: true, index: true

      t.timestamps
    end
  end
end

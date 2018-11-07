class CreateContactsPage < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts_pages do |t|
      t.integer :singleton_guard
      t.string :page_title_ru, :page_title_en, :page_title_uk
      t.string :employees_title_ru, :employees_title_en, :employees_title_uk
      t.string :contacts_title_ru, :contacts_title_en, :contacts_title_uk
      t.string :map_coords

      t.timestamps
    end

    add_index :contacts_pages, :singleton_guard, unique: true
  end
end

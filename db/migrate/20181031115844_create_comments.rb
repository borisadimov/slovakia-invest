class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author, null: false
      t.string :email, null: false
      t.text :text, null: false
      t.references :post, index: true, foreign_key: true

      t.timestamps
    end
  end
end

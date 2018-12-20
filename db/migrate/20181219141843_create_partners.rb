class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
      t.string :logo
      t.string :url
      t.references :footer, index: true, foreign_key: true
    end
  end
end

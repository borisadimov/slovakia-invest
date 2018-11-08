class CreateFooter < ActiveRecord::Migration[5.0]
  def change
    create_table :footers do |t|
      t.integer :singleton_guard
    end

    add_index :footers, :singleton_guard, unique: true
  end
end

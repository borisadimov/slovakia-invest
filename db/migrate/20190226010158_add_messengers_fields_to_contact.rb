class AddMessengersFieldsToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :telegram, :string
  end
end

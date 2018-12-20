class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.integer :contact_type
      t.string :value
      t.integer :has_contacts_id
      t.string :has_contacts_type

      t.timestamps
    end

    add_index :contacts, [:has_contacts_type, :has_contacts_id]
  end
end

class CreateFooter < ActiveRecord::Migration[5.0]
  def change
    create_table :footers do |t|
      t.integer :singleton_guard
      t.string :bratislava_phone, :moscow_phone, :kiev_phone
      t.string :vk_link, :facebook_link, :gplus_link, :youtube_link
    end

    add_index :footers, :singleton_guard, unique: true
  end
end

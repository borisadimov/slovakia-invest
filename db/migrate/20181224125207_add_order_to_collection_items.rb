class AddOrderToCollectionItems < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :order, :integer
    add_column :articles, :order, :integer
    add_column :contacts, :order, :integer
    add_column :employees, :order, :integer
    add_column :features, :order, :integer
    add_column :partners, :order, :integer
    add_column :prices, :order, :integer
    add_column :reviews, :order, :integer
  end
end

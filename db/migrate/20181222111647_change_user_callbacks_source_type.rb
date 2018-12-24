class ChangeUserCallbacksSourceType < ActiveRecord::Migration[5.0]
  def change
    change_column :user_callbacks, :source, :string
  end
end

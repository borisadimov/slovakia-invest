class CreateJoinTablePostsServices < ActiveRecord::Migration[5.0]
  def change
    create_join_table :posts, :services do |t|
      t.index [:post_id, :service_id]
      t.index [:service_id, :post_id]
    end
  end
end

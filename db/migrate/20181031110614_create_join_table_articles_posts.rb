class CreateJoinTableArticlesPosts < ActiveRecord::Migration[5.0]
  def change
    create_join_table :articles, :posts do |t|
      t.index [:article_id, :post_id]
      t.index [:post_id, :article_id]
    end
  end
end

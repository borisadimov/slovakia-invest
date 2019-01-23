class CreateJoinTableArticlesEmployees < ActiveRecord::Migration[5.0]
  def change
    create_join_table :articles, :employees do |t|
      t.index [:article_id, :employee_id]
      t.index [:employee_id, :article_id]
    end
  end
end

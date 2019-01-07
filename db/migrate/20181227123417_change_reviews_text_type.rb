class ChangeReviewsTextType < ActiveRecord::Migration[5.0]
  def change
    change_column :reviews, :text_ru, :string
    change_column :reviews, :text_en, :string
    change_column :reviews, :text_uk, :string
  end
end

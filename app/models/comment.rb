class Comment < ApplicationRecord
  belongs_to :post

  validates :author, :email, :text, presence: true
end

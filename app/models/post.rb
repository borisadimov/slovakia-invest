class Post < ApplicationRecord
  has_and_belongs_to_many :articles
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :comments, allow_destroy: true

  translates :title, :text, :author

  def short_text
    text[0..255] + (text.length > 256 ? '...' : '')
  end
end

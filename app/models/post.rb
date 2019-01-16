class Post < ApplicationRecord
  has_and_belongs_to_many :articles
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :comments, allow_destroy: true

  translates :title, :text, :author, :meta_title, :meta_description

  scope :by_title, ->(title) { where("posts.title_#{I18n.locale} ILIKE ?", "%#{title}%") }
  scope :by_article, ->(article) { joins(:articles).where(articles: {id: article}).distinct }

  def short_text
    text[0..255] + (text.length > 256 ? '...' : '')
  end

  default_scope { order(created_at: :desc) }
end

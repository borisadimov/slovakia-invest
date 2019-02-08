class Post < ApplicationRecord
  searchkick

  has_and_belongs_to_many :articles
  has_and_belongs_to_many :services
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :comments, allow_destroy: true

  translates :title, :description, :text, :author, :meta_title, :meta_description, :og_title, :og_description

  mount_base64_uploader :og_image, OgImageUploader

  scope :by_article, ->(article_id) { joins(:articles).where(articles: {id: article_id}).distinct }

  def self.related_articles
    ids = Post.all.includes(:articles).map(&:article_ids).flatten.uniq
    Article.where(id: ids)
  end

  def self.smart_search(query:, article_id:, page:, per_page: 9)
    query ||= '*'
    page ||= 1
    
    where_query = {}
    if article_id.present?
      article = Article.find(article_id)
      where_query = { id: article.post_ids }
    end
    
    lookup query, 
           page: page,
           per_page: per_page,
           includes: [:articles],
           where: where_query,
           order: { created_at: :desc }
  end
end

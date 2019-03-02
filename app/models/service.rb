class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_and_belongs_to_many :posts
  has_many :articles
  has_many :employees
  has_many :reviews, as: :reviewable, dependent: :destroy
  has_many :features, as: :featureable, dependent: :destroy
  has_many :additional_texts, as: :has_texts, dependent: :destroy
  has_many :prices, through: :articles

  accepts_nested_attributes_for :reviews, allow_destroy: true
  accepts_nested_attributes_for :features, allow_destroy: true
  accepts_nested_attributes_for :additional_texts, allow_destroy: true

  translates :title, :description, :content, :meta_title, :meta_description, :og_title, :og_description

  mount_base64_uploader :og_image, OgImageUploader

  default_scope { order(order: :asc) }

  scope :has_prices, -> { joins(:prices).distinct }
end

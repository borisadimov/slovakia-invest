class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_and_belongs_to_many :posts
  belongs_to :service
  has_many :facts, as: :page, dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy
  has_many :prices, dependent: :destroy

  accepts_nested_attributes_for :facts, allow_destroy: true
  accepts_nested_attributes_for :prices, allow_destroy: true
  accepts_nested_attributes_for :reviews, allow_destroy: true

  translates :title, :text, :videolink
end

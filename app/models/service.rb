class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :articles
  has_many :employees
  has_many :facts, as: :page
  has_many :reviews, as: :reviewable
  has_many :posts, through: :articles
  has_many :prices, through: :articles

  accepts_nested_attributes_for :facts, allow_destroy: true
  accepts_nested_attributes_for :reviews, allow_destroy: true

  translates :title, :text, :videolink
end

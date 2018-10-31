class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :articles
  has_many :facts, as: :page
  has_many :posts, through: :articles

  accepts_nested_attributes_for :facts, allow_destroy: true

  translates :title, :text, :videolink
end

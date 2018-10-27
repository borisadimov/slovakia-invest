class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :service
  has_many :facts, as: :page
  has_many :prices

  accepts_nested_attributes_for :facts, allow_destroy: true
  accepts_nested_attributes_for :prices, allow_destroy: true

  translates :title, :text, :videolink
end

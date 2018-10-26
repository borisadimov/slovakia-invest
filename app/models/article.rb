class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :service
  has_many :facts, as: :page

  accepts_nested_attributes_for :facts, allow_destroy: true

  translates :title, :text, :videolink
end

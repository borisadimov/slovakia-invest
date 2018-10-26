class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :articles

  translates :title, :text, :videolink
end

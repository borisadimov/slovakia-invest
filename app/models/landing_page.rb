class LandingPage < ApplicationRecord
  include Page

  has_many :reviews, as: :reviewable, dependent: :destroy
  has_many :features, as: :featureable, dependent: :destroy

  accepts_nested_attributes_for :reviews, allow_destroy: true
  accepts_nested_attributes_for :features, allow_destroy: true

  translates :title, :subtitle, :about_block_text, :meta_title, :meta_description
end

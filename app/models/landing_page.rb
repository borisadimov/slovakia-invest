class LandingPage < ApplicationRecord
  include Page

  has_many :reviews, as: :reviewable, dependent: :destroy

  accepts_nested_attributes_for :reviews, allow_destroy: true

  translates :title, :subtitle, :about_block_text
end

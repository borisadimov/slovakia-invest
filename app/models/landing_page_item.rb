class LandingPageItem < ApplicationRecord
  belongs_to :landing_page

  translates :title, :description

  mount_base64_uploader :logo, LandingPageItemLogoUploader

  enum block_type: [:cooperation_fact, :how_work_item, :profit_item, :review, :partner]

  scope :cooperation_facts, -> { where(block_type: :cooperation_fact) }
  scope :how_work_items, -> { where(block_type: :how_work_item) }
  scope :profit_items, -> { where(block_type: :profit_item) }
  scope :reviews, -> { where(block_type: :review) }
  scope :partners, -> { where(block_type: :partner) }
end

class LandingPage < ApplicationRecord
  has_many :cooperation_facts, -> { cooperation_facts }, foreign_key: 'landing_page_id', class_name: 'LandingPageItem'
  has_many :how_work_items, -> { how_work_items }, foreign_key: 'landing_page_id', class_name: 'LandingPageItem'
  has_many :profit_items, -> { profit_items }, foreign_key: 'landing_page_id', class_name: 'LandingPageItem'
  has_many :reviews, -> { reviews }, foreign_key: 'landing_page_id', class_name: 'LandingPageItem'
  has_many :partners, -> { partners }, foreign_key: 'landing_page_id', class_name: 'LandingPageItem'

  accepts_nested_attributes_for :cooperation_facts, allow_destroy: true
  accepts_nested_attributes_for :how_work_items, allow_destroy: true
  accepts_nested_attributes_for :profit_items, allow_destroy: true
  accepts_nested_attributes_for :reviews, allow_destroy: true
  accepts_nested_attributes_for :partners, allow_destroy: true

  validates_inclusion_of :singleton_guard, in: [0]

  translates :cooperation_title,
             :about_title, :about_text,
             :services_title, :services_text,
             :how_work_title, :how_work_text,
             :profits_title, :profits_text,
             :for_whom_title, :for_whom_text,
             :reviews_title, :reviews_text,
             :partners_title, :partners_text


  def self.instance
    begin
      find(1)
    rescue ActiveRecord::RecordNotFound
      row = LandingPage.new
      row.singleton_guard = 0
      row.save!
      row
    end
  end
end

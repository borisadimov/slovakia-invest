class Footer < ApplicationRecord
  has_many :contacts, as: :has_contacts
  has_many :social_network_links

  accepts_nested_attributes_for :contacts, allow_destroy: true
  accepts_nested_attributes_for :social_network_links, allow_destroy: true

  validates_inclusion_of :singleton_guard, in: [0]

  def self.instance
    begin
      find(1)
    rescue ActiveRecord::RecordNotFound
      row = Footer.new
      row.singleton_guard = 0
      row.save!
      row
    end
  end
end

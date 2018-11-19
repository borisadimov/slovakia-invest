class Footer < ApplicationRecord
  include Page

  has_many :contacts, as: :has_contacts
  has_many :social_network_links

  accepts_nested_attributes_for :contacts, allow_destroy: true
  accepts_nested_attributes_for :social_network_links, allow_destroy: true
end

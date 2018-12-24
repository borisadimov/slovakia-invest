class Footer < ApplicationRecord
  include Page

  has_many :contacts, as: :has_contacts
  has_many :partners

  accepts_nested_attributes_for :contacts, allow_destroy: true
  accepts_nested_attributes_for :partners, allow_destroy: true
end

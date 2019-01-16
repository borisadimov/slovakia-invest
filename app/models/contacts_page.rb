class ContactsPage < ApplicationRecord
  include Page

  has_many :contacts, as: :has_contacts

  accepts_nested_attributes_for :contacts, allow_destroy: true

  translates :page_title, :employees_title, :contacts_title, :meta_title, :meta_description
end

class ContactsPage < ApplicationRecord
  has_many :contacts, as: :has_contacts

  accepts_nested_attributes_for :contacts, allow_destroy: true

  validates_inclusion_of :singleton_guard, in: [0]

  translates :page_title, :employees_title, :contacts_title

  def self.instance
    begin
      find(1)
    rescue ActiveRecord::RecordNotFound
      row = ContactsPage.new
      row.singleton_guard = 0
      row.save!
      row
    end
  end
end

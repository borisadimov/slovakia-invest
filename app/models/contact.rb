class Contact < ApplicationRecord
  belongs_to :has_contacts, polymorphic: true

  enum contact_type: [:skype, :phone, :fax, :email, :address]

  default_scope { order(order: :asc) }
end

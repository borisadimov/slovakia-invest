class Employee < ApplicationRecord
  belongs_to :service
  has_many :contacts, as: :has_contacts

  accepts_nested_attributes_for :contacts, allow_destroy: true

  translates :name, :position, :description

  mount_base64_uploader :avatar, EmployeeAvatarUploader
end
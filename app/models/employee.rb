class Employee < ApplicationRecord
  has_and_belongs_to_many :articles
  belongs_to :service
  has_many :contacts, as: :has_contacts, dependent: :destroy

  accepts_nested_attributes_for :contacts, allow_destroy: true

  translates :name, :position, :description

  mount_base64_uploader :avatar, EmployeeAvatarUploader

  default_scope { order(order: :asc) }
end
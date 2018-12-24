class UserCallback < ApplicationRecord
  validates :name, :email, presence: true
end
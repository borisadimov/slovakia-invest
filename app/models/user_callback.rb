class UserCallback < ApplicationRecord
  enum source: [:not_specified, :advertising, :search_system, :other]

  validates :name, :email, presence: true
end
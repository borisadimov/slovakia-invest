class Service < ApplicationRecord
  has_many :articles

  translates :title, :text, fallback: :any
end

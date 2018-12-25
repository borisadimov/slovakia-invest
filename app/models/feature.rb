class Feature < ApplicationRecord
  belongs_to :featureable, polymorphic: true
  
  validates :from, :to, presence: true

  translates :unit, :description

  default_scope { order(order: :asc) }
end

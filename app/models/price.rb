class Price < ApplicationRecord
  belongs_to :article

  translates :title, :description

  enum package: [:lite, :medium, :vip]

  default_scope { order(order: :asc) }
end

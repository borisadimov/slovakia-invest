class Price < ApplicationRecord
  belongs_to :article

  translates :title, :description

  enum package: [:lite, :medium, :vip]
end

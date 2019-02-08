class AdditionalText < ApplicationRecord
  belongs_to :service

  translates :title, :text

  default_scope { order(order: :asc) }
end

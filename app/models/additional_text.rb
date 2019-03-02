class AdditionalText < ApplicationRecord
  belongs_to :has_texts, polymorphic: true

  translates :title, :text

  default_scope { order(order: :asc) }
end

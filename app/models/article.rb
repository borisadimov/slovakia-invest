class Article < ApplicationRecord
  belongs_to :service

  translates :title, :text, fallback: :any
end

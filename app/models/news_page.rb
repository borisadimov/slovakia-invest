class NewsPage < ApplicationRecord
  include Page

  translates :meta_title, :meta_description
end

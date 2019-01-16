class AboutUsPage < ApplicationRecord
  include Page

  translates :content, :meta_title, :meta_description
end

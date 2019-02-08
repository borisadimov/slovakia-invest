class AboutUsPage < ApplicationRecord
  include Page

  translates :content, :meta_title, :meta_description, :og_title, :og_description

  mount_base64_uploader :og_image, OgImageUploader
end

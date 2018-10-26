class Fact < ApplicationRecord
  belongs_to :page, polymorphic: true

  translates :text

  mount_base64_uploader :logo, FactLogoUploader
end

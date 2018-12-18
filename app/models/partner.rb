class Partner < ApplicationRecord
  belongs_to :footer

  mount_base64_uploader :logo, PartnerLogoUploader
end

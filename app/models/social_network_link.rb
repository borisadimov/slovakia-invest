class SocialNetworkLink < ApplicationRecord
  belongs_to :footer

  mount_base64_uploader :logo, SocialNetworkLinkLogoUploader
end
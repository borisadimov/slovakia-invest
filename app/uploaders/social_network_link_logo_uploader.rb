class SocialNetworkLinkLogoUploader < ImageUploader
  process resize_to_fit: [32, 32]
end

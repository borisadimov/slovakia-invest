class LandingPageItemLogoUploader < ImageUploader
  process resize_to_fit: [185, 40]
end

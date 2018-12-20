class PartnerLogoUploader < ImageUploader
  process resize_to_fit: [140, 100]
end

class FactLogoUploader < ImageUploader
  process resize_to_fit: [120, 120]
end

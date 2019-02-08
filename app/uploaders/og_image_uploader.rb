class OgImageUploader < ImageUploader
  process resize_to_fit: [1024, 512]
end

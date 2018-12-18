class ReviewAvatarUploader < ImageUploader
  process resize_to_fit: [60, 60]
end

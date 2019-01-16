class ReviewAvatarUploader < ImageUploader
  process resize_to_fill: [220, 220]
end

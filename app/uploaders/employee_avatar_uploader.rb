class EmployeeAvatarUploader < ImageUploader
  process resize_to_fill: [136, 136]
end

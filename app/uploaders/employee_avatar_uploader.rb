class EmployeeAvatarUploader < ImageUploader
  process resize_to_fit: [160, 160]
end

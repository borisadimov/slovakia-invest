class ImageUploader < CommonUploader
  def extension_whitelist
    ['jpg', 'jpeg', 'png']
  end

  def size_range
    0..5.megabytes
  end
end

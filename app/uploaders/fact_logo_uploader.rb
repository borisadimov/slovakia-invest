class FactLogoUploader < CommonUploader
  def extension_whitelist
    ['jpg', 'jpeg', 'png']
  end

  def size_range
    0..5.megabytes
  end

  process resize_to_fit: [120, 120]
end

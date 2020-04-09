class ImageUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # 10mbまでのファイルのみにする
  def size_range
    1..10.megabytes
  end

# jpg,jpeg,pngしか受け付けない
  def extension_white_list
    %w(jpg jpeg png)
  end

end

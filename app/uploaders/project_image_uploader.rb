class ProjectImageUploader < BaseUploader
  version :thumb do
    process resize_and_pad: [400, 400]
  end

  version :thumb_2x do
    process resize_and_pad: [800, 800]
  end
end

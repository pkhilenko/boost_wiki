class Project < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }

  mount_uploader :image, ProjectImageUploader
end

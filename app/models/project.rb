class Project < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }
  paginates_per 5

  mount_uploader :image, ProjectImageUploader
end

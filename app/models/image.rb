class Image < ApplicationRecord
  belongs_to :category
  mount_uploader :avatar, AvatarUploader
end

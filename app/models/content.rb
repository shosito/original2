class Content < ApplicationRecord
    belongs_to :user
    has_many :comments
    mount_uploader :images, ImageUploader
end

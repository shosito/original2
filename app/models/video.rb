class Video < ApplicationRecord
    mount_uploader :video_data, VideoTopUploader
    has_one_attached :video
    belongs_to :user
end

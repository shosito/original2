class AddVideoDataToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :video_data, :string
  end
end

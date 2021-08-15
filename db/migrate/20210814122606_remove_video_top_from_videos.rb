class RemoveVideoTopFromVideos < ActiveRecord::Migration[5.2]
  def change
    remove_column :videos, :video_top：string, :string
  end
end

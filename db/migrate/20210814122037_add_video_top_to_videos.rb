class AddVideoTopToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :video_top：string, :string
  end
end

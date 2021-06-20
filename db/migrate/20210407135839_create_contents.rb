class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string    :name
      t.text      :text
      t.text      :images
      t.string    :video_top
      t.datetime  :date
      t.timestamps
    end
  end
end

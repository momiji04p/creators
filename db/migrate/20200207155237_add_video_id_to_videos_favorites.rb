class AddVideoIdToVideosFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :videos_favorites, :video_id, :integer
  end
end

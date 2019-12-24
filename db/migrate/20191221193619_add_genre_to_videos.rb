class AddGenreToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :genre, :string
  end
end

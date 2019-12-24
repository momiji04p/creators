class AddVideoToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_reference :favorites, :video, foreign_key: true
  end
end

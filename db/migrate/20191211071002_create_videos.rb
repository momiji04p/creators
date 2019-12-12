class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :video
      t.string :image
      t.string :title
      t.string :genre
      t.text :information
      t.string :account_name
      t.string :review
      t.string :report

      t.timestamps
    end
  end
end

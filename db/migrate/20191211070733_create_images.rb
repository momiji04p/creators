class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
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

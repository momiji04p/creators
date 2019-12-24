class AddVideoColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :title, :string
    add_column :videos, :account_name, :string
    add_column :videos, :information, :text
    add_column :videos, :thumbnail, :string
  end
end

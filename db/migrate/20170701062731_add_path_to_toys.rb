class AddPathToToys < ActiveRecord::Migration
  def change
    add_column :toys, :path, :string
  end
end

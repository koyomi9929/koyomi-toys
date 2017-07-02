class AddDetailToToys < ActiveRecord::Migration
  def change
    add_column :toys, :detail, :string
  end
end

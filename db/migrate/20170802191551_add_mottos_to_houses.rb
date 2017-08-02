class AddMottosToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :motto, :string
  end
end

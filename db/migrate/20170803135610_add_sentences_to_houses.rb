class AddSentencesToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :sentence, :string
  end
end

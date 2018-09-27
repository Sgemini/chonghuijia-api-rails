class AddCoverUrlToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :cover_url, :string
  end
end

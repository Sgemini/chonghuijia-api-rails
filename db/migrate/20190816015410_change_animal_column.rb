class ChangeAnimalColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :animals, :animal_type, :string
    change_column :animals, :gender, :string
  end
end

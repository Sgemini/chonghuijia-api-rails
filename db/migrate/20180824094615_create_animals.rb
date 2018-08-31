class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string   :name, null: false
      t.integer  :animal_type
      t.text     :description
      t.date     :birth_date
      t.integer  :gender
      t.string   :size
      t.boolean  :is_vaccined
      t.boolean  :is_sterilized
      t.boolean  :is_adopted

      t.timestamps
    end
  end
end

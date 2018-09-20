class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :url
      t.string :type
      t.integer :animal_id
      t.boolean :is_cover

      t.timestamps
    end
  end
end

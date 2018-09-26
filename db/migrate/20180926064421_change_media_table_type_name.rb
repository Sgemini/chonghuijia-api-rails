class ChangeMediaTableTypeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :media, :type, :medium_type
  end
end

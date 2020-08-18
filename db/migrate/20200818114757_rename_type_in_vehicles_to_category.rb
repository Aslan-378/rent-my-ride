class RenameTypeInVehiclesToCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :vehicles, :type, :category
  end
end

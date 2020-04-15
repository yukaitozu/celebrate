class FixLocationName < ActiveRecord::Migration[6.0]
  def change
    rename_column :locations, :location, :place
  end
end

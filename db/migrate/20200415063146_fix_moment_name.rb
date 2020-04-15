class FixMomentName < ActiveRecord::Migration[6.0]
  def change
    rename_column :moments, :moment, :event_date
  end
end

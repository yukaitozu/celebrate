class RemoveGuestFromEvents < ActiveRecord::Migration[6.0]
  def change

    remove_column :events, :guest_id
  end
end

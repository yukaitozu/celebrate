class RemoveHostFromEvents < ActiveRecord::Migration[6.0]
  def change

    remove_column :events, :host_id
  end
end

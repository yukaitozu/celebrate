class DropHostsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :hosts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

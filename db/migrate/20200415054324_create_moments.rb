class CreateMoments < ActiveRecord::Migration[6.0]
  def change
    create_table :moments do |t|
      t.date :moment
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end

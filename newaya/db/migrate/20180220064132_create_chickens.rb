class CreateChickens < ActiveRecord::Migration[5.1]
  def change
    create_table :chickens do |t|
      t.integer :farm_id
      t.string :name
      t.string :breed

      t.timestamps
    end
  end
end

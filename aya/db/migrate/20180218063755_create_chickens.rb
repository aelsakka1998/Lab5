class CreateChickens < ActiveRecord::Migration[5.1]
  def change
    add_column :chicken , :farm_id , :integer 
    create_table :chickens do |t|
      t.string :name
      t.string :breed

      t.timestamps
    end
  end
end

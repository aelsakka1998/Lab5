class AddForeignKeyToChicken < ActiveRecord::Migration[5.1]
  
  def change
    add_column :chickens , :farm_id , :integer
  end
  
end

class AddsForeignKeyToEgg < ActiveRecord::Migration[5.1]
  def change
    add_column :eggs , :chicken_id , :integer 
  end
end

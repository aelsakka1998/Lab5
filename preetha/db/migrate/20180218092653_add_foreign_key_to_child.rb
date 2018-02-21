class AddForeignKeyToChild < ActiveRecord::Migration[5.1]
  def change
     add_column :children , :chicken_id , :integer
  end
end

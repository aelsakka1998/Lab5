class AddForeignKeyToEgg < ActiveRecord::Migration[5.1]
  def change
     add_column :eggs , :chicken , :integer
  end
end

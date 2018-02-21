class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|   ##up method creates the table Down method deletes the table 
      t.string :name

      t.timestamps    #this will create the id
    end
  end
end

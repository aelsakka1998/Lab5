class AddsForeignKeyToTeacher < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers , :school_id , :integer 
  end
end

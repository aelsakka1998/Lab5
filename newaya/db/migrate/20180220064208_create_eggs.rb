class CreateEggs < ActiveRecord::Migration[5.1]
  def change
    create_table :eggs do |t|
      t.integer :chicken_id
      t.integer :size
      t.string :color

      t.timestamps
    end
  end
end

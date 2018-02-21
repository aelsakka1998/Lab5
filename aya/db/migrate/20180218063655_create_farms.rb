class CreateFarms < ActiveRecord::Migration[5.1]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :locarion

      t.timestamps
    end
  end
end

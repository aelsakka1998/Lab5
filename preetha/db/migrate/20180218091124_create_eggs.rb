class CreateEggs < ActiveRecord::Migration[5.1]
  def change
    create_table :eggs do |t|
      t.string :color

      t.timestamps
    end
  end
end

class CreateBrains < ActiveRecord::Migration
  def change
    create_table :brains do |t|
      t.string :sabor
      t.string :status
      t.integer :zombie_id

      t.timestamps null: false
    end
  end
end

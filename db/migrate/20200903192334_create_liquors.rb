class CreateLiquors < ActiveRecord::Migration
  def change
    create_table :liquors do |t|
      t.string :name
      t.integer :liquor_count
      t.float :liquor_cost
      t.timestamps null: false
    end
  end
end

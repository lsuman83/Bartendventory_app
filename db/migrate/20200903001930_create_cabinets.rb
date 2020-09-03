class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.string :name
      t.string :liquor_names
      t.integer :liquor_count
      t.float :liquor_price
      t.integer :user_id
  end
end

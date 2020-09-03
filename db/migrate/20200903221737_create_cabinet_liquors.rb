class CreateCabinetLiquors < ActiveRecord::Migration
  def change
    create_table :cabinet_liquors do |t|
      t.integer :cabinet_id
      t.integer :liquor_id
      t.timestamps null: false
    end
  end
end

class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :table_name
      t.string :alcohol_categories
      t.string :table_options
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

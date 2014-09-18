class CreateEats < ActiveRecord::Migration
  def change
    create_table :eats do |t|
      t.string :food
      t.string :amount
      t.integer :carbohydrate
      t.integer :sugar
      t.integer :calories
      t.integer :user_id
      t.integer :food_id

      t.timestamps
    end
    add_index :eats, [:user_id, :created_at]
  end
end

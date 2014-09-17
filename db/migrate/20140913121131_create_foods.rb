class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :description
      t.integer :serving_size
      t.string :serving_unit
      t.integer :sugar
      t.integer :carbohydrate
      t.string :source

      t.timestamps
    end
  end
end

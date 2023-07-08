class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :pizza, null: false, foreign_key: true
      t.decimal :price, precision: 8, scale: 2
      t.timestamps
    end
  end
end

# delete all records to start fresh each time seeds is run
RestaurantPizza.delete_all
Restaurant.delete_all
Pizza.delete_all

# create some restaurants
restaurant1 = Restaurant.create(name: "The Delicious Pizza Place", address: "123 Main St")
restaurant2 = Restaurant.create(name: "The Sizzling Pizza Hub", address: "456 Broadway")
restaurant3 = Restaurant.create(name: "The Great Italian Pizzaria", address: "789 Market St")
restaurant4 = Restaurant.create(name: "Pizza Corner", address: "101 Park Ave")
restaurant5 = Restaurant.create(name: "The Golden Crust Pizzaria", address: "202 Elm St")

# create some pizzas
pizza1 = Pizza.create(name: "Margherita Pizza", ingredients: "Tomatoes, Mozzarella, Basil, Salt, Olive oil")
pizza2 = Pizza.create(name: "Pepperoni Pizza", ingredients: "Tomatoes, Mozzarella, Pepperoni, Salt, Olive oil")
pizza3 = Pizza.create(name: "BBQ Chicken Pizza", ingredients: "BBQ Sauce, Chicken, Red onion, Cilantro, Mozzarella, Cheddar")
pizza4 = Pizza.create(name: "Hawaiian Pizza", ingredients: "Tomatoes, Mozzarella, Ham, Pineapple, Salt")
pizza5 = Pizza.create(name: "Veggie Supreme Pizza", ingredients: "Tomatoes, Mozzarella, Bell Peppers, Mushrooms, Olives, Onions, Spinach")
pizza6 = Pizza.create(name: "Cheese Lover's Pizza", ingredients: "Tomatoes, Mozzarella, Cheddar, Feta, Gorgonzola, Parmesan")
pizza7 = Pizza.create(name: "Meat Lover's Pizza", ingredients: "Tomatoes, Mozzarella, Pepperoni, Sausage, Bacon, Ham, Beef")

# associate pizzas with restaurants and add prices
RestaurantPizza.create(restaurant: restaurant1, pizza: pizza1, price: 8.99)
RestaurantPizza.create(restaurant: restaurant1, pizza: pizza2, price: 9.99)
RestaurantPizza.create(restaurant: restaurant1, pizza: pizza3, price: 10.99)
RestaurantPizza.create(restaurant: restaurant2, pizza: pizza1, price: 7.99)
RestaurantPizza.create(restaurant: restaurant2, pizza: pizza4, price: 8.99)
RestaurantPizza.create(restaurant: restaurant3, pizza: pizza5, price: 9.99)
RestaurantPizza.create(restaurant: restaurant3, pizza: pizza6, price: 10.99)
RestaurantPizza.create(restaurant: restaurant3, pizza: pizza7, price: 11.99)
RestaurantPizza.create(restaurant: restaurant4, pizza: pizza2, price: 7.99)
RestaurantPizza.create(restaurant: restaurant4, pizza: pizza3, price: 9.99)
RestaurantPizza.create(restaurant: restaurant4, pizza: pizza4, price: 8.99)
RestaurantPizza.create(restaurant: restaurant4, pizza: pizza7, price: 11.99)
RestaurantPizza.create(restaurant: restaurant5, pizza: pizza1, price: 8.99)
RestaurantPizza.create(restaurant: restaurant5, pizza: pizza5, price: 9.99)
RestaurantPizza.create(restaurant: restaurant5, pizza: pizza6, price: 10.99)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create restaurants
restaurants = Restaurant.create([
  { name: 'Sottocasa NYC', address: '298 Atlantic Ave, Brooklyn, NY 11201' },
  { name: 'PizzArte', address: '69 W 55th St, New York, NY 10019' },
  # Add more restaurants if needed
])

# Create pizzas
pizzas = Pizza.create([
  { name: 'Cheese', ingredients: 'Dough, Tomato Sauce, Cheese' },
  { name: 'Pepperoni', ingredients: 'Dough, Tomato Sauce, Cheese, Pepperoni' },
  # Add more pizzas if needed
])

# Create restaurant pizzas
restaurant_pizzas = RestaurantPizza.create([
  { price: 10, restaurant: restaurants.first, pizza: pizzas.first },
  { price: 12, restaurant: restaurants.first, pizza: pizzas.second },
  { price: 8, restaurant: restaurants.second, pizza: pizzas.first },
  # Add more restaurant pizzas if needed
])

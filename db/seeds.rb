# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Fridge.destroy_all
Meal.destroy_all
Ingredient.destroy_all
SpiceRack.destroy_all
Spice.destroy_all

u1 = User.create(name: 'Gbenga')
f1 = Fridge.create(capacity: 20, user_id: u1.id)
s1 = SpiceRack.create(user_id: u1.id)
m1 = Meal.create(name: "Jollof Rice")
Ingredient.create(name: "Rice", price:2, quantity:5, meal_id: m1.id, fridge_id: f1.id)
Ingredient.create(name: "Pepper", price:1, quantity:10, meal_id: m1.id, fridge_id: f1.id)
Ingredient.create(name: "Onion", price:1, quantity:10, meal_id: m1.id, fridge_id: f1.id)
Spice.create(name:"Cameroon Pepper", price:2, amount_left:80, meal_id: m1.id, spice_rack_id: s1.id)
Spice.create(name:"Curry Powder", price:1, amount_left:70, meal_id: m1.id, spice_rack_id: s1.id)
Spice.create(name:"Bay Leaf", price:1, amount_left:20, meal_id: m1.id, spice_rack_id: s1.id)

u2 = User.create(name: 'Jeffrey')
f2 = Fridge.create(capacity: 10, user_id: u2.id)
s2 = SpiceRack.create(user_id: u2.id)
m2 = Meal.create(name: "Fajitas")
Ingredient.create(name: "Chicken", price:4, quantity:3, meal_id: m2.id, fridge_id: f2.id)
Ingredient.create(name: "Tortilla Wrap", price:1, quantity:4, meal_id:m2.id, fridge_id: f2.id)
Spice.create(name:"Black Pepper", price:1, amount_left:20, meal_id: m2.id, spice_rack_id: s2.id)
Spice.create(name:"Cumin", price:1, amount_left:30, meal_id: m2.id, spice_rack_id: s2.id)

u3 = User.create(name: 'Ricky')
f3 = Fridge.create(capacity: 50, user_id: u3.id)
s3 = SpiceRack.create(user_id: u3.id)
m3 = Meal.create(name: "Pizza")
Ingredient.create(name: "Flour", price:1, quantity:5, meal_id: m3.id, fridge_id: f3.id)
Ingredient.create(name: "Tomato Sauce", price:1, quantity:5, meal_id: m3.id, fridge_id: f3.id)
Ingredient.create(name: "Cheese", price:1, quantity:5, meal_id: m3.id, fridge_id: f3.id)
Spice.create(name:"Oregano", price:1, amount_left:10, meal_id: m3.id, spice_rack_id: s3.id)
Spice.create(name:"Garlic", price:1, amount_left:20, meal_id: m3.id, spice_rack_id: s3.id)
Spice.create(name:"Jalapeño", price:1, amount_left:30, meal_id: m3.id, spice_rack_id: s3.id)
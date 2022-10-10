# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fry.destroy_all
Burger.destroy_all 
Drink.destroy_all 
Dessert.destroy_all 
Meal.destroy_all

Fry.create(sauce: "Jeannette")
Fry.create(sauce: "Barbecue")

Recipe.create(name:"Devezh")
Recipe.create(name:"Barbecue")
Recipe.create(name:"Classic")
Recipe.create(name:"Kampinod")

Dessert.create(name:"Cookie")
Dessert.create(name:"Brownie")

Drink.create(name:"Citronnade Maison")
Drink.create(name:"Eau")
Drink.create(name:"Perrier")
Drink.create(name:"Bière Artisanale")
Drink.create(name:"Coca Cola")
Drink.create(name:"Coca Cola Zero")
Drink.create(name:"Dr Pepper")
Drink.create(name:"Orangina")
Drink.create(name:"Canada Dry")
Drink.create(name:"Ice Tea")

Cooking.create(name:"Bleu")
Cooking.create(name:"Saignant")
Cooking.create(name: "A point")
Cooking.create(name: "Bien cuit")


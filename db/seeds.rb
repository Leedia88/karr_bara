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
Steak.destroy_all
Dessert.destroy_all 
Meal.destroy_all
Cooking.destroy_all
Recipe.destroy_all 


Menu.create(name:"")
Menu.create(name:"Menu")
Menu.create(name:"Burger Frites")
Menu.create(name:"Burger")
Menu.create(name:"Frites")


Steak.create(name:"Steak")
Steak.create(name:"Veggie")
Steak.create(name:"Flexi")

Fry.create(sauce: "Jeannette")
Fry.create(sauce: "Barbecue")

Recipe.create(name:"Devezh")
Recipe.create(name:"Barbecue")
Recipe.create(name:"Classic")
Recipe.create(name:"Kampinod")

Dessert.create(name:"Cookie")
Dessert.create(name:"Brownie")

Drink.create(name:"")
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

Cooking.create(name:"")
Cooking.create(name:"Bleu")
Cooking.create(name:"Saignant")
Cooking.create(name: "A point")
Cooking.create(name: "Bien cuit")

# Schedule.create(slot:"11h50", available:2)
# Schedule.create(slot:"12h00", available:3)
# Schedule.create(slot:"12h10", available:8)
# Schedule.create(slot:"12h20", available:5)
# Schedule.create(slot:"12h30", available:2)
# Schedule.create(slot:"12h40", available:4)
# Schedule.create(slot:"12h50", available:8)
# Schedule.create(slot:"13h00", available:8)
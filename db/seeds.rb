# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

OrderMeal.destroy_all
Order.destroy_all
Schedule.destroy_all
Drink.destroy_all
Cooking.destroy_all
Recipe.destroy_all
Menu.destroy_all
Day.destroy_all 


Menu.create(name:"Menu")
Menu.create(name:"Burger + Frites")
Menu.create(name:"Burger")

Recipe.create(name:"Devezh")
Recipe.create(name:"Barbecue")
Recipe.create(name:"Classic")
Recipe.create(name:"Kampinod")

Drink.create(name:"Sans Boisson")
Drink.create(name:"Coca Cola")
Drink.create(name:"Coca Cola Zero")
Drink.create(name:"Dr Pepper")
Drink.create(name:"Orangina")
Drink.create(name:"Canada Dry")
Drink.create(name:"Lipton Ice Tea")
Drink.create(name:"Citronnade Maison *")
Drink.create(name:"Eau")
Drink.create(name:"Perrier")
Drink.create(name:"Bière ambrée**")
Drink.create(name:"Bière blonde**")


Cooking.create(name: "Saignant")
Cooking.create(name: "A point")
Cooking.create(name: "Bien cuit")
Cooking.create(name: "Bleu")
Cooking.create(name: "Veggie")
Cooking.create(name: "Flexi *")

Schedule.create(slot:"11h40", available:8)
Schedule.create(slot:"11h50", available:8)
Schedule.create(slot:"12h00", available:8)
Schedule.create(slot:"12h10", available:8)
Schedule.create(slot:"12h20", available:8)
Schedule.create(slot:"12h30", available:8)
Schedule.create(slot:"12h40", available:8)
Schedule.create(slot:"12h50", available:8)
Schedule.create(slot:"13h00", available:8)
Schedule.create(slot:"13h10", available:8)

Day.create(name: "Lundi", address: "Route de Verdun, Rennes")
Day.create(name: "Mardi", address: "Brasserie Skumenn, Cesson-Sevigné")
Day.create(name: "Mercredi", address: "Rue du Mabilais, Rennes")
Day.create(name: "Jeudi", address: "Rue de Jouanet, Rennes")
Day.create(name: "Vendredi", address: "Rue de Paris, Rennes")
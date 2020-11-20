# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Database..."
Dose.destroy_all
puts "Doses cleaned"
Ingredient.destroy_all
puts "Ingredients cleaned"
Cocktail.destroy_all
puts "Cocktails cleaned"

# pizza_pino = Restaurant.new(name: "Pizza Pino", address: "10B Rue Marcel Sembat, 33100 Bordeaux", phone_number: "05 56 32 92 92", category: "italian")

# db/seeds.rb
# Ingredients
lemon = Ingredient.create!(name: "Citron")
Ingredient.create!(name: "Glace")
mint = Ingredient.create!(name: "Feuille de menthe")
Ingredient.create!(name: "Rhum blanc")
Ingredient.create!(name: "Eau gazeuse")
Ingredient.create!(name: "Jus de citron vert")
Ingredient.create!(name: "Sirop de sucre de canne")

Ingredient.create!(name: "cointreau")
Ingredient.create!(name: "tequila")

Ingredient.create!(name: "Vodka")
Ingredient.create!(name: "Jus de cranberry")
Ingredient.create!(name: "Jus d'orange")
Ingredient.create!(name: "Crème de pêches")

Ingredient.create!(name: "Sel au céleri")
Ingredient.create!(name: "Poivre")
Ingredient.create!(name: "Sauce Worcestershire")
Ingredient.create!(name: "Tabasco")
Ingredient.create!(name: "Jus de tomate")

Ingredient.create!(name: "lait de coco")
Ingredient.create!(name: "Rhum brun")
Ingredient.create!(name: "Jus d'ananas")

# Cocktails
mojito = Cocktail.create!(name: "Mojito")
mojito.photo = cl_image_path("mv6pllueeeuai5xso3m8hayqbg3v")
mojito.save!
# Cocktail.create!(name: "Bloody Mary")
# Cocktail.create!(name: "Sex on the Beach")
# Cocktail.create!(name: "Margarita")
# Cocktail.create!(name: "Pina Colada")

# Doses
first_dose = Dose.new(description: "6 leaves")
first_dose.cocktail = mojito  # Set foreign key restaurant_id
first_dose.ingredient = mint
first_dose.save!

# first_dose.ingredient            # Should contain the ingredient Mint
# first_dose.cocktail            # Should contain the dose cocktail : Mojito

# A cocktail has a name (e.g. "Mint Julep", "Whiskey Sour", "Mojito")
# An ingredient has a name (e.g. "lemon", "ice", "mint leaves")
# A dose is the amount needed for each ingredient in a cocktail (e.g. the Mojito cocktail needs 6cl of lemon). So each dose references a cocktail, an ingredient and has a description.

puts "Seeds Done 👍"

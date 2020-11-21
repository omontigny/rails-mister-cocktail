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

Ingredient.create!(name: "Cointreau")
Ingredient.create!(name: "Tequila")
Ingredient.create!(name: "Jus de grenadine")

Ingredient.create!(name: "Vodka")
Ingredient.create!(name: "Jus de cranberry")
Ingredient.create!(name: "Jus d'orange")
Ingredient.create!(name: "Crème de pêches")

Ingredient.create!(name: "Sel au céleri")
Ingredient.create!(name: "Poivre")
Ingredient.create!(name: "Sauce Worcestershire")
Ingredient.create!(name: "Tabasco")
Ingredient.create!(name: "Jus de tomate")

Ingredient.create!(name: "Lait de coco")
Ingredient.create!(name: "Rhum brun")
Ingredient.create!(name: "Jus d'ananas")

Ingredient.create!(name: "Crémant de Loire")
Ingredient.create!(name: "Jus de citron")
Ingredient.create!(name: "Grand Marnier")
Ingredient.create!(name: "Curaçao")

# Cocktails
mojito = Cocktail.new(name: "Mojito")
file = File.open(Rails.root.join('db/fixtures/cocktails/Mojito.jpg'))
mojito.photo.attach(io: file, filename: 'Mojito.jpg', content_type: 'image/jpg')
mojito.save!

# Doses
mojito_dose = Dose.new(description: "6 leaves")
mojito_dose.cocktail = mojito # Set foreign key restaurant_id
mojito_dose.ingredient = mint
mojito_dose.save!

# first_dose.ingredient   # Should contain the ingredient Mint
# first_dose.cocktail     # Should contain the dose cocktail : Mojito

# Pina Colada
pina_colada = Cocktail.create!(name: "Pina Colada")
# 4 cl de lait de coco
# 12 cl de jus d'ananas
# 2 cl de rhum brun
# 4 cl de rhum blanc

# Tequila Sunrise
tequila = Cocktail.create!(name: "Tequila")

# 4 cl de tequila
# 2 cl de sirop de grenadine
# 8 cl de jus d'orange Caraïbos

# Blood Mary
bloody = Cocktail.create!(name: "Bloody Mary")
# 1 dose Sel au celeri
# 1 dose Poivre
# 2 gouttes de tabasco
# 0,5 cl de sauce Worcestershire
# 12 cl de jus de tomate
# 0,5 cl de jus de citron
# 4 cl de vodka

# Sex on the Beach
sotb = Cocktail.create!(name: "Sex On the Beach")
# 4 cl de vodka
# 4 cl de jus d'orange
# 4 cl de jus de cranberry
# 2 cl de creme de pêches
# Quelques Glacon

# Soupe Angevine
soupe = Cocktail.create!(name: "Soupe Angevine")
# 15cl Sirop de sucre de canne
# 35cl Jus de citron jaune
# 10cl Curaçao bleu
# 40cl Cointreau
# 1,5l Crémant de Loire

puts "Seeds Done 👍"

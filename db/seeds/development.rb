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
lemon             = Ingredient.create!(name: "Citron vert")
limonade          = Ingredient.create!(name: "Limonade")
ice               = Ingredient.create!(name: "Glace")
mint              = Ingredient.create!(name: "Feuille de menthe")
rhum_blanc        = Ingredient.create!(name: "Rhum blanc")
eau               = Ingredient.create!(name: "Eau gazeuse")
jus_citron_vert   = Ingredient.create!(name: "Jus de citron vert")
sirop_sucre_canne = Ingredient.create!(name: "Sirop de sucre de canne")

cointreau   = Ingredient.create!(name: "Cointreau")
tequile     = Ingredient.create!(name: "Tequila")
grenadine   = Ingredient.create!(name: "Jus de grenadine")

vodka     = Ingredient.create!(name: "Vodka")
cranberry = Ingredient.create!(name: "Jus de cranberry")
orange    = Ingredient.create!(name: "Jus d'orange")
peche     = Ingredient.create!(name: "Crème de pêches")

celerei         = Ingredient.create!(name: "Sel au céleri")
poivre          = Ingredient.create!(name: "Poivre")
worcestershire  = Ingredient.create!(name: "Sauce Worcestershire")
tabasco         = Ingredient.create!(name: "Tabasco")
tomate           = Ingredient.create!(name: "Jus de tomate")

coco      = Ingredient.create!(name: "Lait de coco")
rhum_brun = Ingredient.create!(name: "Rhum brun")
ananas    = Ingredient.create!(name: "Jus d'ananas")

crement     = Ingredient.create!(name: "Crémant de Loire")
jus_citron  = Ingredient.create!(name: "Jus de citron")
marnier     = Ingredient.create!(name: "Grand Marnier")
curacao     = Ingredient.create!(name: "Curaçao")

# Cocktails
mojito = Cocktail.new(name: "Mojito")
file = File.open(Rails.root.join('db/fixtures/cocktails/Mojito.jpg'))
mojito.photo.attach(io: file, filename: 'Mojito.jpg', content_type: 'image/jpg')
mojito.save!

# Mojito
# 4 cl de rhum blanc
# 2 cl de sirop de sucre de canne
# 6 feuilles de menthe
# 0,5 citron vert
# 1 eau gazeuse
# 10 glaçons
leaves_dose = Dose.new(description: "6 leaves")
leaves_dose.cocktail = mojito # Set foreign key restaurant_id
leaves_dose.ingredient = mint
leaves_dose.save!

lemon_dose = Dose.new(description: "3")
lemon_dose.cocktail = mojito
lemon_dose.ingredient = lemon
lemon_dose.save!

limonade_dose = Dose.new(description: "1l")
limonade_dose.cocktail = mojito
limonade_dose.ingredient = limonade
limonade_dose.save!

# Pina Colada
pina_colada = Cocktail.create!(name: "Pina Colada")
# 4 cl de lait de coco
# 12 cl de jus d'ananas
# 2 cl de rhum brun
# 4 cl de rhum blanc

# Tequila Sunrise
tequila = Cocktail.create!(name: "Tequila Sunrise")

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

# Margarita
margarita = Cocktail.create!(name: "Margarita")
# 10 cl de jus de citron vert
# 10 cl de tequila
# 10 cl de cointreau

# Gin Fizz
# 12 cl d'eau gazeuse
# 2 cl de sirop de sucre de canne
# 4 cl de jus de citron
# 6 cl de gin



puts "Seeds Done 👍"

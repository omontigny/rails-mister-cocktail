puts "Cleaning Database..."
Dose.destroy_all
puts "Doses cleaned"
Ingredient.destroy_all
puts "Ingredients cleaned"
Cocktail.destroy_all
puts "Cocktails cleaned"

# Ingredients
ingredients = %w(Citron\ vert Limonade Glace Feuille\ de\ menthe Rhum\ blanc Eau\ gazeuse Jus\ de\ citron\ vert Sirop\ de\ sucre\ de\ canne
Cointreau Tequila Jus\ de\ grenadine
Vodka Jus\ de\ cranberry Jus\ d'orange Crème\ de\ pêches
Sel\ au\ céleri Poivre Sauce\ Worcestershire Tabasco Jus\ de\ tomate
Lait\ de\ coco  Rhum\ brun Jus\ d'ananas
Crémant\ de\ Loire Jus\ de\ citron Grand\ Marnier Curaçao
)

ingredients.each {|ingredient| Ingredient.create!(name: ingredient)}

# lemon             = Ingredient.create!(name: "Citron vert")
# limonade          = Ingredient.create!(name: "Limonade")
# ice               = Ingredient.create!(name: "Glace")
# mint              = Ingredient.create!(name: "Feuille de menthe")
# rhum_blanc        = Ingredient.create!(name: "Rhum blanc")
# eau               = Ingredient.create!(name: "Eau gazeuse")
# jus_citron_vert   = Ingredient.create!(name: "Jus de citron vert")
# sirop_sucre_canne = Ingredient.create!(name: "Sirop de sucre de canne")

# cointreau   = Ingredient.create!(name: "Cointreau")
# tequile     = Ingredient.create!(name: "Tequila")
# grenadine   = Ingredient.create!(name: "Jus de grenadine")

# vodka     = Ingredient.create!(name: "Vodka")
# cranberry = Ingredient.create!(name: "Jus de cranberry")
# orange    = Ingredient.create!(name: "Jus d'orange")
# peche     = Ingredient.create!(name: "Crème de pêches")

# celerei         = Ingredient.create!(name: "Sel au céleri")
# poivre          = Ingredient.create!(name: "Poivre")
# worcestershire  = Ingredient.create!(name: "Sauce Worcestershire")
# tabasco         = Ingredient.create!(name: "Tabasco")
# tomate           = Ingredient.create!(name: "Jus de tomate")

# coco      = Ingredient.create!(name: "Lait de coco")
# rhum_brun = Ingredient.create!(name: "Rhum brun")
# ananas    = Ingredient.create!(name: "Jus d'ananas")

# crement     = Ingredient.create!(name: "Crémant de Loire")
# jus_citron  = Ingredient.create!(name: "Jus de citron")
# marnier     = Ingredient.create!(name: "Grand Marnier")
# curacao     = Ingredient.create!(name: "Curaçao")

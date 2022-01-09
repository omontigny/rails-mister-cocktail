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

puts "Seeds Done 👍"

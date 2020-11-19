class Dose < ApplicationRecord
  # A dose belongs to a cocktai
  belongs_to :cocktail
  # A dose belongs to an ingredient
  belongs_to :ingredient

  # A dose must have a description,
  validates :description, presence: true
  # a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient, message: 'Must be unique for Ingredient' }
end

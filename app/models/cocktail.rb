class Cocktail < ApplicationRecord
  # A cocktail has many doses
  has_many :doses, dependent: :destroy
  # A cocktail has many ingredients through doses
  has_many :ingredients, through: :doses

  # A cocktail must have a unique name.
  validates :name, presence: true, uniqueness: true

  # When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).
end

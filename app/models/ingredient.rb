class Ingredient < ApplicationRecord
  # An ingredient has many doses
  has_many :doses
  has_many :cocktails, through: :doses

  # An ingredient must have a unique name.
  validates :name, presence: true, uniqueness: true
end

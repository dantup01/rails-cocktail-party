class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true

  has_many :ingredients, dependent: :destroy
  has_many :alcohols, through: :ingredients
  has_many :mixers, through: :ingredients
  has_many :garnishes, through: :ingredients
end

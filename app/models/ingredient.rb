class Ingredient < ApplicationRecord
  validates :alcohol, presence: true, uniqueness: true
  validates :mixer, presence: true, uniqueness: true
  validates :garnish, presence: true, uniqueness: true

  has_many :doses
  has_many :cocktails, through: :doses
end

class Ingredient < ApplicationRecord
  belongs_to :cocktail
  belongs_to :alcohol
  belongs_to :mixer
  belongs_to :garnish

  validates :alcohol, :mixer, :garnish, presence: true
  validates :cocktail_id, uniqueness: { scope: :alcohol_id }
  validates :cocktail_id, uniqueness: { scope: :mixer_id }
  validates :cocktail_id, uniqueness: { scope: :garnish_id }
end

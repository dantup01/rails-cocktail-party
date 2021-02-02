class Garnish < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :ingredients
  has_many :cocktails, through: :ingredients
end

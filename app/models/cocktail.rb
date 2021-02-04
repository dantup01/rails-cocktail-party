class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :about, presence: true, uniqueness: true
  validates :method, presence: true, uniqueness: true

  has_one_attached :photo
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end

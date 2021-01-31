puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'

# Pisco Sour
ingredients = {
  alcohol: ['pisco', 'angostura bitters', 'cachaça', 'tequila', 'cointreau', 'rhy whiskey',
            'sweet vermouth', 'gin', 'campari', 'white rum', 'dark rum', 'kahlua', 'vodka',
            'dry vermouth'],
  mixers: ['lime juice', 'sugar', 'egg white', 'crushed ice', 'ice', 'salt',
           'soda', 'ginger beer', 'espresso', 'sugar syrup', 'lemon juice'],
  garnish: ['mint leaves', 'maraschino cherry', 'orange peel', 'lime wedge', 'coffee beans',
            'grapefruit wedge', 'olive', 'lemon peel']
}

Ingredient.create!(ingredients)

# Ingredient.create(name: "lime juice")
# Ingredient.create(name: "sugar")
# Ingredient.create(name: "pisco")
# Ingredient.create(name: "egg white")
# Ingredient.create(name: "angostura bitters")
# Ingredient.create(name: "mint leaves")

# Caipirinha
# Ingredient.create(name: "cachaça")
# Ingredient.create(name: "crushed ice")

# Margarita
# Ingredient.create(name: "salt")
# Ingredient.create(name: "tequila")
# Ingredient.create(name: "cointreau")

# Manhatten
# Ingredient.create(name: "rye whiskey")
# Ingredient.create(name: "sweet vermouth")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "maraschino cherry")
# Ingredient.create(name: "orange peel")

# Negroni
# Ingredient.create(name: "gin")
# Ingredient.create(name: "campari")

# Mohito
# Ingredient.create(name: "white rum")
# Ingredient.create(name: "soda")

# Dark and Stormy
# Ingredient.create(name: "ginger beer")
# Ingredient.create(name: "dark rum")
# Ingredient.create(name: "lime wedge")

# Espresso Martini
# Ingredient.create(name: "espresso")
# Ingredient.create(name: "kahlua")
# Ingredient.create(name: "vodka")
# Ingredient.create(name: "sugar syrup")
# Ingredient.create(name: "coffee beans")

# Tom Collins
# Ingredient.create(name: "lemon juice")
# Ingredient.create(name: "grapefruit wedge")

# Martini
# Ingredient.create(name: "dry vermouth")
# Ingredient.create(name: "olive")
# Ingredient.create(name: "lemon peel")

puts 'Putting cocktails together...'

Cocktail.create(name: "Pisco Sour")
Cocktail.create(name: "Caipirinha")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Manhatten")
Cocktail.create(name: "Negroni")
Cocktail.create(name: "Mohito")
Cocktail.create(name: "Dark and Stormy")
Cocktail.create(name: "Espresso Martini")
Cocktail.create(name: "Tom Collins")
Cocktail.create(name: "Martini")

puts 'Finished!'

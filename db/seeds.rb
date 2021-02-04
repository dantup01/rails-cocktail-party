puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating ingredients...'

INGREDIENTS = ['pisco', 'angostura bitters', 'cachaça', 'tequila', 'cointreau',
               'rhy whiskey', 'sweet vermouth', 'gin', 'campari', 'white rum',
               'dark rum', 'kahlua', 'vodka', 'dry vermouth', 'lime juice', 'sugar', 'egg white', 'crushed ice', 'ice', 'salt',
               'soda', 'ginger beer', 'espresso', 'sugar syrup', 'lemon juice', 'mint leaves', 'maraschino cherry', 'orange peel', 'lime wedge',
               'coffee beans', 'grapefruit wedge', 'olive', 'lemon peel']

INGREDIENTS.each do |a|
  Ingredient.create(name: a.to_s.titleize)
end

puts 'Putting cocktails together...'

Cocktail.create(name: "Pisco Sour", about: "Pisco Sour")
Cocktail.create(name: "Caipirinha", about: "Caipirinha")
Cocktail.create(name: "Margarita", about: "Margarita")
Cocktail.create(name: "Manhattan", about: "Manhattan")
Cocktail.create(name: "Negroni", about: "Negroni")
Cocktail.create(name: "Mojito", about: "Mohito")
Cocktail.create(name: "Dark and Stormy", about: "Dark and Stormy")
Cocktail.create(name: "Espresso Martini", about: "Espresso Martini")
Cocktail.create(name: "Tom Collins", about: "Tom Collins")

puts 'Finished!'

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

MARTINI_METHOD = "1) Fill cocktail shaker with ice cubes \n
2) Slowly pour the gin and vermouth over the ice and let it sit gently until the outside of the shaker is frosted \n
3) Strain the liquid into a Martini glass, excluding the ice cubes \n
4) Garnish with a twist of lemon peel"

ESPRESSO_METHOD = "1) Fill a cocktails shaker with ice cubes before pouring 40ml of espresso, the Kahlua, vodka and sugar syrup over it \n
2) Shake heartily for about 20 seconds \n
3) Open the shaker and use a cocktail sieve to strain the liquid onto a martini glass, excluding the ice cubes \n
4) Float the coffee beans in the centre and serve"

NEGRONI_METHOD = "1) Fill a rocks glass with with ice \n
2) Pour the gin, sweet vermouth and Campari into the glass \n
3) Stir well to mix comments \n
4) Garnish with orange peel"

PISCO_METHOD = "1) Combine the lime juice and sugar in a blender until the sugar is fully dissolved \n
2) Add the Pisco, egg white and ice \n
3) Pour into a glass, add a few drops of bitters and serve immediately"

MARGARITA_METHOD = "1) Prepare a chilled cocktail glass by running the juice from a lime wedge around the rim then upturning the glass onto a plate of salt \n
2) In a cocktail shaker, add the tequila, cointreau and lime juice \n
3) Fill the shaker with ice and shake well \n
4) Strain into the cocktail glass and garnish with a slice of lime"

MOJITO_METHOD = "1) Put the sugar into a tom collins glass \n
2) Cut your lime into quarters, squeeze and drop them into the glass \n
3) Place the mint leaves into the glass \n
4) Use a muddler or spoon to muddle all the ingredients in the glass together \n
5) Add crushed ice to the glass \n
6) Add the rum to the glass \n
7) Fill the glass with soda, stir and serve"

CAIPIRINHA_METHOD = "1) Cut up the lime into four wedges \n
2) Place the wedges of lime in the bottom of a rocks glass and muddle for 15 seconds with the sugar \n
3) Add crushed ice up to the rim of the glass \n
4) Add cachaca and shake thoroughly in a cocktail shaker for 10-15 seconds \n
5) Pour, garnish with mine and enjoy"

COLLINS_METHOD = "1) Fill a tom collins glass 1/4 full with ice cubes \n
2) Add gin, simple syrup and lemon juice to the glass \n
3) Stir to ensure components are mixed \n
4) Garnish with grapefruit slice and maraschino cherry."

MANHATTAN_METHOD = "1) Put the rye, vermouth and bitters into a cocktail shaker \n
2) Add ice and stir \n
3) Pour the mixture through a strainer into a chilled martini glass \n
4) Garnish with a maraschino cherry"

STORMY_METHOD = "1) Pour the ginger beer into an ice-filled glass, follow with the dark rum \n
2) Garnish your Dark and Stormy with a wedge of lime"

Cocktail.create(name: "Classic Martini", about: "Classic Martini", method: MARTINI_METHOD)
Cocktail.create(name: "Pisco Sour", about: "Pisco Sour", method: PISCO_METHOD)
Cocktail.create(name: "Caipirinha", about: "Caipirinha", method: CAIPIRINHA_METHOD)
Cocktail.create(name: "Margarita", about: "Margarita", method: MARGARITA_METHOD)
Cocktail.create(name: "Manhattan", about: "Manhattan", method: MANHATTAN_METHOD)
Cocktail.create(name: "Negroni", about: "Negroni", method: NEGRONI_METHOD)
Cocktail.create(name: "Mojito", about: "Mojito", method: MOJITO_METHOD)
Cocktail.create(name: "Dark and Stormy", about: "Dark and Stormy", method: STORMY_METHOD)
Cocktail.create(name: "Espresso Martini", about: "Espresso Martini", method: ESPRESSO_METHOD)
Cocktail.create(name: "Tom Collins", about: "Tom Collins", method: COLLINS_METHOD)

puts 'Finished!'

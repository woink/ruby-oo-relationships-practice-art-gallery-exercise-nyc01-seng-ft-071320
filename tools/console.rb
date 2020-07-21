require_relative '../config/environment.rb'

bob = Artist.new("Bob Ross", 40)
pablo = Artist.new("Pablo Picasso", 50)
van = Artist.new("Van Gogh", 40)

louvre = Gallery.new("Louvre", "Paris")
karen = Gallery.new("Karen's House", "Boston")
moma = Gallery.new("MoMA", "New York City")

mona = Painting.new("Mona Lisa", 12000000, pablo, louvre)
trees = Painting.new("Happy Trees", 20, bob, karen)
les = Painting.new("Les Demoiselles d'Avignon", 20000000, pablo, moma)
starry = Painting.new("Starry Night", 20000000, van, moma)



binding.pry

puts "Bob Ross rules."

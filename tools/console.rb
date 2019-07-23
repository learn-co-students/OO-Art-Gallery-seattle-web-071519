require_relative '../config/environment.rb'

a1 = Artist.new("Van Gogh", 5)
a2 = Artist.new("Picasso", 2)
a3 = Artist.new("Frida Kahlo", 4)
a4 = Artist.new("Da Vinci", 10)

g1 = Gallery.new("Posh Shit", "London")
g2 = Gallery.new("Hipster Shit", "Portland")

p1 = Painting.new("thing", 200, a1, g1)
p2 = Painting.new("thingy", 150, a1, g1)
p3 = Painting.new("doohickey", 45, a2, g1)
p4 = Painting.new("gizmo", 500, a4, g1)
p5 = Painting.new("ART", 160, a3, g2)
p6 = Painting.new("dogs", 1200, a3, g1)
p7 = Painting.new("cats", 175, a2, g2)
p8 = Painting.new("stars", 245, a3, g2)
p9 = Painting.new("rabbits", 6000, a2, g2)



binding.pry

puts "Bob Ross rules."

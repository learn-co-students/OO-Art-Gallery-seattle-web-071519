require_relative '../config/environment.rb'

artist1 = Artist.new("Bob", 10)
artist2 = Artist.new("Joe", 5)
artist3 = Artist.new("Jim", 3)

gallery1 = Gallery.new("Chicago Gallery", "Chicago")
gallery2 = Gallery.new("New York Gallery", "New York")
gallery3 = Gallery.new("Seattle Gallery", "Seattle")

painting1= Painting.new( "mona lisa", 60000, artist1, gallery1)
painting2= Painting.new("ex painting", 20, artist2, gallery2)
painting3= Painting.new("a title", 100, artist3 , gallery3)









binding.pry

puts "Bob Ross rules."

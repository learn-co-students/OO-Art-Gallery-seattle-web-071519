require_relative '../config/environment.rb'


artist_one = Artist.new("Andrew", 16)
artist_two = Artist.new("Jessica", 5)
artist_three = Artist.new("Juan", 100)

gallery_one = Gallery.new("Fs", "NYC")
gallery_two = Gallery.new("LACMA", "LA")


painting_one = Painting.new("Blah", 100, gallery_one, artist_one)
painting_two = Painting.new("Hi", 10000, gallery_two, artist_three)
painting_three = Painting.new("Test", 950, gallery_two, artist_two)
painting_four = Painting.new("Abba", 200, gallery_one, artist_one)
painting_five = Painting.new("Frank", 250, gallery_one, artist_one)
painting_six = Painting.new("Yes", 200000, gallery_two, artist_three)
painting_seven = Painting.new("No", 25, gallery_one, artist_one)



binding.pry

puts "Bob Ross rules."

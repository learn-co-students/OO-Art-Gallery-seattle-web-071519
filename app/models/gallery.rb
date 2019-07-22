class Gallery

  # attr_accessor :painting, :artist
  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
  end
#array of all galleries:
  def self.all
    @@all 
  end
#array of all paintings in gallery
  def paintings
    Painting.all.select do |a|
      a.gallery == self
    end
  end

  #array of all artists that have a painting
  #in a gallery
  def artists
    paintings.collect do |p|
      p.artist  
    end
  end
#array of the names of 
#all artists that have a painting in a gallery
  def artist_names
    artists.collect do |n|
      n.name 
    end
  end
#use #total_price Painting instance method to 
#find most expensive...
  def most_expensive_painting
    Painting.all.
  end

end

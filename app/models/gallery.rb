class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    #returns arrays of all paintings in a gallery
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    #returns an array of all artists with a painting in the gallery
    self.paintings.collect do |painting|
      painting.artist
    end.uniq
  end

  def artist_name
    self.artists.collect do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    expensive = 0
    most = {}
    self.paintings.each do |painting|
      if painting.price > expensive
        expensive = painting.price
        most = painting
      end
    end
    most
  end

end

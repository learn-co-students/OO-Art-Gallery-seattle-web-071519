class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end


  def Gallery.all
    @@all
  end

  def paintings
    # Returns an array of all paintings in a gallery
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    # Returns an array of all artists that have a painting in a gallery
    artists = self.paintings.collect do |painting|
      painting.artist
    end
    artists.uniq
  end 

  def artist_names
    # Returns an array of the names of all artists that have a painting in a gallery
    self.artists.collect do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    # Returns an instance of the most expensive painting in a gallery
    self.paintings.max_by do |painting|
      painting.price
    end
  end

end

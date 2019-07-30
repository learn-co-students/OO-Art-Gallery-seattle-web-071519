class Gallery

  attr_reader :name, :city
  @@all=[]
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paint|
      paint.gallery == self
    end
  end

  def artists_all
    self.paintings.collect do |paint|
      paint.artist
    end
  end

  def artists
    artists_all.uniq
  end

  def artists_names
    artists.name
  end

  def most_expensive_painting
    paintings.max_by do |paint|
      paint.price
    end
  end

end

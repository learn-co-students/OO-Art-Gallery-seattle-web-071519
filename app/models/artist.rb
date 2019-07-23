class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def Artist.all
    @@all
  end

  def paintings
  # Returns an array all the paintings by an artist
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
  # Returns an array of all the galleries that an artist has paintings in
    galleries = self.paintings.collect do |painting|
      painting.gallery
    end
    galleries.uniq
  end

  def cities
  # Return an array of all cities that an artist has paintings in
    self.galleries.collect do |gallery|
      gallery.city
    end
  end

  def Artist.total_experience
  # Returns an integer that is the total years of experience of all artists
    list = Artist.all.collect do |artist|
      artist.years_experience
    end
    list.sum
  end


  def Artist.most_prolific
    # Returns an instance of the artist with the highest amount of paintings per year of experience.
    Artist.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end

  def create_painting(title, price, gallery)
    # Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end

end

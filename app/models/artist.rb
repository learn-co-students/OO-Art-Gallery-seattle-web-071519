class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    #get paintings by this artist
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  #helper method to use later on with most_prolific class method
  def painting_count
    self.paintings.length
  end

  def galleries
    #get galleries with this artist's paintings
    self.paintings.collect do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    #get cities that this artist has paintings in
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    self.all.map do |artist|
      artist.years_experience
    end.sum
  end

  def self.most_prolific
    most_painting_count = 0
    painter = {}
    self.all.each do |artist|
      if artist.painting_count > most_painting_count
        most_painting_count = artist.painting_count
        painter = artist
      end
    end
    painter
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price, gallery, self)
  end

end

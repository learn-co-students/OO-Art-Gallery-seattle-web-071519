class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  #adding in gallery and artist at initialization to keep track
  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    #returns an integer = to the total price if all paintings
    self.all.map do |painting|
      painting.price
    end.sum
  end

end

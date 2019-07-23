class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end


  def Painting.all
    @@all
  end

  def Painting.total_price
  # Returns an integer that is the total price of all paintings
    prices = Painting.all.collect do |painting|
      painting.price
    end
    prices.sum
  end

end

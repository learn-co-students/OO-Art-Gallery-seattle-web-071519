class Painting

  attr_accessor :gallery, :artist
  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end
#returns arry of all the paintings evAR
  def self.all
    @@all
  end
#returns integer 
#that is the total price of all paintings
  def total_price
    painting_prices = []
    total_price = 0
    self.all.select do |p|
      if p.price == self
      painting_prices = p.price
      total_price = painting_price.sum
      end
    end
    total_price
  end

end

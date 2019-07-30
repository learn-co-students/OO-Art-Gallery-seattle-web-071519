require "pry"
class Painting

  attr_accessor :gallery, :artist
  attr_reader :title, :price

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end
#returns array of all the paintings evAR
  def self.all
    @@all
  end
#returns integer 
#that is the total price of all paintings

  def self.total_price
    total = 0
    self.all.each do |p|
      total += p.price
      # total = total + p.price
    end
    total
  end
end

class Artist

  attr_accessor :gallery
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end

  def self.all
    @@all
  end
#returns arry of paintings done by an artist:
  def paintings
    Painting.all.select do |p|
      p.painting == self
      #where .painting?
    end

  def galleries
    Gallery.all.select do |p|
      p.gallery == self
      #where .galleries?
    end
  end

end

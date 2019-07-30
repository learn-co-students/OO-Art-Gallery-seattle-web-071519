class Artist
  @@all = []
  attr_accessor :gallery, :painting
  attr_reader :name, :years_experience
  

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
   @@all
  end

#returns array of paintings done by an artist:
  def paintings #.select works here too! what is the difference?!
    Painting.all.find_all do |p|
      p.artist == self
    end
  end
#an array of all the galleries that 
#an artist has paintings in
#invoke previous method!
 def galleries
  self.paintings.collect do |p|
    p.gallery 
    end
  end
#Return an array of all cities that 
#an artist has paintings in
#INVOKE PREVIOUS METHOD!
  def cities
    self.galleries.collect do |c|
      c.city
    end
  end
#Returns an integer that is 
#the total years of experience of all artists
  def self.total_experience
    self.all.collect {|a|
      a.years_experience}.sum
  end
#Returns an instance of the artist with the highest 
#amount of paintings per year of experience.
#amount of paintings/year
#total paintings of an artist for each artist
#total years_experience for each artist
#sum.to_f for total of each^
#max_by ^
  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end
#Given the arguments of `title`, `price` and `gallery`, 
#creates a NEW PAINTING belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end

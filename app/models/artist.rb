class Artist

  attr_reader :name, :years_experience
  @@all=[]
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def gallery
    paintings.collect do |paint|
      paint.gallery
    end
  end

  def galleries
    gallery.uniq
  end

  def cities
    gallery.collect do |gal|
      gal.city
    end
  end

  def self.total_experience
    all_years= @@all.collect do |years|
      years.years_experience
    end
    all_years.sum
  end

  
      


  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.length/artist.years_experience
    end
  end
  #found by looking at solutions
  #per artist:
        #count paintings
        #years of experience

        #find max out of that array


        def create_painting
          Painting.new(title, price, self, gallery)
        end

end


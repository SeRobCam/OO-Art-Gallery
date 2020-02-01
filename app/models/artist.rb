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
    Painting.all.select { |paint| paint.artist == self }
  end

  def galleries 
    paintings.map { |paint| paint.gallery }
  end

  def cities 
    galleries.map { |gal| gal.city }
  end
  
  def self.total_experience 
    self.all.map { |art| art.years_experience }.sum
  end
  
  def self.most_prolific 
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end

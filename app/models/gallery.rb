class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all 
    @@all 
  end

  def paintings 
    Painting.all.select { |paint| paint.gallery == self }
  end

  def artists 
    paintings.map { |paint| paint.artist }
  end 

  def artist_name 
    artists.map { |art| art.name }
  end

  def most_expensive_painting(price)
    paintings.max_by do |painting|
      painting.price
      #binding.pry
    end
  end


end

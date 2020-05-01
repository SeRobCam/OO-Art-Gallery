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

  #Returns an `array` of all paintings in a gallery
  def paintings 
    Painting.all.select { |paint| paint.gallery == self }
  end

  #Returns an `array` of all artists that have a painting in a gallery
  def artists 
    paintings.map { |paint| paint.artist }
  end 

  #Returns an `array` of the names of all artists that have a painting in a gallery
  def artist_name 
    artists.map { |art| art.name }
  end

  #Returns an `instance` of the most expensive painting in a gallery
  def most_expensive_painting(price)
    paintings.max_by do |painting|
      painting.price
      #binding.pry
    end
  end


end

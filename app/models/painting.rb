class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all 
    @@all 
  end

  #Returns an `integer` that is the total price of all paintings
  def self.total_price 
    self.all.map { |paint| paint.price }.sum
  end

end

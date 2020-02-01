require_relative '../config/environment.rb'


a1=Artist.new("John McCain", 10)
a2=Artist.new("Michael Moore", 5)
a3=Artist.new("Susan Connor", 8)

g1=Gallery.new("Luxury Gallery", "London")
g2=Gallery.new("Pretty Gallery", "Berlin")
g3=Gallery.new("Best Gallery", "Paris")

p1=Painting.new("title 1", 1000, a1, g1)
p2=Painting.new("title 2", 2000, a2, g2)
p3=Painting.new("title 3", 750, a3, g3)
p4=Painting.new("title 4", 4000, a1, g2)
p5=Painting.new("title 5", 2460, a2, g1)



binding.pry

puts "Bob Ross rules."

ladies = [
  {name: "Buffy Summers",
  show: "Buffy the Vampire Slayer",
  year: 1997,
  network: "The WB"},

  {name: "Veronica Mars",
  show: "Veronica Mars",
  year: 2006,
  network: "The WB/UPN"},

  {name: "Rory Gilmore",
  show: "Gilmore Girls",
  year: 2002,
  network: "The WB"},

  {name: "Tami Taylor",
  show: "Friday Night Lights",
  year: 2006,
  network: "Fox"}
]


class WomanOfTV
  attr_accessor :name, :show, :year, :network
  def initialize(hash)
    @name = hash[:name]
    @show = hash[:show]
    @year = hash[:year]
    @network = hash[:network]
  end
end


tv_ladies = []

ladies.each do |hash|
  lady = WomanOfTV.new(hash)
  puts lady
  puts lady.name
  tv_ladies.push(lady)
end

puts
tv_ladies.each do |lady|
  puts lady.name
end

puts

puts "Adding Starbuck now . . . "
puts

tv_ladies.push(WomanOfTV.new name: "Starbuck", show: "Battlestar Gallactica", year: 2004, network: "UPN")
tv_ladies.each do |lady|
  puts lady.name
end

puts
puts "Who would you like to add?"
input = gets.chomp
new_lady = WomanOfTV.new name: input
puts "And what show is she on?"
show = gets.chomp
new_lady.show = show
puts "What year did that show air?"
year = gets.chomp
new_lady.year = year.to_i
puts "What network was it on?"
net = gets.chomp
new_lady.network = net
tv_ladies.push(new_lady)

tv_ladies.each do |lady|
  puts lady.name
end

#require 'pry-byebug'

@pl_key_index = ["a10", "a9", "a8", "a7", "a6", "a5", "a4", "a3", "a2", "a1", "c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "c9", "c10", "b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8", "b9", "b10"]

def product_search
  product_list = { "a1" => "needle", "a2" => "stop sign", "a3" => "blouse", "a4" => "hanger", "a5" => "rubber duck", "a6" => "shovel", "a7" => "bookmark", "a8" => "model car", "a9" => "glow stick", "a10" => "rubber band", "b1" => "tire swing", "b2" => "sharpie", "b3" => "picture frame", "b4" => "photo album", "b5" => "nail filer", "b6" => "tooth paste", "b7" => "bath fizzers", "b8" => "tissue box", "b9" => "deodorant", "b10" => "cookie jar", "c1" => "rusty nail", "c2" => "drill press", "c3" => "chalk", "c4" => "word search", "c5" => "thermometer", "c6" => "face wash", "c7" => "paint brush", "c8" => "candy wrapper", "c9" => "shoe lace", "c10" => "leg warmers" } 

  puts "Please enter the Product names you wish to search for, seperated by commas!"
  input = gets.chomp.downcase

  input = input.split(", ")

  product_ids = input.map { |s| product_list.key(s) }

  product_indexes = product_ids.map { |s| @pl_key_index.index(s) }.sort

  distance = product_indexes.last - product_indexes.first

  product_ids.each do |id|
    puts "Product: #{product_list[id]}, has ID of #{id}"
  end

  puts "The distance between the farthest apart bays is... #{distance}!"

end
# binding.pry
def bay_id_search

  product_list = { "needle" => "a1", "stop sign" => "a2", "blouse" => "a3", "hanger" => "a4", "rubber duck" => "a5", "shovel" => "a6", "bookmark" => "a7", "model car" => "a8", "glow stick" => "a9", "rubber duck" => "a10", "tired swing" => "b1", "sharpie" => "b2", "picture frame" => "b3", "photo album" => "b4", "nail filer" => "b5", "tooth paste" => "b6", "bath fizzers" => "b7", "tissue box" => "b8", "deodrant" => "b9", "cookie jar" => "b10", "rusty nail" => "c1", "drill press" => "c2", "chalk" => "c3", "word search" => "c4", "thermometer" => "c5", "face wash" => "c6", "paint brush" => "c7", "candy wrapper" => "c8", "shoe lace" => "c9", "leg warmers" => "c10" }

  puts "Please enter the Bay IDs you wish to search for, seperated by commas!"
  input = gets.chomp.downcase

  input = input.split(", ")

  product_names = input.map { |s| product_list.key(s) }

  product_indexes = input.map { |s| @pl_key_index.index(s) }.sort

  distance = product_indexes.last - product_indexes.first

  product_names.each do |id|
    puts "ID: #{product_list[id]}, represents the product: #{id}"
  end

  puts "The distance between the farthest apart bays is... #{distance}!"

end

puts `clear`
puts "Warehouse Picker Application"
puts "How do you want to search? Product or Bay ID"
search = gets.chomp.downcase

case search
when "product" then product_search
when "bay id" then bay_id_search
end
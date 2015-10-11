#require 'pry-byebug'

product_list = { "a1" => "needle", "a2" => "stop sign", "a3" => "blouse", "a4" => "hanger", "a5" => "rubber duck", "a6" => "shovel", "a7" => "bookmark", "a8" => "model car", "a9" => "glow stick", "a10" => "rubber band", "b1" => "tire swing", "b2" => "sharpie", "b3" => "picture frame", "b4" => "photo album", "b5" => "nail filer", "b6" => "tooth paste", "b7" => "bath fizzers", "b8" => "tissue box", "b9" => "deodorant", "b10" => "cookie jar", "c1" => "rusty nail", "c2" => "drill press", "c3" => "chalk", "c4" => "word search", "c5" => "thermometer", "c6" => "face wash", "c7" => "paint brush", "c8" => "candy wrapper", "c9" => "shoe lace", "c10" => "leg warmers" }

pl_key_index = ["a10", "a9", "a8", "a7", "a6", "a5", "a4", "a3", "a2", "a1", "c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "c9", "c10", "b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8", "b9", "b10"]

def final_statement
  "The distance between the farthest apart bays is... #{@distance}! And you need to visit them in this order: #{@product_order}"
end

puts `clear`
puts "Warehouse Picker Application"
puts "Enter the Product names OR Bay IDs you wish to search for, seperated by a comma."

search = gets.chomp.downcase

search = search.split(", ")

if
  product_names = search.map { |s| product_list["#{s}"] }
    product_indexes = search.map { |s| pl_key_index.index(s) }.sort
      @product_order = product_indexes.map { |s| pl_key_index[s] }
        @distance = product_indexes.last - product_indexes.first
          product_names.each do |id|
            puts "ID: #{product_list.key(id)}, represents the product: #{id}"
          end
          puts final_statement
  else
  product_ids = search.map { |s| product_list.key(s) }
    product_indexes = product_ids.map { |s| pl_key_index.index(s) }.sort
      @product_order = product_indexes.map { |s| pl_key_index[s] }
        @distance = product_indexes.last - product_indexes.first
          product_ids.each do |id|
            puts "Product: #{product_list[id]}, has the ID: #{id}"
          end

          puts final_statement
end
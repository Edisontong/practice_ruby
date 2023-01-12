require "./product.rb"
require "./food.rb"
require "./store_module.rb"

shopper1 = Product.new({ name: "yoyo", color: "red", price: "$1.50" })
shopper2 = Food.new({ shelf_life: "1 month", name: "apple", color: "green", price: "$0.50" })
puts shopper1.name
puts shopper1.color
puts shopper1.price
shopper1.info

puts shopper2.name
puts shopper2.color
puts shopper2.price
puts shopper2.shelf_life
shopper2.info
shopper2.nutrition

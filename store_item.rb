class Product
  attr_reader :name, :color, :price

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def info
    puts "this shopper bought a #{@color} #{@name} that costs #{@price}."
  end
end

class Food < Product
  attr_reader :shelf_life
  attr_writer :shelf_life

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
    @shelf_life = input_options[:shelf_life]
  end
end

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

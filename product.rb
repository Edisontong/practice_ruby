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
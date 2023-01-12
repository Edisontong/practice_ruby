require "./product.rb"

class Food < Product
  attr_reader :shelf_life
  attr_writer :shelf_life
  include Edible

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
    @shelf_life = input_options[:shelf_life]
  end
end

# @score = 0
# @game = []
# @frame = []
# @index = 0
# @round = 1

# def roll
#   puts "Roll 1:"
#   @roll = gets.chomp.to_i
#   if @roll == 10
#     @frame << @roll
#     @frame << 0
#   else
#     @frame << @roll
#     puts "Roll 2:"
#     @roll = gets.chomp.to_i
#     @frame << @roll
#   end
#   @game << @frame
#   p @game
# end

# def score
#   @score = @score + @frame[0] + @frame[1]
# end

# 10.times do
#   puts "FRAME: #{@index}"
#   roll

#   score
#   puts "TOTAL: #{@score}"
# end

@score = []

def roll
  puts "First roll:"
  roll1 = gets.chomp.to_i
  if roll1 == 10
    @score << [roll1]
  else
    puts "Second roll:"
    roll2 = gets.chomp.to_i
    @score << [roll1, roll2]
  end
end

def score
  index = 0
  while index < @score.length
    if @score[index][0] == 10
    end
    index += 1
  end
end

10.times do
  roll
  p @score
end

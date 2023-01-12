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
  if @score.length == 9
    if roll1 == 10
      puts "Second roll:"
      roll2 = gets.chomp.to_i
      puts "Third roll:"
      roll3 = gets.chomp.to_i
      @score << [roll1, roll2, roll3]
    end
  elsif roll1 == 10
    roll2 = 0
    @score << [roll1]
  else
    puts "Second roll:"
    roll2 = gets.chomp.to_i
    if roll1 + roll2 == 10
      puts "Third roll:"
      roll3 = gets.chomp.to_i
      @score << [roll1, roll2, roll3]
    else
      @score << [roll1, roll2]
    end
  end
end

def score
  total = 0
  index = 0
  while index < @score.length - 1
    if @score[index].length == 2
      total = total + @score[index][0] + @score[index][1]
    else
      total = total + @score[index][0]
      if @score[index + 1].length == 2
        total = total + @score[index + 1][0] + @score[index + 1][1]
      else
        total = total + @score[index + 1][0] + @score[index + 2][0]
      end
    end
    index += 1
  end
  p total
end

10.times do
  roll
  p @score
end

score

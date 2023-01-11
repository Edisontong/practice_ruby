table = TTY: :Table.new(["header1","header2","header3","header4","header5"], [["a1", "a2", "a3", "a4", "a5"], ["b1", "b2", "b3", "b4", "b5"]])

puts table.render(:ascii)

puts "[C]reate  [R]ead  [U]pdate  [D]elete  [Q]uit:"
option = gets.chomp.upcase
if option == "C"
  puts "First_name:"
  first_name = gets.chomp
  puts "Last_name"
  last_name = gets.chomp
  puts "salary"
  salary = gets.chomp.to_i
  status = "true"
elsif option == "R"
  puts "Employee id:"
  id = gets.chomp
elsif option == "U"
  puts "Employee id:"
  id = gets.chomp
elsif option == "D"
  puts "Employee id:"
  id = gets.chomp
elsif option == "Q"
  puts "Goodbye!"
end

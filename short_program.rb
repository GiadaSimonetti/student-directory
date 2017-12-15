def name
  puts "What's your name?"
  name = gets.chomp
  puts "So your name is #{name}."
  puts "Hi, #{name}!"
end

name

# puts $0

puts __FILE__
# puts File.dirname(__FILE__)
# puts File.basename(__FILE__)

# Full Name Greeting

puts 'Hello there, what\'s your first name?'
firstname = gets.chomp

puts 'Cool! Great to meat you ' + firstname + '. What\'s your middle name?'
middlename = gets.chomp

puts middlename + '? That\'s also nice. What\'s your last name?'
lastname = gets.chomp

puts firstname + ' ' + middlename + ' ' + lastname + '! What a phenomenal name!! Great to meet you! ;)'

# some space
puts ' '
puts ' '

# Bigger, better favorite number

puts 'What\'s your favorite number?'
favnum = gets.chomp

puts favnum + '? Great choice...'

betnum = favnum.to_i + 1

puts "But do you know what would be even cooler? A bigger, better number like " + betnum.to_s




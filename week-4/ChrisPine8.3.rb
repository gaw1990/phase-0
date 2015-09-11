inputs = []

puts "Type as many words as you'd like, input them with the enter key."
puts "Hit enter on a blank input to finish"

puts "Input a word:" 
word = gets.chomp.to_s

while word != '' do 
	inputs.push word
	puts "Type your next word:" 
	word = gets.chomp.to_s
end

puts "Here is a sorted list of your words:"
inputs.sort.each do |x|
	print x + ', ' 
end




	

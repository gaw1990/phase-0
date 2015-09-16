bobolinks_list = ["Aji Slater", "Alex Jamar", "Alison Lyons", "Aurelio Garcia", "Awilda Cantres", "Celeste Carter", "Christopher Mark", "CJ Joulain", "Colin Razevich", "David O'Keefe", "Eric Shou", "Eunice Choi", "Farman Pirzada", "George Wambold", "Hana Worku", "Harmin Jeong", "Hector Jair Moreno Gomez", "Ian Lockwood", "Irina Renteria", "Jamie Runyan", "Jenna Andersen", "Julian Lesse", "Jupiter Baudot", "Kai Huang", "Kim Allen", "Kristie Chow", "Landey Patton", "Lauren Jin", "Lauren Markzon", "Marcel Galang",	"Marcus Davis",	"Marvy Tagala",	"Michael Landon", "Michael Silberstein", "Miguel Melendez", "Mike Cerrone", "Nathan Park", "Nicholas Yee", "Ovi Calvo", "Pamela Antonow", "Paul Etscheit", "Regina Compton", "Richard Leo", "Ricky Binhai Hu", "Rosslyn Sinclair-Chin", "Ryan Lesson", "Salim Rahimi", "Sam Purcell", "Shawn Watson", "Shunqian Luo", "Solomon Fernandez","Un Choi", "Zino Hu"]

ary = (0..10).to_a
list_ary = []
	ary.take(6).each_slice(3) { |x|
	list_ary << [x]
	}
	print list_ary

	#bobolinks_list.drop(3).each_slice(4) { |x|
	#ary << [x]
	#}

	#print ary


=begin
ary = (0..100).to_a

ary.each do |x|
if x % 4 >= 3 || x % 4 == 0
puts "#{x} ok"
elsif x % 5 >= 3 || x % 5 == 0
puts "#{x} ok"
elsif x % 3 == 0
puts "#{x} ok"
else 
puts "#{x} failed"
end
end

=begin
LIST OF BAD NUMS
1
2
6
17

21 15
22 16
26 20
37 31

41
42
46
57

61
62
66
77

81
82
86
97

	
=end
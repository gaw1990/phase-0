class NameData
	attr_reader :name

	def initialize
		@name = "George Wambold"
	end
	
end

class Greetings

	def initialize
		@name_data = NameData.new
	end

	def greet
		puts "Hello #{@name_data.name}!"
	end

end

test = Greetings.new

test.greet

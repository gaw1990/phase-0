l# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 
# ============================================================
 array[1][1][2][0]
 array.at(1).at(1).at(2).at(0)
 array.fetch(1).fetch(1).fetch(2).fetch(0)
# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
hash.fetch(:outer).fetch(:inner).fetch("almost").fetch(3)


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 
# ============================================================
nested_data.fetch(:array).fetch(1).fetch(:hash)


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
#               0     1           2       3
number_array = [5, [10, 15], [20,25,30], 35]
# 				0	0    1    0   1  2    0    
# ============================================================

def go(array)
	array.map! do |element|
 		if element.kind_of?(Array)
   			element.map {|inner| inner + 5}
 		else
     		element + 5
 		end
	end

end


# ============================================================


# Bonus:
def ly(array)
	array.map! do |element|
 		if element.kind_of?(String)
   			element.to_s.concat("ly")
 		elsif element.kind_of?(Array)
     		element.map! { |inner| 
     			if inner.kind_of?(Array)
     				inner.map! {|double_inner|
     				double_inner.to_s.concat("ly")}
     			else inner.to_s.concat("ly")
     			end }
 		end
	end
end

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=begin
  
What are some general rules you can apply to nested arrays?
They're an excellent way to store three dimensional data sets. I'm not
sure exactly what this question is asking. I guess you could say they're
all nested arrays are arrays. All nested arrays are accessable by index.

What are some ways you can iterate over nested arrays?
You can use the same methods you use to iterate over non-nested array like
.map, .each, .select, .collect. You can tell ruby to iterate and dig into a 
deeper array if the object it iterates over is an array, not an simple ojbect.

Did you find any good new methods to implement or did you re-use one you 
were already familiar with? What was it and why did you decide that was 
a good option?
We used .fetch for the first time and it was definitely a good option. 
Partially because it's so easy to understand and also becuase it returns
an error instead of nil when it's aimed at an empty array index. We used 
.map a bunch in 5.4 so it wasn't new, but it worked well for this challenge.
It gave us a destructive iteration tool. 


  
=end


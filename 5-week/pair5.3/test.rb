


def mode(array)
	freq_hash = array.group_by {|x| x}
	result_hash = {}

#freq_hash == {4=>[4, 4], 5=>[5, 5, 5], 6=>[6, 6, 6], 7=>[7]}

	freq_hash.each_pair do |key, value|
		value_new = value.count
		result_hash.store(key, value_new)

	end
# result_hash == {4=>2, 5=>3, 6=>3, 7=>1}

highest_freq = result_hash.max_by {|k, v| v}[1]

final_array = []

result_hash.each do |key, value|
	if value == highest_freq
	final_array.push(key)
	end

end
puts final_array
end




# Part 3

def is_name_in_array(names, name)
	
	names.each do |word|
		if word == name
			puts "found in array 1"
			break
		end
	end
	
	
	if names.include?(name)
		puts "found in array 2"
	end
end


# call the method
is_name_in_array(["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"], "carl")
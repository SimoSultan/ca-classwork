numbers = [4, 5, 3, -7, 20, 0, 5]
value = 5

# Part 1: Your code here

for num in numbers
	if num == value
		puts "Found in array"
		break
	else 
		next
	end
end


# Part 2: Your code here

if numbers.include?(value)
	puts "found in array"
end

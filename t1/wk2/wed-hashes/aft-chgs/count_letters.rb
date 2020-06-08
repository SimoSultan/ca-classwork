def count_letters(string)
	# Your code here
	arr = string.chars
	count = {}
	for l in arr
		next if l == ' '
		count[l] = arr.count(l)
		# count["h"] = 1
		# count[l.to_sym] = arr.count(l)
		# count[:h] = 1

	end
	
	puts count
	# return count
end

count_letters('hello')
count_letters('Thats the Ticket')
count_letters('')
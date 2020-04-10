def likes(arr)
	case 
		when arr.length < 1
			puts "No one likes this."
		when arr.length == 1
			puts "#{arr[0]} likes this."
		when arr.length == 2
			puts "#{arr[0]} and #{arr[1]} like this."
		when arr.length == 2
			puts "#{arr[0]} and #{arr[1]} like this."
		when arr.length == 3
			puts "#{arr[0]}, #{arr[1]} and #{arr[2]} like this."
	else
		puts "#{arr[0]}, #{arr[1]} and #{arr.length - 2} others like this."
	end
end

#QUESTION: what is a best practice or advanced (but not overly complex that it wouldn't be used due to readability) way of doing this above?
	
likes([])
likes(["Peter"])
likes(["Jacob", "Alex"])
likes(["Max", "John", "Mark"])
likes(["Alex", "Jacob", "Mark", "Max"])

# =========================================================================================
# My solution : Varsha
def likes(arr)
    l = arr.length
    puts "No one likes this." if l < 1
    puts arr[0] += " likes this" if l == 1
    puts "#{arr[0]} and #{arr[1]} like this." if l == 2
    puts "#{arr[0]} , #{arr[1]} and #{arr[2]} like this." if l == 3
	puts "#{arr[0]} , #{arr[1]} and #{arr.length - 2} others like this." if l > 3
end

likes([])
likes(["Peter"])
likes(["Jacob", "Alex"])
likes(["Max", "John", "Mark"])
likes(["Alex", "Jacob", "Mark", "Max"])

# =========================================================================================





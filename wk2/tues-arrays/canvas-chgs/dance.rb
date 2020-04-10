puts "Please provide a list of dance moves. i.e. move, move, move"
list = gets.strip.downcase.split(', ')

list.uniq!.map!(&:capitalize)

puts "#{list}"

# QUESTION: what would be one of the better ways to ask a user for a list of something?
	# my guess is to have them input something one at a time to avoid having to look for a range of different
	# scenarios as to how they might separate their items.
		# could use regex above to split their separators though...


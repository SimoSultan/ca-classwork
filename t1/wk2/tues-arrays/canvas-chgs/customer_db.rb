i = 0
names = []

for i in 1..10

	puts "What's your first name?"
	first = gets.strip.capitalize!
	# first.capitalize! unless Integer(first) rescue nil
	
	puts "What's your last name?"
	last = gets.strip.capitalize!

	name = "#{first} #{last}"

	puts "Hello #{name}!"

	names.push(name)
	i += 1
	
end

puts "#{names}"

# QUESTION: if user types in an integer as first char, capitalize doesn't work
# is it best to just use validate this or is there another option?
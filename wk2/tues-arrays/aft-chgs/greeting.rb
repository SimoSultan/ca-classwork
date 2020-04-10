names = ["Bob", "Charlie", "Lin", "Nands", "Rachel", "Ben", "Isaac", "Hugh", "Ashley", "Brendon"]


puts "FOR LOOP"
for name in names
	puts "Welcome #{name}!"
end

puts "   "

puts "WHILE LOOP"
i = 0
while i < names.length
	puts "Welcome #{names[i]}!"
	i += 1
end

puts "   "

puts "EACH LOOP"
names.each do |name|
	puts "Welcome #{name}!"
end
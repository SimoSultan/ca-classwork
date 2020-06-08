list = ['The Martian', 'The Magician', 'Eragon']

list << 'Andy Weir'
list.push('Raymond E. Feist')
list.insert(list.length, 'Christopher Paolini')

list[0] += ": #{list[3]}"
list[1] += ": #{list[4]}"
list[2] += ": #{list[5]}"

list.delete_at(3)
list.delete_at(4)
list.delete_at(5)

puts list

# Q: is this correct? is there a better way to do this?

# Solution : 
# You can try having the authors' names in another array, then use the each_with_index method to join the 2 array elements. Please see the solution below : 

book_names = ['The Martian', 'The Magician', 'Eragon']
author_names = ['Andy Weir','Raymond E. Feist','Christopher Paolini']
book_author_list = Array.new(0)
book_names.each_with_index do |val,index|
	book_author_list[index] = val += ": #{author_names[index]}" 
end

puts book_author_list


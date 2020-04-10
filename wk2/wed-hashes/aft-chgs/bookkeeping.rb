books = []
book1 = {title: 'The Magician', author: 'Andy Weir', year: '1982'}
book2 = {title: 'The Martian', author: 'Raymond E Feist', year: '2011'}
book3 = {title: 'Eragon', author: 'Christopher Paolini', year: '2002'}

books << book1
books.push(book2, book3)

# puts "book array = #{books}"


books.map do |book|
	# puts book
	puts "#{book[:title]} by #{book[:author]} (#{book[:year]})"
end


sorted_books = books.sort_by {|k| k[:year] }

puts sorted_books



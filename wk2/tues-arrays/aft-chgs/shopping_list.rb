# Your code here
shopping_list = ['bread', 'milk', 'eggs', 'cheese', 'crackers']

updated_shopping_list = shopping_list

shopping_list << 'cream'

puts "shoping list = #{shopping_list}"
puts "updated_shopping_list = #{updated_shopping_list}"

updated_shopping_list_2 = updated_shopping_list.dup

updated_shopping_list_2 << 'ice-cream'

updated_shopping_list_2.shuffle!

puts "#{updated_shopping_list_2}"


dictionary = { "one" => 1, "two" => 2, "three" => 3 }
dictionary2 = { "one" => 1, "two" => 2, "three" => 3 }

dictionary.transform_keys! {|k| k.to_sym }
puts "dictionary = #{dictionary}"

dictionary2.transform_keys!(&:to_sym)
puts "dictionary2 = #{dictionary2}"
#why doesn't this work?


new_dictionary = {:four => 5, :five => 6, :six => 4}
new_dictionary[:four] = 4

new_dictionary.each do |k,v|
	new_dictionary[k] = 5 if k == :five
	new_dictionary[k] = 6 if k == :six
end


puts "new_dictionary = #{new_dictionary}"
puts "dictionary :four = #{dictionary[:four]}"

dictionary.merge!(new_dictionary)
puts "dictionary :four = #{dictionary[:four]}"

flipped = dictionary.dup
puts flipped
flipped = flipped.invert
puts flipped

puts "flipped = #{flipped}"
puts flipped[2]





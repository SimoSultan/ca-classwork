require_relative '../../../reusable_code.rb'
include Reusable

#get_ordinal is me mucking around, not part of this challenge

(0..10).reverse_each do |i|
	i == 1 ? (puts "#{i}!"): i == 0 ?(puts "Time is up!!!!") : (puts "#{get_ordinal(i.to_s)}")
	sleep 1

end

eating_in = {:Breakfast => "Yoghurt & Museli", :Lunch => "Sandwich", :Dinner => "Curry & Rice"  }

eating_out = {:Breakfast => 12, :Lunch => 15, :Dinner => 25 }

# eating_in.each do |k, v|
#     puts "The #{k} is #{v}"
# end
eating_in.each do |kvp|
    puts "The pair is #{kvp}"
end

eating_in.map do |k,v|
    puts "The key is #{k}"
	puts "The val is #{v}"
	# puts "The val is #{eating_in[k]}"

end
# is there something else we were supposed to do here?


eating_out.map do |k,v|
	# eating_out[k] = v+=v*0.1
	eating_out[k] = (v*1.1).round(2)
	# eating_out[k] = v*1.1
end

puts "the new prices are #{eating_out}"
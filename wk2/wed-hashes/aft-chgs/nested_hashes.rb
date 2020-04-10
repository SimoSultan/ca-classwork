school_fundraiser = {:cookies => { :chocolate => 4, :plain => 3, :ginger => 4},
                    :pot_plants => { :ficus => 10, :basil => 5, :money_tree => 13},
                    :donations => { :ten => 10, :twenty => 20, :fifty => 50}}

purchased = ["ficus", "money_tree", "chocolate", "chocolate", "chocolate"]



school_fundraiser[:food] = {tacos: 10}
school_fundraiser[:food].store(:coffee, 4)
# puts school_fundraiser[:food]

school_fundraiser[:pot_plants][:money_tree] *= 0.75
puts school_fundraiser[:pot_plants][:money_tree]
# puts school_fundraiser

# testing an idea
# school_fundraiser[:cookies].each { |k,v| k == 'chocolate'.to_sym ? (puts 'hello') : next }


def extra_cookies(purchased, school_fundraiser)
	total = 0
	for item in purchased
		school_fundraiser[:cookies].each { |k,v| k == item.to_sym ? total += v : next}
		school_fundraiser[:pot_plants].each { |k,v| k == item.to_sym ? total += v : next}
		school_fundraiser[:donations].each { |k,v| k == item.to_sym ? total += v : next}
		school_fundraiser[:food].each { |k,v| k == item.to_sym ? total += v : next}
	end
	
	puts "Total spent = $#{total}"
end

#for later: figure out how to use .dig

extra_cookies(purchased, school_fundraiser)


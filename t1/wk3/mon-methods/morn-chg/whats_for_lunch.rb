price = 50
tasty = true

if price >= 50 
	puts "I will never eat a meal as its over 50."
	
elsif price <= 30
	puts "I will eat the meal because it's cheap"
	
else tasty
	puts "I will eat the meal as it is tasty"
end

#EXPERT

if price >= 50 || (price >= 30 && !tasty)
	puts "I won't eat the meal"
else
	puts "I will eat the meal"
end

#SUPER-DUPER-EXPERT

(price >= 50 || (price >= 30 && !tasty)) ? (puts "I won't eat the meal") : (puts "I will eat the meal")
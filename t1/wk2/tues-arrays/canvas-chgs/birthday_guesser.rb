correct = false
quarter = false
birth_month = false
birth_day = false
months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
# days = [1..31]
until correct do
	
	day_range = days.dup
	
	for month in months
		
		puts "Is your birthday in #{month}?"
		resp = gets.strip.downcase[0]
		if resp == 'y'
			birth_month = month
			break
		end
		
		if month == "December"
			puts "Sorry you aren't a real person."
			return
		end
	end
	
	range = false
	
	day_range.map! do |day|
		puts day_range
		puts "Is your birth day in these range of days? (#{day} - #{day + 9})"
		ans = gets.strip.downcase[0]
		if ans == 'y'
			range = day..day+9
			break
		else 
			day_range.drop(10)
		end
	end
	
	
	for i in range
		puts "Is your birth day on the #{get_ordinal_day(i)}?"
		ans = gets.strip.downcase[0]
		if ans == 'y'
			birth_day = i
			break
		end
		
		if i == range[-1]
			puts "Sorry you aren't a real person."
			return
		end
	end
	
	puts "So your birthday is the #{get_ordinal_day(birth_day)} of #{birth_month}?"
	resp = gets.strip.downcase[0]
	
	correct = true if resp == 'y'
end



def get_ordinal_day(int)
	unit = int % 10
	tens = int % 100
	if (unit == 1 && tens != 11)
		return Integer(int) + "st"
	end
	if (unit == 2 && tens != 12)
		return Integer(int) + "nd"
	end
	if (unit == 3 && tens != 13)
		return Integer(int) + "rd"
	end
	return Integer(int) + "th"
	
	# return (Integer(int) + "st") if (unit == 1 && tens != 11)
	# return (Integer(int) + "nd") if (unit == 2 && tens != 12)
	# return (Integer(int) + "rd") if (unit == 3 && tens != 13)
	# return (Integer(int) + "th")
end

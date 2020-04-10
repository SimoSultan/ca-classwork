module Reusable
	
	## DISPLAY A SMALL CHECKING PROGRESS BAR TO USER 
	
	def display_checking
		system "clear"
		print "Checking"
		sleep 0.2; print "."
		sleep 0.2; print "."
		sleep 0.2; print "."
		sleep 0.2; print "."
		sleep 0.2; print "."
		sleep 0.2; print "."
		sleep 0.2; print "."
		sleep 0.5
		system "clear"
	end
	
	
	## GET THE ORDINAL INDICATOR OF AN INTEGER
	
	def get_ordinal(int)
		int.to_i
		unit = int % 10
		tens = int % 100
		
		puts unit
		puts tens
		
		# return ("#{Integer(int)}st") if (unit == 1 && tens != 11)
		# return ("#{Integer(int)}nd") if (unit == 2 && tens != 12)
		# return ("#{Integer(int)}rd") if (unit == 3 && tens != 13)
		# return ("#{Integer(int)}th")
	end
	
	
	## DISPLAY A 10s COUNTDOWN TIMER
	
	def countdown_timer
		system "clear"
		(0..10).reverse_each do |i|
		i == 1 ? (puts "#{i}!"): i == 0 ?(puts "Time is up!!!!") : (puts "#{i}")
		sleep 1
		system "clear"
	end

end

	
end
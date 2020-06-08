def main()
	# link to prompt
	# https://xkcd.com/936/
	
	# ask the user how many words they would like their password to contain
	# ask them that 'n' number of words to put in
	# check to see if any words are the same
	intro()
	puts " "
	
	puts "How many words would you like in your xkcd password?"
	number = gets.strip.to_i
	
	# if number is 0, or if number was a string and converted to integer it will return 0
	if number < 1
		puts "Sorry, this is not a valid entry, starting over."
		sleep 3
		main()
	end
	puts " "
	puts "Your goal is to submit #{number} words for your password."
	
	password_arr = get_words(number)
	password = password_arr.join + rand(10..100).to_s
	
	resp = confirm_pass(password, password_arr)
	
	
	puts " "
	puts "Great! Your password is set as '#{resp}'"
	puts " "

end




def intro()
	system "clear"
	puts "Welcome to the XKCD Password generator."
	puts "*"*42
end



def show_words(arr, number)
	puts "Your list of words so far..."
	puts " "
	
	puts "You have #{arr.length} word/s out of #{number} in your password."
	str = ""
	arr.each do |x|
		str += "#{x}	"
	end
	
	return str
end



def get_words(number_of_words)
	puts number_of_words
	arr = []
	n = 0
	while n < number_of_words
		intro()
		puts show_words(arr, number_of_words)
		puts " "
		puts "Please input your word."
		print "Input: "; word = gets.strip.downcase.capitalize!
		word = validate_word(word, arr)
		if word
			arr << word
			n += 1			
		end
	end
	return arr
end


def validate_word(word, arr)
	if word.empty?
		puts "Your word is empty"
		sleep 2
		return false
	elsif arr.include?(word)
		puts "Sorry your word already exists, please choose another."
		sleep 2
		return false
	end
	
	return word
end



def confirm_pass(password, password_arr)
	
	system "clear"
	puts " "
	puts "Your password is '#{password}'."
	puts " "
	puts "Are you happy with this? y/n"
	resp = gets.strip.downcase[0]
	
	
	system "clear"
	intro()
	puts " "
	puts "Your original password was #{password}"
	
	password = password[0..password.length-3]
	ending_num = password.chars.last(2).join.to_s
	
	if resp == 'n'
		puts " "
		puts "Would you like to [R]efresh and start again? y/n"
		print "Input: "; ans = gets.strip.downcase[0]
		if ans == 'y'
			puts "Ok, starting over..."
			sleep 3
			main()
		end
		
		puts " "
		puts "Would you like to [C]hange a word in your password? y/n"
		print "Input: "; ans = gets.strip.downcase[0]
		if ans == 'y'
			password_arr = change_word(password, password_arr)
			password = password_arr.join
		end
		
		puts " "
		puts "Would you like to [C]hange the number in your password? y/n"
		print "Input: "; ans = gets.strip.downcase[0]
		if ans == 'y'
			ending_num = rand(10..100).to_s
		end	
	end
	
	return password + ending_num
	
end
	


def change_word(original_password, original_arr)

	puts " "
	puts "Which word would you like to change?"
	puts " "
	original_arr.each do |x|
		puts "[#{x[0]}]#{x[1..x.length]}"
	end
	puts " "
	print "Input: "; ans = gets.strip.downcase
	
	ans = validate_searched_word(ans, original_password, original_arr)
	
	puts " "
	puts "What would you like to change this word too?"
	print "Input: "; new_word = gets.strip.downcase.capitalize!
	
	original_arr.map.with_index do |x, idx| 
		if x.downcase == ans
			original_arr[idx] = new_word
		end
	end

	
	return original_arr

end


def validate_searched_word(search, original_password, arr)
	if !arr.include?(search.capitalize)
		puts "Sorry, but '#{search}' is not in '#{original_password}'"
		puts " "
		puts "Which word would you like to change?"
		puts " "
		print "Input: "; search = gets.strip.downcase
		validate_searched_word(search, original_password, arr)
	end
	return search
end

main()
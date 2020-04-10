# UNFINISHED!!!

phonebook = {}

# create a phonebook
# let users view, add and remove entries
# initialyy ask for name and number

# Bonus
# ask a confirmation on removal of a name
# add option to have users submit workplace and/or address
# make sure when viewing the entries it displayed nicely

def phonebook_app
	
	name = get_name
	puts "Hi #{name}, thank you for using this application."
	
	phone = get_phone(true)
	if !validate_phone(phone)
		get_phone(false)
	end
	
end


def get_name
	
	puts "What is your first name?"
	first = gets.strip.capitalize!
	
	puts "What is your last name?"
	last = gets.strip.capitalize!
	
	name = first + " " + last
	return name
end

def get_phone(first_time)
	
	first_time ? (puts "What is your phone number?") : (puts "Sorry, Something went wrong. Can you please enter your phone number again?")
	
	phone = gets.strip
	return phone
end


def validate_phone(phone)
	
	return false if phone.NaN?
	return false if phone.length != 10
	
	return true
end

validate_phone("0449123456")
# phonebook_app


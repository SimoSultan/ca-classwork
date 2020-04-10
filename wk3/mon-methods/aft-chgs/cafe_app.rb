# PROBABLY MY MOST REFINED TERMINAL APP TO DATE


# Implement a simple cafe app with a combination of concepts learnt so far and keeping the code DRY.
# Example: 
# Lattes sell for $4, 
# Scones sell for $5, 
# Tea sells for $3.

# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the final order
#   Print the total bill

# Declare global variables like the 2 hashes : cost_price and item_names which store the price for each item and also the full name of that item
$cost_price = {"l" => 4, "s" => 5, "t" => 3}
$item_names = {"l"=> "Latte", "s"=> "Scone", "t"=> "Tea", "q"=> "Quit"}
$order_hash = {}
$password = "password"


def main()
    # puts "Here is your total bill : #{calculate_total_bill(get_order)}"
	
	quit = false

	until quit
		print_intro()
		resp = user_option()
		case resp
			when "o"
				quit = get_order()
			when "q"
				quit = confirm_quit()
			when "s"
				quit = staff_mode()
		end
	end
	system "clear"
end


def print_options()
    # write the code to print the menu options for the customer to choose from.
	puts "*"*42
	puts " "
	puts "Menu:"
	$item_names.map do |k,v| 
		next if v == 'Quit'
		puts "Item: #{v} 	Price: $#{$cost_price[k]}"
	end
	puts "*"*42
end



def print_order(order_hash)
	# write the code to print the order to show the customer what he/ she has ordered and how much of each.
	puts " "
	puts "Your current order:"
	
	if $order_hash.empty?
		puts "You currently have nothing in your order."
	else
		$order_hash.map do |k,v| 
			puts "x #{v}	#{$item_names[k]} 	= $#{v * $cost_price[k]}"
		end
	end
	
	puts " "
	puts "	Total Bill: $#{calculate_total_bill($order_hash)}"
	
	puts "*"*42
	
	return
end




def get_order()
    # Hint : create a new hash here called order_hash to which you can add the quantities as and when the user inputs them.
    # this method returns the order_hash which is the argument to the calculate_total_bill method.
	system "clear"
	print_intro()
	print_order($order_hash)
	
	quit = false
	until quit

		
		order = ask_order()
		# exit out of app if user wants to quit
		return quit = true if order == "q"
		
		# if they don't want to quit, ask them how much they want to order
		amount = ask_amount()
		puts amount
		# add order to the main has
		$order_hash.key?(order) ? $order_hash[order] += amount : $order_hash[order] = amount
		
	
		system "clear"
		print_intro()
		print_order($order_hash)
		
		quit = follow_up()
	end
	
	system "clear"
	print_order($order_hash)
	puts " "
	puts "Thank you for shopping at Simo_Sultan's Cafe"
	puts "Type [Q]uit to exit."
	print "Input: "; exit = gets.strip.downcase[0]
	exit == "q" ? (return true) : (return false)
			
end



def calculate_total_bill(order_hash)
	# reads the current order
	# returns total as an integer
	# order_hash = {"l" => qty }
	
	total = 0
	order_hash.map do
		|k,v|
		total += $cost_price[k] * v
	end
	
	return total
	
end

		
		
		
def ask_amount()
	
	puts " "
	puts "How many would you like to order?"
	print "Input: "; amount = gets.strip.to_i
	puts " "

	if amount == 0 || Integer(amount) == nil
		puts "Sorry, that is an invalid entry."
		sleep 1
		ask_amount()
	end
		
	return amount
end


	
	
def ask_order()
	
	puts " "
	puts "What would you like to order? Or type 'quit' to exit."
	str = ""
	$item_names.each_value{|v| str+= "[#{v[0]}]#{v[1..v.length]}, " if v != "Quit"}
	puts str.delete_suffix(', ')
	print "Input: "; order = gets.strip.downcase[0]

	# user validate the response, if it is not a valid option, ask them again
	unless order == "l" || order == "t" || order == "s" || $item_names.key?(order)
		puts "Sorry that is not a valid order. Please try again."
		sleep 1
		system "clear"
		print_intro()
		print_order($order_hash)
		ask_order()
	end	
	
	return order
end



def user_option()
	puts " "
	puts "What would you like to do?"
	puts " "
	puts "[O]rder"
	puts "[Q]uit"
	
	print "Input: "; resp = gets.strip.downcase[0]
	puts resp
	
	unless resp == "o" || resp == "q" || resp == "s"
		puts "Invalid entry. Starting again."
		sleep 2
		main()
	end
	
	return resp
end




def follow_up()
	puts "[C]ontinue to order?"
	puts "[F]inished ordering?"

	print "Input: "; resp = gets.strip.downcase[0]
	
	if resp == 'c'
		print_intro()
		print_order($order_hash)
		return
	elsif resp == 'f'
		return true
	else
		puts "Sorry that is not a valid response."
		follow_up()
	end
end




def print_intro()
	system "clear"
	puts "Hi, welcome to Simo_Sultan's Cafe."
	puts " "
	print_options()
end




def confirm_quit()
	
	system "clear"
	puts "Are you sure you want to exit?"
	puts "y/n"
	print "Input: "; ans = gets.strip.downcase[0]
	
	ans == 'y' ? (return true) : (return false)
	
end




def staff_mode()
	# want to show items to edit
	# be able to add/remove items
	# be able to change an item's price
	# exit staff mode
	
	system "clear"
	puts "You're in staff mode now!"
	puts "To continue, please enter password."
	print "Input: "; pass = gets.strip
	
	if pass == $password
		# show items

		exit = false
		until exit
			
		print_staff()
		option = staff_options()
			
			case option
				when "a"
					# add items
					exit = staff_add_item()

				when "r"	
					# remove items
					exit = staff_remove_item()

				when "c"
					# change item prices
					exit = staff_change_price()

				when "e"
					exit = true
			end # of case
			
		end # of until

	else # if
		puts "Access Denied!"
		sleep 3
		return true
	end # of if
	
	# continue until loop in main function
	return false
end



def print_staff()
	system "clear"
	puts "Staff Mode: Simo_Sultan's Cafe."
	puts " "
	print_options()
end




def staff_options()
	puts " "
	puts "Do you want to.."
	puts "[A]dd an item"
	puts "[R]emove an item"
	puts "[C]hange prices"
	puts "[E]xit"
	puts " "

	print "Input: "; option = gets.strip.downcase[0]
	return option
end




def staff_add_item()
	# ask what item you want to add
	# ask what the price is to be of that item
	# add it
	print_staff()
	
	puts " "
	puts "What is the new item you would like to add?"
	print "Input: "; new_item = gets.strip.downcase
	puts " "
	puts "What is the price of this item?"
	print "Input: "; new_price = gets.strip.to_i
	
	$cost_price[new_item[0]] = new_price
	$item_names[new_item[0]] = new_item.capitalize
	
	# print_staff()
	# puts " "
	# puts "#{new_item.capitalize} = $#{new_price} has been added to Simo_Sultan's menu."
	# puts "*"*42
	
	return false
	
end




def staff_remove_item()
	# ask what item you want to remove
	# confirm they want to remove it
	# remove it
	
	print_staff()
	puts " "
	puts "What item would you like to remove?"
	$item_names.each_value do |v|
		next if v == "Quit"
		puts "[#{v[0]}]#{v[1..v.length]}"
	end
	
	puts " "
	print "Input: "; rem = gets.strip.downcase
	$item_names.delete(rem[0])
	$cost_price.delete(rem[0])
	
	# print_staff()	
	# puts " "
	# puts "#{rem.capitalize} has just been removed from Simo_Sultan's menu."
	# puts "*"*42

	return false

end




def staff_change_price()
	# ask what item you want to change
	# ask what the new value is to be
	# change that in original hash
	
	print_staff()
	puts " "
	puts "What item would you like to change the price of?"
	$item_names.each_value do |v|
		next if v == "Quit"
		puts "[#{v[0]}]#{v[1..v.length]}"
	end
	
	puts " "
	print "Input: "; change = gets.strip.downcase
	
	puts " "
	puts "What is the new price?"
	print "Input: "; change_price = gets.strip.to_i
	$cost_price[change[0]] = change_price
	
	return false
end





main()
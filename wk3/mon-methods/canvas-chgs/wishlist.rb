
def wishlist_app
	quit = false
	wishlist = []

	until quit
		puts " "
		puts "What would you like to add to your wishlist?"
		puts "Or type 'display' to see what's in your list or type 'quit' to exit."
		resp = gets.strip.downcase
		
		if resp == 'quit'
			puts "Thank you for using the mini wishlist app."
			quit = true
		elsif resp == 'display'
			display_wishlist(wishlist)
		else
			wishlist = add_item_to_wishlist(resp, wishlist)
		end
	end
end

def  add_item_to_wishlist(item, wishlist)
	item.capitalize!
	wishlist << item
	return wishlist
end

def display_wishlist(wishlist)
	wishlist.empty? ? (puts "You have nothing in your wishlist yet.") : (puts "#{wishlist}")
end

wishlist_app

def wishlist_app()
	quit = false
	$wishlist = []

    until quit
        intro()
		puts "What would you like to add to your wishlist?"
        puts "Or type 'display' to see what's in your list or type 'quit' to exit."
        puts " "
		print "Ïnput: "; resp = gets.strip.downcase
		
        if resp == 'quit'
            intro()
            puts "Thank you for using the mini wishlist app."
            puts " "
			quit = true
        elsif resp == 'display'
            intro()
			display_wishlist($wishlist)
            quit = ask_user_input()
		else
            wishlist = add_item_to_wishlist(resp, $wishlist)
            quit = ask_user_input()
		end
	end
end


def add_item_to_wishlist(item, wishlist)
	return $wishlist << item.capitalize!
end

def display_wishlist(wishlist)
    intro()
    if wishlist.empty?
        puts "You have nothing in your wishlist yet."
    else
        puts "#{$wishlist}"
    end
end


def ask_user_input()
    puts " "
    puts "*" * 80
    puts " "
    puts "Press any key to continue, or [Q]uit."
    puts " "
    print "Input: "; resp = gets.strip.downcase[0]

    return true if resp == 'q'
    return false
end


def intro()

    system "clear"
    puts "*" * 80
    puts "Welcome to simo_sultan's wishlist app"
    puts "*" * 80
    puts " "

end




wishlist_app()
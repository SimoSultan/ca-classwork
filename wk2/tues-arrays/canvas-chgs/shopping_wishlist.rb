def shopping_wishlist_app()

	quit = false
	$wishlist = []

    until quit
        intro()
        disply_shop_to_user()

        unless $wishlist.empty?
            display_wishlist($wishlist)
        end

		puts "What would you like to add to your wishlist?"
        puts "Type a category or item you would like to add to your wishlist."
        puts "OR type 'display' to see what's in your list, OR 'quit' to exit."
        puts " "
		print "Input: "; resp = gets.strip.downcase
		
        if resp == 'quit' || resp == "Quit" || resp == "Q" || resp == "q"
            intro()
            puts "Thank you for using simo_sultan's shopping wishlist app."
            puts " "
			quit = true
        elsif resp == 'display'
            intro()
			display_wishlist($wishlist)
            quit = ask_user_input()
		else
            add_item_to_wishlist(resp)
            quit = ask_user_input()
		end
	end
end


def disply_shop_to_user()

    $shop = [ 
        ["coffee",["flat white", "black", "iced"]],
        ["takeaway", ["toast", "muffin"]],
        ["tech", ["iPhone", "Pixel 2XL", "Galaxy Note 10"]],
        ["fruit",["orange", "banana", "apple"]]
    ]

    puts "Here is a list of items we have available in our simo_sultan's shop."
    puts " "
    print "CATEGORIES"; print "             ITEMS";
    puts " "
    puts " "

    for item in $shop
        puts  "  #{item[0].capitalize}:"
        item[1].each{ |x| puts "                        #{x}" }
        puts " "
    end
    puts "*" * 60
    puts " "

end



def add_item_to_wishlist(item)

    downcase_shop = $shop.flatten.map!{ |x| x.gsub(/\s+/, "").downcase}

    if !downcase_shop.flatten.include?(item.gsub(/\s+/, "").downcase)
        puts " "
        puts "Sorry '#{item}' is not in the shop, nothing was added to your wishlist."
        return
    end

    # iterate through the shop and find out if the item that the user wants
    # is an item or a categeory
    arr = []
    for object in $shop 
        if item.downcase == object[0].downcase
            # this is when the item the user wants is category
            # add all items under that category
            object[1].each { |y| arr << y.capitalize }
        end
    end

    arr.empty? ? $wishlist << item.capitalize! : $wishlist += arr
end



def display_wishlist(wishlist)
    # intro()
    if wishlist.empty?
        puts "You have nothing in your wishlist yet."
    else
        puts "Your wishlist contains:"
        puts " "
        uniq_wish = $wishlist.uniq
        uniq_wish.each { |x| puts "   x#{$wishlist.count(x)}          #{x}" }
    end

    puts " "
    puts "*" * 60
    puts " "
end



def ask_user_input()
    puts " "
    puts "*" * 60
    puts " "
    puts "Press any key to continue shopping, or [Q]uit."
    puts " "
    print "Input: "; resp = gets.strip.downcase[0]

    return true if resp == 'q'
    return false
end


def intro()

    system "clear"
    puts "*" * 60
    puts "Welcome to simo_sultan's shopping wishlist app"
    puts "*" * 60
    puts " "
end




shopping_wishlist_app()
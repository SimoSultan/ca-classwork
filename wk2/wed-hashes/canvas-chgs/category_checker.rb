
def category_checker
    # Present the user with different categories of something.
    # Then, ask them to provide a maximum number of characters for each entry.
    # Based on the chosen category & maximum number of characters, show the user a list of entries.
    # then the user wants to see liquids with 4 characters or less in their name
    
        system "clear"
        
        data = {"chocolate things" => ["chocolate cake", "hot chocolate", "choc"], "liquids" => ["water", "hot chocolate", "cola", "juice"], "lollies" => ["skittles", "M&Ms", "licorice"]}
        categories = ""
        
        puts "Welcome. I will show you a list of categories to choose from, then select a number."
        puts "This will return you an item out of your category that has this many characters or less in it."
        
        puts " "
        sleep 1
    
        data.each { |k,v| categories += k + ", " }
        puts prompt = "Please choose your category. (#{categories.delete_suffix!(', ')})." 
        user_input = gets.strip.downcase
        
        resp = validate_resp(user_input, data, categories)
        
        # find the item in the selected category with the longest length	
        long = data["#{resp}"].max_by(&:length).length
        # find the item in the selected category with the shortest length
        short = data["#{resp}"].min_by(&:length).length
        
        puts " "
        
        puts "Now choose a number between '#{short}' and '#{long}' to receive an item with that many characters or less."
        num = gets.strip.to_i
        num = validate_number(num, short, long)
        
        selection = data["#{resp}"].select {|v| break v if v.length <= num}
        
        display_checking
        
        puts " "
        puts "Your item in '#{resp}' that has '#{num}' characters or less is:"
        
        sleep 1.5	
        puts "#{selection.upcase}!!!!"	
        sleep 1.5
        
        puts " "
        puts "Thank you for playing!"
        puts " "
    end
        
    
    def validate_resp(resp, data, categories)
            
        if !data.has_key?(resp)
            puts "Invalid entry! Please choose out of these entries."
            puts "(#{categories})" 
            
            puts " "
            
            resp = gets.strip.downcase
            validate_resp(resp, data, categories)
        else 
            return resp
        end
    end
    
    
    def validate_number(num, short, long)
        if num < short || num > long
            puts "Invalid entry! Please choose a number between '#{short}' and '#{long}'."
            num = gets.strip.to_i
            validate_number(num, short, long)
        else 
            return num
        end
    end
    
    
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
    end
    
    
    category_checker
    
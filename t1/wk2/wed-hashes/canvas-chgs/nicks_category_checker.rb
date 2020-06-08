@data =     {    "chocolate things" => ["chocolate cake", "hot chocolate", "choc"], 
            "liquids" => ["water", "hot chocolate", "cola", "juice"], 
            "lollies" => ["skittles", "M&Ms", "licorice"]
            }

def category
    
    puts "Please pick a category:"
    puts @data.keys
    print "=> "
    categ = gets.chomp.downcase
    system 'clear'
    
    if @data.has_key?(categ)
        selected_category = @data[categ]
        max = selected_category.group_by(&:size).max.first
        min = selected_category.group_by(&:size).min.first
    
        system "clear"
    
        puts "Choose a number between #{min} and #{max}"
        print "X = "
        num = gets.chomp.to_i
    
        system "clear"    
    
        answer = selected_category.select {|x| x.chars.length <= num}
            if num >= min
                puts "These are the selections with #{num} characters or less"
                puts answer
            else
                puts "I'm sorry, theres nothing with #{num} characters or less"
            end
    else
        puts "Thats not a valid selection"
    end
end

category
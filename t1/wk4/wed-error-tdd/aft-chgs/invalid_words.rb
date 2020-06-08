

def print_num_letters(words)
    # given an array of strings
    # need to display each word and how many chars in the string
    words.map do |word|
        begin
            p "The word #{word} has #{word.length} letters in it."
        rescue 
            puts "Invalid word given: #{word}"
        end
    end
end

print_num_letters(['apple', 'school', "bus", "blue", "cloud"])
print_num_letters(['apple', 'school', 3, 'blue', nil])


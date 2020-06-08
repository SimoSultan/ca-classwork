# I ACCIDENTALLY DID THIS AS METHODS INSTEAD OF USING ARRAYS
# I DONT HAVE THE SOLUTION WITH ARRAYS YET

require_relative '../../../reusable_code.rb'
include Reusable

def main()

    system "clear"
    puts " "
    puts "Hey! What is your name?"
    print "Input: "; name = gets.strip
    word = "decrypted"
    quit = false
    sleep 0.5

    def enc_dec(str)
        return str[-2,str.length] + str[2..-3] + str[0..1]
    end

    until quit
        system "clear"
        puts " "
        puts "Your #{word} name is #{name}."
        puts " "
        word == "encrypted" ? opposite = "decrypt" : opposite = "encrypt" 
        puts "Do you want to #{opposite} your name? y/n Or [Q]uit"
        print "Input: "; resp = gets.strip.downcase[0]
    
        case resp
        when "q"
            puts "Goodbye"
            sleep 2
            system "clear"
            return true
        when "y"
            if opposite == "decrypt" 
                word = "decrypted"
                loading = "decrypting"
            else
                word = "encrypted"
                loading = "encrypting"
            end
        when "n"
            puts " "
            puts "OK! Thank you for using the app #{name}."
            sleep 2
            system "clear"
            return true
        else
            puts "Sorry, invalid entry. Starting again."
            return false
        end

        show_progress_bar(loading, 2)
        name = enc_dec(name)        
        sleep 1
    end
end

main()

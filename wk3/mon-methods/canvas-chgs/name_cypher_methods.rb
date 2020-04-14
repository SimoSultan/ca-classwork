require_relative '../../../reusable_code.rb'
include Reusable

# ## THIS IS THE SAME CODE FROM WK2 TUES ARRAYS CANVAS CHGS
# # I WROTE THAT WITH METHODS INSTEAD OF AN ARRAY

# def main()

#     system "clear"
#     puts " "
#     puts "Hey! What is your name?"
#     print "Input: "; name = gets.strip
#     word = "decrypted"
#     quit = false
#     sleep 0.5

#     def enc_dec(str)
#         return str[-2,str.length] + str[2..-3] + str[0..1]
#     end

#     until quit
#         system "clear"
#         puts " "
#         # the first time this next line runs it will be decrypted, 
#         # but the 'word' is overwritten through the app so that it uses the correct 
#         # version next time

#         puts "Your #{word} name is #{name}."
#         puts " "

#         # ask the user if they want to encrypt or decrypt their name
#         # this depends on what they just did
#         word == "encrypted" ? opposite = "decrypt" : opposite = "encrypt" 
#         puts "Do you want to #{opposite} your name? y/n Or [Q]uit"

#         # get their response
#         print "Input: "; resp = gets.strip.downcase[0]
    
#         case resp
#         when "q" 
#             puts "Goodbye"
#             sleep 2
#             system "clear"
#             return true
#         when "y"
#             # figure out what the program just asked
#             if opposite == "decrypt" 
#                 word = "decrypted"
#                 loading = "decrypting"
#             else
#                 word = "encrypted"
#                 loading = "encrypting"
#             end
#         when "n"
#             #then the user doesn't want to do anything
#             puts " "
#             puts "OK! Thank you for using the app #{name}."
#             sleep 2
#             system "clear"
#             return true
#         else
#             # they didn't put in a valid response
#             puts "Sorry, invalid entry. Starting again."
#             return false
#         end

#         # show the progress bar
#         show_progress_bar(loading, 2)
#         # set the name var for the next iteration to display correctly
#         name = enc_dec(name)        
#         sleep 1
#     end
# end

# main()



class Encoder
    
    attr_reader :result, :history
    
    def initialize
        @history = []
    end
    
    def enc_dec(str)
        @result = str[-2,str.length] + str[2..-3] + str[0..1]
        @history << @result
        return @result
    end
    
end

def main()
    
    hal = Encoder.new
    system "clear"
    puts " "
    puts "Hey! What is your name?"
    print "Input: "; name = gets.strip
    word = "decrypted"
    quit = false
    sleep 0.5
    
    

    until quit
        system "clear"
        puts " "
        puts "Your #{word} name is #{name}."
        puts " "
        word == "encrypted" ? opposite = "decrypt" : opposite = "encrypt" 
        puts "Do you want to #{opposite} your name? y/n"
        puts "Or [Q]uit, [G]et History, [R]efresh name"
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
            show_progress_bar(loading, 1)
            name = hal.enc_dec(name)        
            sleep 1
        when "n"
            puts " "
            puts "OK! Thank you for using the app #{name}."
            sleep 2
            system "clear"
            return true
        when "g"
            puts ""
            puts "Here is a history of all encryptions/decryptions"
            puts hal.history
            sleep 2
            puts "Press enter to continue"
            gets
        when "r"
            puts ""
            puts "Starting again...."
            sleep 2
            main()
        else
            puts "Sorry, invalid entry. Starting again."
            sleep 1
        end       
        
    end
end

main()

# require_relative "../controllers/controller.rb"
# hi from keefer i am hacked in to simon pcs hahahahahaaha
require 'io/console'
$terminal_width = IO.console.winsize[1] ## this gets the width of the terminal

class BankView

    def show_header()
      system 'clear'
      puts '-' * $terminal_width
      puts
      puts 'WELCOME TO THE BANK OF'
      puts 'xxKeefer & simo_sultan'
      puts
      puts '-' * $terminal_width
    end

    def main_menu()
      return main_menu = {
        "Create Account" => "create",
        "Search Account" => "search",
        "Close Account" => "close",
        "Quit" => "quit",
      }
    end

    def account_menu()
      return account_menu = {
        "Show Balance" => "balance",
        "Deposit Money" => "deposit",
        "Withdraw Money" => "withdraw",
        "Create Sub Account" => "create",
        # "Close Sub Account" => "close_sub",
        # "[3]" => "Change Name",
        "Exit Account Menu" => "exit",
      }
    end

    def get_customer_id()
      puts
      puts "Please type in an ID number."
      print "=> "; id_number = gets.strip.to_i
      return id_number
    end

    def show_customer_info(customer)
      puts "Name: #{customer[:name]}"
      puts "ID Number: #{customer[:id_number]}"
      puts "DOB: #{customer[:dob]}"
      puts "Total Funds: #{customer[:total_funds]}"
      puts "Accounts: #{customer[:accounts].inspect}"
    end

    def get_customer_name()
      puts
      puts "Please type the name of the customer."
      print "=> "; name = gets.strip
      return name
    end

    def get_customer_dob()
      puts
      puts "Please type the DOB of the customer."
      print "=> "; dob = gets.strip
      return dob
    end
    
    def ask_amount()
      puts
      puts "Please type the amount you want"
      print "=> "; amount = gets.strip.to_i
      return amount
    end
    

    # def get_customer_sub_account()
    #   puts
    #   puts "Please type the type of the account."
    #   print "=> "; gets type.strip
    #   puts 
    #   puts "Please type the name of the account."
    #   print "=> "; gets name.strip
    #   return dob
    # end

    def press_any_key()
      puts
      puts "Press any key to continue"
      gets
    end


end
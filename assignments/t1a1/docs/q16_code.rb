require 'io/console'
$terminal_width = IO.console.winsize[1] ## this gets the width of the terminal

class Main

  attr_reader :allergies, :menu, :score, :running

  def initialize()

    @allergies = {
      eggs: 1,
      peanuts: 2,
      shellfish: 4,
      strawberries: 8,
      tomatoes: 16,
      chocolate: 32,
      pollen: 64,
      cats: 128,
    }

    @menu = [
      "[1] How to use the program",
      "[2] Show all allergies",
      "[3] Check an allergies score",
      "[4] Find worst possible allergy for given score",
      "[5] Find all possible allergies for given score",
      "[Q] Quit program",
    ]

    @max_score = 255
    @running = true
  end

end # of class



def main()

  # create Main program
  # get initialized info
  program = Main.new()
  allergies = program.allergies
  menu = program.menu
  score = program.score
  running = program.running


  # use a loop to for the program
  # show menu and get users selection 
  while running
    running = display_menu(menu)
    resp = get_users_option()

    case resp
    when "1"
      how_to_use_program()
    when "2"
      show_all_allergies_and_scores(allergies)
    when "3"
      check_allergy_score(allergies)
    when "4"
      what_is_worst_allergy(allergies)
    when "5"
      display_all_possible_allergies(allergies)
    when "Q", "q"
      return running = quit()
    else
      puts
      puts "Sorry that isn't a valid menu option"
    end
      
    press_any_key()
    running = true
  end
end


# display the header on each screen
def display_header()
  system "clear"
  header_str = "Welcome to Simo_Sultan's Allergy Checker Program"
  centre_spacing = ($terminal_width - header_str.length) / 2
  puts "-" * $terminal_width
  puts 
  puts " " * (centre_spacing) + header_str
  puts 
  puts "-" * $terminal_width
  puts
end


# displays the menu
def display_menu(menu)
  display_header()
  puts "Please choose an option below"
  puts
  menu.each {|x| puts x}
  puts
  puts "What would you like to do?"
  puts
end


# teaches user how to use the program
def how_to_use_program()
  display_header()
  puts "Hi, we are testing a program where we are trying to determine if our subject Tom has an allergy to a given item, or what allergies he can have with a given score."
  puts
  puts "To use the program, please select a number from the option menu"
end



 # show all allergies and their scores as a list
def show_all_allergies_and_scores(allergies)
  puts
  allergies.each do |alrg, score|
    puts " - #{alrg.capitalize} has a score of: #{score}"
  end
end


# show a list of just allergy names
def show_allergy_names(allergies)
  str = ""
  allergies.each{|k,v| str += k.to_s + ', '}
  puts str.delete_suffix(', ')
end


# check what the score is of an allergy
def check_allergy_score(allergies)
  allergy = get_user_requested_allergy(allergies)
  puts
  puts "#{allergy.capitalize} has a score of: #{allergies[allergy.to_sym]}"
end


# determine allergy with highest score for a user submitted score
def what_is_worst_allergy(allergies)
  score = get_user_requested_score()
  allergy = ""

  allergies.each_with_index do |(key, val), idx|
    if score < val
      allergy = allergies.keys[idx-1].to_s
      break
    end
  end
  puts
  puts "The worst allergy with that score is '#{allergy.capitalize}' with a score of: #{allergies[allergy.to_sym]}"
end


# display the exact list of allergies Tom has for a user submitted score
def display_all_possible_allergies(allergies)
  # get user selected score
  # iterate over the hash to find if a combination of allergies exist
  # e.g. score = 9, list = eggs(1) + strawberries(8) is the only combination of allergies
  score = get_user_requested_score()
  arr_list = get_combination_of_allergies_from_score(score, allergies)

  if arr_list.empty?
    puts
    puts "Thankfully, Tom has no allergies for that score"
  else
    puts
    puts "Poor old Tom has allergies to these items:"
    arr_list.reverse.each {|allergy| (puts " - #{allergy}")}
  end

end


# function that gets the list of allergies for a score and returns to the print function above
def get_combination_of_allergies_from_score(score, allergies)

  arr = []
  sum = 0
  # remove any allergies that have a score larger than the one given
  reduced_allergies = allergies.select {|k,v| v <= score}

  # reverse the hash to start with largest number first to possibly reduce iterations
  reversed_reduced = reduced_allergies.to_a.reverse.to_h
  reversed_reduced.each do |key, val|
    sum += val
    if sum == score
      # found the correct list and return it
      return arr.push(key.to_s)      
    elsif sum < score
      # still haven't found entire list, add this allergy and move to next
      arr.push(key.to_s)
      next
    elsif sum > score
      # the score is too high, so skip this allergy
      sum -= val
      next
    end
  end
end




# get the allergy a user wants to know more info about
def get_user_requested_allergy(allergies)

  begin
    display_header()
    puts "What allergy would you like to check?"
    puts
    puts show_allergy_names(allergies)
    print "=> "; allergy = gets.strip.downcase
    raise StandardError.new("Error: Sorry, either that allergy does not exist or spelling may be incorrect.\nPlease try again.") if !allergies.key?(allergy.to_sym)
  rescue => exception
    puts
    puts exception.message
    press_any_key()
    retry
  end

  return allergy
end


# get the allergy's score a user wants to know more info about
def get_user_requested_score()
  begin
    display_header()
    puts
    puts "What is the score you want to check? (1->255)"
    print "=> "; score = gets.strip.to_i
    if score < 1 || score > 255
      raise StandardError.new("Error: Only a valid score between 1 and 255 can be accepted.\nIf score = 0, Tom would have no allergies, and the max score of allergies can only be 255.\nPlease try again.")
    end
  rescue => exception
    puts
    puts exception.message
    press_any_key()
    retry
  end
  return score
end


# quit the program
def quit()
  puts 
  puts "Thanks for using the program"
  puts "Come again soon"
  puts
  return false
end


# pauses the loop until user presses a key
def press_any_key()
  puts
  puts "Press any key to continue"
  gets
end


# gets the users option from the main menu
# error handling is handled in the while loop in main()
def get_users_option()
  print "=> "; resp = gets.strip
  return resp
end


# run the program
main()





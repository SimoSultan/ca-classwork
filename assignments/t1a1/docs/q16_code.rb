require 'io/console'
$terminal_width = IO.console.winsize[1] ## this gets the width of the terminal

def main()

  allergies = {
    eggs: 1,
    peanuts: 2,
    shellfish: 4,
    strawberries: 8,
    tomatoes: 16,
    chocolate: 32,
    pollen: 64,
    cats: 128,
  }

  menu = [
    "[1] How to use the program",
    "[2] Show all allergies",
    "[3] Check an allergies score",
    "[4] Find worst possible allergy for given score",
    "[5] Find all possible allergies for given score",
    "[Q] Quit program",
  ]

  score = 0
  running = true

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



def display_menu(menu)
  display_header()
  puts "Please choose an option below"
  puts
  menu.each {|x| puts x}
  puts
  puts "What would you like to do?"
  puts
end



def how_to_use_program()
  display_header()
  puts "Hi, we are testing a program where we are trying to determine if our subject Tom has an allergy to a given item, or what allergies he can have with a given score."
  puts
  puts "To use the program, please select a number from the option menu"
end



def show_all_allergies_and_scores(allergies)
  # show all allergies as a list
  puts
  allergies.each do |alrg, score|
    puts " - #{alrg.capitalize} has a score of: #{score}"
  end
end



def show_allergy_names(allergies)
  str = ""
  allergies.each{|k,v| str += k.to_s + ', '}
  puts str.delete_suffix(', ')
end



def check_allergy_score(allergies)
  allergy = get_user_requested_allergy(allergies)
  if !allergies.key?(allergy.to_sym)
    puts
    puts "Sorry that is not a valid entry"
    puts "Please try again"
    press_any_key()
    check_allergy_score(allergies)
  end

  return if !allergies.key?(allergy.to_sym)

  puts
  puts "#{allergy.capitalize} has a score of: #{allergies[allergy.to_sym]}"
end



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



def display_all_possible_allergies(allergies)
  score = get_user_requested_score()
  str = ""
  allergies.each do |k,v|
    (str += k.to_s.capitalize + ', ') if v <= score
  end
  if str.empty?
    puts
    puts "Thanlfully, Tom has no allergies for that score"
  else
    puts
    puts "Poor old Tom can have a combination of some, but not all, of these allergies..."
    puts str.delete_suffix(', ')
  end
end



def get_user_requested_allergy(allergies)
  display_header()
  puts "What allergy would you like to check?"
  puts
  puts show_allergy_names(allergies)
  print "=> "; allergy = gets.strip.downcase
  return allergy
end



def get_user_requested_score()
  display_header()
  puts
  puts "What is the score you want to check?"
  print "=> "; score = gets.strip.to_i
  return score
end



def quit()
  puts 
  puts "Thanks for using the program"
  puts "Come again soon"
  puts
  return false
end



def press_any_key()
  puts
  puts "Press any key to continue"
  gets
end



def get_users_option()
  print "=> "; resp = gets.strip
  return resp
end




main()

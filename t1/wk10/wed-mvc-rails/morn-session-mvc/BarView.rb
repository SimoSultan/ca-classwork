# contains all the methods that relating to show data to the user
# grteeting
# make a selection
# read menu
# wrong answer
# good bye
# take order

# view: doesnt have much logic
# what you show to the user

class BarView
  def grteeting()
    puts "Hi, how can I help you?"
  end
  
  def selection()
    puts "Enter 1. to look at menu or 2. to order a drink"
    return gets.chomp.to_i
  end

  def display_menu(items)
    items.each { |item| puts item.capitalize }
  end

  def wrong_answer
    puts "Sorry I don't understand, try again"    
  end

  def goodbye(item)
    puts "Here is your #{item}. Thanks for coming, see you later"
  end

  def order()
    puts "What would you like?"
    gets.strip.downcase.to_sym
  end

end


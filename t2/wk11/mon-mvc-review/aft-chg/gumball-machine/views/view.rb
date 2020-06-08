require_relative "../controllers/controller.rb"

module View
  
  amount_wanted = 0

  def inform_user_of_result(boolean, amount_available)

    if boolean == true
      puts "Here are your #{amount_wanted} of gumballs"
    else
      puts "Sorry there are only #{amount_available} gumballs left"
      puts "No gumballs were received"
    end

    # after processing the result and informing the user,
    # reset amount_wanted back to 0 for next input
    amount_wanted = 0
  end
  
  def prompt_for_user_input

    # ask user what they want to do
      # get gumballs
        # amount_wanted += how many gumballs the user wants
        # amount from user = how many gumballs the user wants

      # top up gumballs
        # amount from user = total amount of gumballs it can take

    # send result to controller action
    # process_user_input(action, amount_from_user)

  end
  
end


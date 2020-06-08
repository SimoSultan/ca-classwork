require_relative "../models/model.rb"
require_relative "../views/view.rb"
include View

class GumballController
  
  def initialize()
    @machine = GumballMachine.new()
  end

  def process_user_input(action, amount)
    # if action == topup gumbals
      # provide_gumballs_to_model()
    # if action == get gumballs
      # available = machine.check_if_gumballs_are_available(amount)
      # bool = available[0]
      # amount = available [1]
      # inform_user_of_result(bool, amount)
  end
  
  def provide_gumballs_to_model
    refill_gumball_machine()
  end

  def run
    prompt_for_user_input()
  end

end





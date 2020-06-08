require_relative "../controllers/controller.rb"

class GumballMachine

  attr_accessor :total_gumballs_available, :total_gumballs

  def initialize()
    @total_gumballs_available = 100
    @total_gumballs = 100

    # call this function on initialize to get available gumballs
    on_database_change()
  end

  def on_database_change
    # when there is a change of the database run this function
    keep_track_of_number_of_gumballs()
  end

  def keep_track_of_number_of_gumballs
    # update available gumballs
    @total_gumballs_available = value_received_from_db()
  end

  def value_received_from_db()
    
  end
  
  def check_if_gumballs_are_available(amount_required)
    @total_gumballs_available > amount_required ? bool = true : bool = false
    return [bool, @total_gumballs_available]
    # # which is better??
    # return @total_gumballs_available if @total_gumballs_available > amount_required
    # return false
  end
  
  def refill_gumball_machine
    # update the available gumballs back to total gumballs
    # update the database with same value
    # @total_gumballs_available = @total_gumballs
    # update_database_available_gumballs(@total_gumballs)

  

    # I dont topup the database and then read it again
    # as that's 2 actions on the database instead of one

    # would rather topup the local variable and then topup the database
  end

end



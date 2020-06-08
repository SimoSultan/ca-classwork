# first point of contact, which decides what methods should be called from model and view
require_relative "BarModel"
require_relative "BarView"

# run: interact with model and view

class BarController

  
    def initialize
      # instantiate model and view
      @model = BarModel.new
      @view.BarView.new
    end

    def run
      # greet customer and take their selection
      selection = greet_customer_and_take_selection()
      # get the data from the model
      drinks = @model.get_available_drinks()
      # based on user selection either display menu or take order
      if selection == 1
        @view.display_menu(drinks)
      end

      order = take_order(drinks)
      @view.goodbye(order)
    end

    def greet_customer_and_take_selection()
      @view.greeting()
      resp = @view.selection()
      while true
        if (resp != 1 and resp != 2)
          @view.wrong_answer()
        else
          return resp
        end
      end
    end

    def take_order(drinks)
      while true
        order = @view.order()
        drink_count = @model.get_drink(order)

        if drink_count != nil
          break
        end
        @view.wrong_answer()
        # show menu again
        @view.display_menu(drinks)
      end
      order
    end

end 
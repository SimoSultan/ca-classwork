require_relative "../models/model.rb"
require_relative "../views/view.rb"
require 'tty-prompt'


class BankController
  
  def initialize()
    # @attribute = attribute
    @model = BankModel.new()
    @view = BankView.new()
  end

  def run
    # @model.db_init()
    # @model.db_load()
    # create a loop
    # show header
    # show main menu
    # get user input from main menu
    main_menu = @view.main_menu()
    loop do
      prompt = TTY::Prompt.new
      @view.show_header
      puts 
      # show the main menu
      main_menu_input = prompt.select("What would you like to do?", main_menu)
      # break the loop if user input == quit == false
      break if handle_main_menu_user_input(main_menu_input) == false
      @view.press_any_key()
    end
    # @model.db_save()
  end


  def handle_main_menu_user_input(main_menu_input)
    # handle the main menu

    case main_menu_input
    when "create"
      # generate id number inside :customer_id in model
      name = @view.get_customer_name()
      dob = @view.get_customer_dob()
      customer = @model.customer_create(name, dob)
      @view.show_customer_info(customer)
    when "search"
      id_number = @view.get_customer_id()
      customer = @model.customer_find(id_number)
      @view.show_customer_info(customer)
      puts
      handle_account_menu_input(customer)

    when "close"
      # first search for the person
      id_number = @view.get_customer_id()
      customer = @model.customer_close(id_number)
    when "quit"
      puts "Thank you for using our banking app"
      return false
    end
    
    return true
  end


  def handle_account_menu_input(customer)
    id_number = customer[:id_number]
    prompt = TTY::Prompt.new
    account_menu = @view.account_menu()
    loop do
      @view.show_header
      # show the main menu
      account_menu_input = prompt.select("What would you like to do?", account_menu)
      # break the loop if user input == quit == false\
      # handle the account menu
      case account_menu_input
      when "create"
        @model.acc_create(id_number, "test_for_mvp", "sometype") #TODO: fix this shit
        puts "Account Created..."
      when "balance"
        funds = @model.acc_balance(id_number, "1") #TODO: fix this shit
        puts "Total funds: $#{funds}"
      when "deposit"
        amount = @view.ask_amount()
        @model.acc_deposit(id_number, "1", amount) #TODO: fix this shit
      when "withdraw"
        amount = @view.ask_amount()
        @model.acc_withdraw(id_number, "1", amount) #TODO: fix this shit
      when "exit"
        break
      end

      @view.press_any_key()
    end



  end

  

end

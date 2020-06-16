require_relative "controllers/controller.rb"

@bank = BankController.new()
@bank.run()
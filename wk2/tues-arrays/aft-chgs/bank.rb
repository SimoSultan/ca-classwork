# Write a program to implement a simple bank account. 
@balance = 0

def banking_app
	# Your code here.
	
	puts " "
	puts "Welcome to the banking app."
	show_balance
	
	resp = prompt_user
	
		case resp
			
		when "b"
			show_balance
			banking_app
			
		when "e"
			# system "clear"
			puts `clear`
			return
			
		when "d"
			puts "How much would you like to deposit?"
			dep = gets.chomp.to_i
			@balance += dep
			show_balance
			banking_app
		
		when "w"
			puts "How much would you like to withdraw?"
			wit = gets.chomp.to_i
			if @balance - wit < 0
				puts "Sorry, you will overdraw your account by $#{(@balance - wit).abs}."
				puts "The maximum you can withdraw is $#{@balance}."
			else
				@balance -= wit
				show_balance
			end
			
			banking_app
	else 
		puts "Invalid selection!"
		banking_app
	end
	
end

	
def show_balance
	puts "Your current balance is $#{@balance}."
end


def prompt_user
	sleep 2
	puts " "
	puts "What would you like to do?"
	puts "(options: [B]alance, [D]eposit, [W]ithdraw, [E]xit)"
	resp = gets.chomp.downcase[0]
	
	return resp
end


banking_app
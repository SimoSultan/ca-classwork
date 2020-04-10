# Write a program to implement a simple bank account. 
# let the user deposit money into their account - completed
# let the user withdraw from account - comppleted
# let the user display their balance - completed

# EXTENSION TWIST
# warn the user if their account is overdawn - completed
# add extra parameters to the actions to let users choose specific accounts to work with (eg, savings, everyday, sharetrading, etc)


$accounts = {
	savings: 0,
	everyday: 0,
}

def banking_app
	# Your code here.
	
	puts " "
	puts "Welcome to the banking app."
	# show_balance()
	
	resp = prompt_user()
	
		case resp
			
		when "b"
			show_balance()
			sleep 2
			banking_app()
			
		when "c"
			system "clear"
			
		when "e"
			return
			
		when "d"
			deposit()
			show_balance()
			sleep 2
			banking_app()
			
		when "w"
			withdraw()
			show_balance()
			sleep 2
			banking_app()
	else 
		puts "Invalid selection!"
		sleep 2
		banking_app()
	end
end



	
def show_balance()
	puts "You have $#{$accounts[:savings]} in your Savings account."
	puts "You have $#{$accounts[:everyday]} in your Everyday account."
	puts "Your total balance is $#{$accounts[:savings] + $accounts[:everyday]}."
end




def prompt_user()
	sleep 1
	puts " "
	puts "What would you like to do?"
	puts "(options: [B]alance, [D]eposit, [W]ithdraw, [C]lear, [E]xit)"
	resp = gets.chomp.downcase[0]
	
	return resp
end




def withdraw()
	account = which_account("withdraw")
	puts "How much would you like to withdraw?"
	wit = gets.chomp.to_i
	overdraw_resp = ""
	
	#check to see if they are going to overdraw their account
	if $accounts[account.to_sym] - wit < 0
		puts "You will overdraw your account by $#{($accounts[account.to_sym] - wit).abs}."
		puts "Are you sure you would like to proceed?"
		overdraw_resp = gets.strip.downcase[0]
	else 
		$accounts[account.to_sym] -= wit
	end

	# let them overdraw if they choose to, otherwise do nothing
	if overdraw_resp == 'y'
		$accounts[account.to_sym] -= wit
	end
end




def deposit()
	account = which_account("deposit")
	puts "How much would you like to deposit?"
	dep = gets.chomp.to_i
	$accounts[account.to_sym] += dep
end






def which_account(type)
	type == "withdraw" ? word = 'from' : word = 'to'
	puts "Which account would you like to #{type} #{word}? [E]verday or [S]avings"
	resp = gets.strip.downcase[0]
	resp == "e" ? resp = "everyday" : resp = "savings"
	return resp
end



banking_app()
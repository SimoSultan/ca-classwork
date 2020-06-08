
require_relative '../../../reusable_code.rb'
include Reusable

puts "Hi! What is your favoutite colour?"
resp = gets.strip.downcase

puts "Great, we will check it against the colours of the rainbow and see if it is in there."

display_checking()

rainbow = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

rainbow.include?(resp) ? (puts "#{resp.capitalize!} is a colour in the rainbow!") : (puts "Sorry, #{resp.capitalize!} is not in the raibow.")


time = Time.now
zone = time.zone
offset = time.utc_offset / 3600

puts "Current time in 24hr is #{time.strftime("%k:%M on the %d/%m/%Y")}"

puts ""

puts "Please put in a UTC offset (-12 -> 14) you would like to see the time in. ("
user_UTC = gets.strip.to_i

if user_UTC > 14 || user_UTC < -12
    puts "Sorry that time zone is not an available option."
    return
end

users_time = Time.now.utc + user_UTC * 3600
puts "The time at your selected UTC offset is #{users_time.strftime("%k:%M on the %d/%m/%Y")}"

offset-user_UTC > 0 ? word = "ahead of" : word = "behind"

puts "We are #{(offset - user_UTC).abs}hr/s #{word} your chosen location"
puts ""
# Find out what day of the year it is (eg. 42 / 366)
# Create variables for each season - these variables should store a range of days of the year (similar to above) that covers when that season occurs.
# Check if the current day of the year falls within a certain range of days to find out what the current season is.
# Similarly, use ranges on the current hour of the day to identify if it’s morning, noon, afternoon, evening, nighttime, midnight
# Tell the user what stage of the day & what season of the year it is.
# Use hashes to store the ranges for the seasons and stages of the day.

time = Time.now
yday = time.yday
hour = time.hour

seasons = {268..258 => 'spring', 259..365 => 'summer', 1..78 => 'summer', 79..172 => 'autumn', 173..267 => 'winter' }
time_of_day = {8...12 => 'noon', 12...4 => 'afternoon', 4...8 => 'evening', 8...12 => 'nighttime', 12...4 => 'midnight', 4...8 => 'morning'}

current_season = seasons.select {|range, season| break season if range.include?(yday)}
# puts current_season

current_time = time_of_day.select {|range, time| break time if range.include?(hour)}
# puts current_time

puts "It is the #{current_time} of the season #{current_season.capitalize}."
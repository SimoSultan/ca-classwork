def main()
    # 	Another update to this challenge!
    # This time, make it so that this line of code will give a decent result:
    # puts "Hello! I hope you're having a nice ＃{getCurrentSeason}!"
    # That line should have a result of: "Hello! I hope you're having a nice autumn!"
    # This requires wrapping your previous solution to this challenge in a method, and returning the current season as a result of the method.
    # Original challenge text:
    # This app will tell users what the current season and time of day is. eg. “It is a summer morning.”.
    # Steps:
    # Find out what day of the year it is (eg. 42 / 366)
    # Create variables for each season - these variables should store a range of days of the year (similar to above) that covers when that season occurs.
    # Check if the current day of the year falls within a certain range of days to find out what the current season is.
    # Similarly, use ranges on the current hour of the day to identify if it’s morning, noon, afternoon, evening, nighttime, midnight
    # Tell the user what stage of the day & what season of the year it is.
    # Use hashes to store the ranges for the seasons and stages of the day.
    # Keep this line of code at the end of your script:
    # puts "Hello! I hope you're having a nice ＃{getCurrentSeason}!"

    current_time = get_current_time_of_day()
    current_season = get_current_season()
    puts "It is the #{current_time} of the season #{current_season.capitalize}."
end

def get_current_time_of_day()
    # THIS IS PULLED FROM WK3 WED HASHES CANVAS CHGS
    time = Time.now
    hour = time.hour
    time_of_day = {8...12 => 'noon', 12...4 => 'afternoon', 4...8 => 'evening', 8...12 => 'nighttime', 12...4 => 'midnight', 4...8 => 'morning'}
    return current_time = time_of_day.select {|range, time| break time if range.include?(hour)}
end


def get_current_season()
    # THIS IS PULLED FROM WK3 WED HASHES CANVAS CHGS
    time = Time.now
    yday = time.yday
    seasons = {268..258 => 'spring', 259..365 => 'summer', 1..78 => 'summer', 79..172 => 'autumn', 173..267 => 'winter' }
    return current_season = seasons.select {|range, season| break season if range.include?(yday)}
end


main()

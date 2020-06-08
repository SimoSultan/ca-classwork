def palindrome (string)
    # Your code here
    # reverse = string.reverse
    string.downcase == string.downcase.reverse ? (puts "#{string} IS a palindrome!") : (puts "#{string} IS NOT a palindrome!")
  end
  
  palindrome("hello")
  palindrome("racecar")
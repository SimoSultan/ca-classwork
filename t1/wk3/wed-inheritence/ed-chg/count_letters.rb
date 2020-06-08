# PASSED TESTS

# Count Letters

# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.

# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# count_letters("mississippi") should return {"m"=>1, "i"=>4, "s"=>4, "p"=>2}

# Check your solution by running the tests:
# ruby tests/08_count_letters_test.rb

def count_letters (string)
    result = {}
      string.chars.each do |x|
          next if result.has_key?(x)
          result[x] = string.count(x)
      end	
      puts result
    return result # return the hash
  end
  
  count_letters('hello')
  count_letters("mississippi")
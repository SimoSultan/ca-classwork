# MARKED AND PASSED

class Dictionary
	
	attr_reader :words
	
	def total_words()
		puts "Total words in dictionary = #{@words.length}."
	end
	
	def initialize()
		@words = {}
	end
	
	def add_word(word, definition)
		@words[word.to_sym] = definition
	end
	
	def lookup(word)
		return @words[word.to_sym]
	end
	

end

d = Dictionary.new
d.add_word('hello', 'a greeting')
puts d.lookup('hello')
d.total_words()
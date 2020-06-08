#Parent Class
class Pokemon

    def initialize(name, speak, gender = ["male", "female"])
        @speak = speak
		@name = name
        @gender = gender.shuffle[0]
    end

    def speak
        return "#{@speak}"
    end

    def run_away
        return "#{@name} ran away"
    end
    
	def attack
        print "#{@name} performed #{@moves.shuffle[0]} "
	end
	
    def display_gender
        return "#{@name} is #{@gender}"
    end
	
end



class Pikachu < Pokemon
    def initialize(name, speak, moves = ["Quick Attack", "Lightning Bolt", "Flash", "Double Team"])
        super name, speak
        @moves = moves                
        puts "My name is #{@name} & I am a Pikachu..."
    end
	
	def speak
        super
    end

    def run_away
        super
    end
    
	def attack
        super
	end
	
    def display_gender
        super
    end
	
end


#Your Pokemon/ Animal Below
class Squirtle < Pokemon

    def initialize(name, speak, moves = ["Tackle", "Tail Whip", "Water Gun", "Withdraw"])
        super name, speak
        @moves = moves                
        puts "My name is #{@name} & I am a Squirtle..."
    end

    def speak
        super
    end

    def run_away
        super
    end
    
	def attack
        super
	end
	
    def display_gender
        super
    end
	
end


pikaFoo = Pikachu.new("PikaFoo", "Pika! Pika!")
puts pikaFoo.speak
puts pikaFoo.attack
puts pikaFoo.run_away
puts pikaFoo.display_gender

puts " "


squirty = Squirtle.new("Squirty", "Squirtle! Squirtle!")
puts squirty.speak
puts squirty.attack
puts squirty.run_away
puts squirty.display_gender
# MARKED AND PASSED

class Dog
  
    attr_reader :location, :age, :name
    
    def initialize(dog_name, dog_age, dog_location)
      @name = dog_name
      @age = dog_age
      @location = dog_location
      @walks = 0
      puts "I've been initialized!"
      
    end
    
    def speak()
      puts "#{@name} says woof! I am #{@age} years old and I live in #{@location}."
    end
  
    def walk()
      @walks += 1
      self
    end
    
    def display_walks()
      return "I have been for #{@walks} walks."
    end
  
  end
  
  doggo = Dog.new('Rover', 2, 'Brissy')
  doggo.speak
  # doggo.walk
  # doggo.walk
  # doggo.display_walks
  
  puts doggo.walk.walk.display_walks()
  
  pupper = Dog.new('Lassie', 5, 'Sydney')
  pupper.speak
  # pupper.walk
  # pupper.walk
  # pupper.display_walks
  
  puts pupper.walk.walk.display_walks()
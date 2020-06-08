#by Simo_Sultan & xxKeefer

class Animal
	 
    attr_reader :num_legs, :name
  
    def initialize(name, num_legs)
      @name = name
      @num_legs = num_legs
    end
      
  end
  
  # You code here
  
  class Dog < Animal
  
    def initialize(name)  
      super name, 4
    end
      
    def bark
      p "woof woof, my name is #{@name}"
      self
    end
    
  end
  
    
  # dog = Dog.new("Clifford")
  # dog.bark
  # p dog.num_legs
  
  # animal = Animal.new('Cat', 4)
  # p animal.name
  # p animal.num_legs
  
  
  class Corgi < Dog
    @@breeds=["Pembroke Welsh Corgi", "Cardigan Welsh Corgi"]
    
    def initialize(name)
      super name
    end
    
    def bark
      super
      p "I am the Queen's favourite dog"
    end
    
    def self.breeds
      # @@breeds.each{|d|p "A breed of Corgi is = #{d}"}
      # p @@breeds
    end
    
    # def breeds
    #   p @@breeds
    # end
    
  end
  
  
  corgi = Corgi.new("Waffles")
  corgi.bark
  
  Corgi.breeds #<-- class method
  # corgi.breeds #<-- instance method
  
  
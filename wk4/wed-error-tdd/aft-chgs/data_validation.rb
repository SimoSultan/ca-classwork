 class Dog
    attr_reader :name, :weight
    
    def initialize(name, weight)
        @weight = validate_weight(name,weight)
        @name = name

        puts "#{name} was created!" if weight < 1
        puts "#{name} has a weight of #{weight}kg." if weight > 1
    end
    
    def validate_weight(name,weight)
        raise ArgumentError.new("Error: #{name}'s weight cannot be #{weight}") if weight < 1
        rescue => e; puts e.message
    end
end

dog = Dog.new("Brad", 0)
dog1 = Dog.new("Bingo", 5)


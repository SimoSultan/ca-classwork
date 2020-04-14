class Hamburger
  
    attr_accessor :bun, :patty, :cheese, :condiments
    
    def initialize(patty, bun, cheese = true, *condiments)
      @patty = patty
      @bun = bun
      @cheese = cheese
      @condiments = condiments
    end
  
    def to_string
      @cheese == true ? word = 'with' : word = 'with no'
      @condiments.empty? ? (condiment_sent = "") : (condiment_sent = ". It also has the condiments #{@condiments.join(' and ')} on it.")
      "#{@patty} patty on a #{@bun} bun #{word} cheese#{condiment_sent}"
    end
    
    def toggle_cheese
      @cheese = !self.cheese
    end
    
    def is_vegetarian?
      return (@patty == "vegetarian") || (@patty == "veg")
    end
  end
  
  hamburger1 = Hamburger.new('veg', 'sesame seed', true, ['aioli', 'pickles'])
  puts hamburger1.is_vegetarian?
  
  
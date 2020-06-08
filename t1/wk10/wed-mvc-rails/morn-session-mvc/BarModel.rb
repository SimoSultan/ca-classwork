class BarModel 
  def initialize
    @drink_amounts = {
      beer: 10,
      martini: 10,
      coke: 10,
    }
  end

  def get_drink(drink)

    if @drink_amounts[drink] and @drink_amounts[drink] > 0
      return @drink_amounts[drink] -= 1
    end
    

  end
  
  def get_available_drinks()
    drinks = []
    @drink_amounts.each do |k,v|
      if v > 0
        drinks << k
      end
    end
    return drinks
  end

  def restock(beer: 0, martini: 0, coke: 0)
    # call this function like
    # restock(beer: 10, martini: 10, coke: 10)
    @drink_amounts[:beer] += beer if beer > 0
    @drink_amounts[:martini] += martini if martini > 0
    @drink_amounts[:coke] += coke if coke > 0
end




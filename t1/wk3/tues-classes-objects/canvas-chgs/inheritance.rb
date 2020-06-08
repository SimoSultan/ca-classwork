# THIS IS THE SAME Q. AS WED INHERITANCE AFT CHG INHERITANCE VEHICLES

class Vehicle
	
	def initialize(make, model)
		@make = make
		@model = model
		@fuel_tank = 0
	end
	
	def refuel(litres)
		if self.class == Car
			@fuel_tank + litres > 50 ? @fuel_tank = 50 : @fuel_tank += litres
		elsif self.class == Motorbike
			@fuel_tank + litres > 15 ? @fuel_tank = 15 : @fuel_tank += litres
		end
	end
	
	def fuel_level
		p "#litres in tank = #{@fuel_tank}"
	end
	
end

class Car < Vehicle
	
	def initialize(make, model)
		super make, model
	end
	
	def wind_up_windows
		p "winding up windows"	

	end
	
end


class Motorbike < Vehicle
	
	def initialize(make, model)
		super make, model
		p "initializing motorbike"
	end
	
	def wheelie
		p "I'm doing a wheelie."	
	end
	
end

civic = Car.new("Honda", "Civic")
low_rider = Motorbike.new("Harley Davidson", "Low Rider")
civic.fuel_level # -> 0L in the tank
civic.refuel(10)
civic.fuel_level # -> 10L in the tank
civic.refuel(10)
civic.fuel_level # -> 20L in the tank
civic.refuel(100)
civic.fuel_level # -> 50L in the tank

civic.wind_up_windows

low_rider.refuel(10)
low_rider.fuel_level # -> 10L in the tank
low_rider.refuel(10)
low_rider.fuel_level # -> 15L in the tank

low_rider.wheelie


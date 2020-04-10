# MARKED AND PASSED

class Vehicle
	
	def initialize(make, model)
		@make = make
		@model = model
		# p "initializing vehicle"
		@fuel_tank = 0
	end
	
	def refuel(litres)
		if self.class == Car
			@fuel_tank + litres > 50 ? "Can't refuel over max capacity!" : @fuel_tank += litres
		elsif self.class == Motorbike
			@fuel_tank + litres > 15 ? "Can't refuel over max capacity!": @fuel_tank += litres
		end
	end
	
	def fuel_level
		p "#{@fuel_tank}L in the tank"
	end
	
end

class Car < Vehicle
	
	def initialize(make, model)
		super make, model
		# p "initializing car"
	end
	
	def wind_up_windows
		p "*window noise*"

	end
	
end


class Motorbike < Vehicle
	
	def initialize(make, model)
		super make, model
		p "initializing motorbike"
	end
	
	def wheelie
		p "*wheelie noise*"	
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


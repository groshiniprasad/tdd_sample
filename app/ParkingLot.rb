parking_allotment = []
class Car 
	attr_accessor :registration_number, :color
	def initialization 
		@registration_number	=	registration_number
		@color 					= 	color
	end 
end 

class Slot 
	attr_accessor :slot_number, :ticket
	def initialization 
		@slot_number	= 	slot_number
		@ticket			= 	ticket
	end
end

class ParkingLot 
	#attr_reader :slot ==100
	def initialization
		@slot = Slot.new
	end 

	def create_Slot(number_of_slots)
		if (number_of_slots <= slot)
			number_of_slots.times do |i|
				parking_allotment[i] = {(Slot.new(i,i)) => ""}	
			end 
		else
			Puts "Invalid Input"
		end
	end
end 






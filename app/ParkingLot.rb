Parking_Allotment = []
class ParkingLot
	def initialization(Slot,Ticket)	
		@Slot = Slot
		@Ticket = Ticket
	end
	def create_Slot (number_of_Slot)
		number_of_Slot.times do | i | 
		Parking_Allotment[i] = (i == ParkingLot.new(i,i)) => ""
		end
	end
end

class Car
	def Initialization(registration_number,color)
		@registration_number = registration_number
		@color = color
	end 
	def Car_Enters(registration_number,color)
		Parking_Allotment.each do |k,v|
			v = Car.new(registration_number,color) if (my_key = k && v == “”)
			break
		end
	end
end 
		


	



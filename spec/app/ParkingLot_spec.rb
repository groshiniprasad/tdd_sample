require 'spec_helper'

describe ParkingLot do
	context "Create Slots" do 
		 it 'should only accept positive integers' do
		 	expect { ParkingLot.new.create_Slot(-1)}.to raise_error
		 end
		
		it 'should return "Parking_Allotment[6]" when 6 is entered' do
      		ParkingLot.create_Slot(6).should eq "Parking_Allotment[6] "
    	end
    	it 'should return "Parking_Allotment[4]" when 4 is entered' do
      		ParkingLot.new.create_Slot(4).should eq "Parking_Allotment[4]"
    	end
    end 
end
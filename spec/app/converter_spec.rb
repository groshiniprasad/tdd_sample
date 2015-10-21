require 'spec_helper'

describe Converter do
  context "Arabic To Roman" do
    it 'should only accept positive integers' do
      expect {Converter.new.convert_to_roman("VI")}.to raise_error
      expect {Converter.new.convert_to_roman(0)}.to raise_error
      expect {Converter.new.convert_to_roman(-1)}.to raise_error
    end

    it 'should return "I" when 1 is entered' do
      Converter.new.convert_to_roman(1).should eq "I"
    end

    it 'should return "II" when 2 is entered' do
      Converter.new.convert_to_roman(2).should eq "II"
    end
    it 'should return "L" when 50 is entered' do
      Converter.new.convert_to_roman(50).should eq "L"
    end
    it 'should return "LI" when 51 is entered' do
      Converter.new.convert_to_roman(51).should eq "LI"
    end
     it 'should return "XCIX" when 99 is entered' do
      Converter.new.convert_to_roman(99).should eq "XCIX"
    end
  end 

  context "Roman to Arabic" do 
    it 'should only acccept Strings' do 
      expect {Converter.new.convert_to_numeral(4)}.to raise_error
    end 

    it 'should return 1 when "I" is entered ' do
      Converter.new.convert_to_numeral("I").should eq 1
    end
     it 'should return 3 when "III" is entered ' do
      Converter.new.convert_to_numeral("III").should eq 3
    endbic
     it 'should return 10 when "X" is entered ' do
      Converter.new.convert_to_numeral("X").should eq 10
    end
  end
end


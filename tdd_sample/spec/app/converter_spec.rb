require 'spec_helper'

describe Converter_1 do
  context "Arabic To Roman" do
    it 'should only accept positive integers' do
      #expect {Converter.new.convert_to_roman("VI")}.to raise_error
      expect {Converter_1.new.convert_to_roman(0)}.to raise_error
      expect {Converter_1.new.convert_to_roman(-1)}.to raise_error
    end

    it 'should return "I" when 1 is entered' do
      Converter_1.new.convert_to_roman(1).should eq "I"
    end

    it 'should return "II" when 2 is entered' do
      Converter_1.new.convert_to_roman(2).should eq "II"
    end

    it 'should return "III" when 3 is entered' do
      Converter_1.new.convert_to_roman(3).should eq "III"
    end

    it 'should return "IV" when 4 is entered' do
      Converter_1.new.convert_to_roman(4).should eq "IV"
    end

    it 'should return "VI" when 6 is entered' do
      Converter_1.new.convert_to_roman(6).should eq "VI"
    end

     it 'should return "V" when 5 is entered' do
      Converter_1.new.convert_to_roman(5).should eq "V"
    end

     it 'should return "VII" when 7 is entered' do
      Converter_1.new.convert_to_roman(7).should eq "VII"
    end

     it 'should return "VIII" when 8 is entered' do
      Converter_1.new.convert_to_roman(8).should eq "VIII"
    end

     it 'should return "IX" when 8 is entered' do
      Converter_1.new.convert_to_roman(9).should eq "IX"
    end
  end


describe Converter_2 do
  context "Arabic To Roman" do
    it 'should only accept positive integers' do
      #expect {Converter.new.convert_to_roman("VI")}.to raise_error
      expect {Converter_2.new.convert_to_roman(0)}.to raise_error
      expect {Converter_2.new.convert_to_roman(-1)}.to raise_error
    end

    it 'should return "X" when 1 is entered' do
      Converter_2.new.convert_to_roman(1).should eq "X"
    end

    
    it 'should return "XX" when 2 is entered' do
      Converter_2.new.convert_to_roman(2).should eq "XX"
    end

    it 'should return "XXX" when 3 is entered' do
      Converter_2.new.convert_to_roman(3).should eq "XXX"
    end

    it 'should return "XL" when 4 is entered' do
      Converter_2.new.convert_to_roman(4).should eq "XL"
    end


    it 'should return "LX" when 6 is entered' do
      Converter_2.new.convert_to_roman(6).should eq "LX"
    end

     it 'should return "L" when 5 is entered' do
      Converter_2.new.convert_to_roman(5).should eq "L"
    end

     it 'should return "LXX" when 7 is entered' do
      Converter_2.new.convert_to_roman(7).should eq "LXX"
    end

     it 'should return "LXXX" when 8 is entered' do
      Converter_2.new.convert_to_roman(8).should eq "LXXX"
    end

     it 'should return "XC" when 8 is entered' do
      Converter_2.new.convert_to_roman(9).should eq "XC"
    end 
  end
end

end
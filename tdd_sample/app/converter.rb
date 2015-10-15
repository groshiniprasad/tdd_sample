class Converter_1
  def initialize
    @a2r_dictionary = {1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI",7 => "VII",8 => "VIII",9 => "IX"}
	@arabic_numeral = arabic_numeral 
  end
  def convert_to_roman(arabic_numeral)
    raise "Not a Number ! Only Integers Allowed" unless ((arabic_numeral.is_a?(Integer)) && (arabic_numeral > 0))
    @a2r_dictionary[arabic_numeral]
  end
end

class Converter_2
  def initialize
    @a2r_dictionary = {1 => "X", 2 => "XX", 3 => "XXX", 4 => "XL", 5 => "L", 6 => "LX",7 => "LXX",8 => "LXXX",9 => "XC"}
	@arabic_numeral = arabic_numeral  
  end
  def convert_to_roman(arabic_numeral)
    raise "Not a Number ! Only Integers Allowed" unless ((arabic_numeral.is_a?(Integer)) && (arabic_numeral > 0))
    @a2r_dictionary[arabic_numeral]
  end
end

puts arabic_numeral
arabic_numeral = gets 
destination = []
if (arabic_numeral.length == 2 && !(arabic_numeral == 0))
 	destination << Converter_1.new.convert_to_roman(arabic_numeral) 
elsif arabic_numeral.length == 3 
	if arabic_numeral[2] == 0
		destination << Converter_2.new.convert_to_roman(arabic_numeral.first) 
	else	
		destination << Converter_2.new.convert_to_roman(arabic_numeral.first) 
		destination << Converter_1.new.convert_to_roman(arabic_numeral.last) 
elsif arabic_numeral == 100 
	destination << "C"
else
	puts "Invalid Input"
puts destination



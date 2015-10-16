class Converter
  def initialize
    @units_dictionary = {0 => "",1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI",7 => "VII",8 => "VIII",9 => "IX"}
    @tens_dictionary = {1 => "X", 2 => "XX", 3 => "XXX", 4 => "XL", 5 => "L", 6 => "LX",7 => "LXX",8 => "LXXX",9 => "XC"}
    @roman_array = [ "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX","X" ]
  end

  def convert_to_numeral(roman_numeral)  
    raise "Not a Number ! Only Integers Allowed" unless (roman_numeral.is_a?(String))
    @roman_array.index(roman_numeral) + 1  
  end 
  def convert_to_roman(arabic_numeral)
    raise "Not a Number ! Only Integers Allowed" unless ((arabic_numeral.is_a?(Integer)) && (arabic_numeral > 0))
    if arabic_numeral < 10
      @units_dictionary[arabic_numeral]
    else
      convert_for_2digts(arabic_numeral)
    end
  end
  private 
  def convert_for_2digts(arabic_numeral)
    
    if (arabic_numeral < 100)
      units = arabic_numeral % 10
      tens = arabic_numeral / 10
      @tens_dictionary[tens] + @units_dictionary[units]
    elsif (arabic_numeral == 100)
      puts "C"
    else
      puts "Invalid Input"
    end
  end 
end




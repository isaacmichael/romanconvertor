def fromRoman(romanNumber)

    #I = 1
    #V = 5
    #X = 10
    #L = 50
    #C = 100
    #D = 500
    # M = 1000

    total = 0

    romanNumber.each_char.each do |letter|
      if letter =="I"
          total += 1
      elsif letter == "V"
          total += 5
      elsif letter =="X"
          total += 10
      elsif letter == "L"
          total += 50
      elsif letter == "C"
          total += 100
      elsif letter == "D"
          total += 500
      elsif letter == "M"
          total += 1000
      else
          raise TypeError.new("Letters must be capital")
      end

    end
    print(total)
    return total



end

def toRoman(arabicNumber)
  roman = ""
  if arabicNumber <= 0
    raise RangeError.new("out of range")
  end
  until arabicNumber == 0 do
    if arabicNumber >= 4000 || arabicNumber <= 0
      raise RangeError.new("out of range")
    elsif arabicNumber >=1000
    arabicNumber -= 1000
    roman += "M"
    elsif arabicNumber >= 500
      arabicNumber -= 500
      roman += "D"
    elsif arabicNumber >= 100
      arabicNumber -= 100
      roman += "C"
    elsif arabicNumber >= 50
      arabicNumber -= 50
      roman += "L"
    elsif arabicNumber >= 10
      arabicNumber -= 10
      roman += "X"
    elsif arabicNumber >= 5
      arabicNumber -= 5
      roman += "V"
    elsif arabicNumber >=1
      arabicNumber -=1
      roman += "I"
    else
      raise TypeError.new("Invalid")

    end
    end
  return roman



end

toRoman(3000)


HASH = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

class Integer
  def initialize(number)
    @number = number
  end


  def to_roman
    result = ""
    number = self  # 15
    HASH.keys.each do |key|
      quotient, modulus = number.divmod(key)
      puts "quotient and modulus = #{number.divmod(key)}"
      result << HASH[key] * quotient
      number = modulus
    end

    return result
  end
end

15.to_roman
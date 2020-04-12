# gsub method returns a copy of given string with
# all occurences of pattern substituted for the
# second argument.

# \s means any whitespace char

# =~ returns index of the first match of the string.
# if no match, returns nil

# for example: 
# pattern = /ada/
# pattern =~ "ada"    # will return 0
# pattern =~ "kate"   # will return nil

# \D means any non-digit



def valid?(luhn_number)
  return false if luhn_number.gsub(/\s/, "").length <= 1
  return false if luhn_number.gsub(/\s/, "") =~ /\D/

  # first we replace all white-spaces with empty string, 
  # then we split the string by "". Split converts to array
  # we split, because it's easier to work with array.

  # as per task, we need to double every second digit,
  # starting from the right. => for this reason, we will
  # reverse our array using .reverse  method.

  # when array is reversed we need to double every second digit.
  # to do that we need indexes, because we will be doubling numbers
  # at index 1, 3, 5, 7 and so on.

  # to get indexes we can do .each_with_index on the array

  no_white_space_number = luhn_number.gsub(/\s/, "")

  sum = no_white_space_number
    .split("")
    .reverse
    .each_with_index
    .map { |digit, index| 
      digit = digit.to_i

      if index.odd?
        digit *= 2
        digit -= 9 if digit > 9
      end

      digit
    }
    .sum

  return sum % 10 == 0
end

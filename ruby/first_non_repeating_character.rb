# Find first non-repeating character.
# Input type - String
# Input String contains only lowercase english letters
# 1 <= String Length <= 100000

# aaabaaadeeef -> b
# abcbad -> c
# abcabcabc -> "-"

# time complexity: O(n)

# 1. loop throught the string for the first time and add the
# characters as key and the number of occurences as values.
# 2. loop the string for the second time, and check if the value
# of the current character equals 1 in hash. If yes, we found the
# first non-repeating character. 
def first_non_repeating_character(string)
  hash = {}

  string.length.times do |i|
    current_char = string[i]
    if !hash.has_key?(current_char)
      hash[current_char] = 1
    else
      hash[current_char] += 1
    end
  end

  string.length.times do |i|
    current_char = string[i]
    if hash[current_char] == 1 # Hash lookups is only O(1)
      return current_char
    end
  end

  return "-"
end


str1 = "aaabaaadeeef"
str2 = "abcbad"
str3 = "abcabcabc"

p first_non_repeating_character(str1)
p first_non_repeating_character(str2)
p first_non_repeating_character(str3)
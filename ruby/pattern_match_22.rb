# LeetCode 290: Word Pattern
# Given a pattern and a string str, find if str follows the same pattern.

# Input: pattern = "abba", str = "dog cat cat dog"
# Output: true

# Input:pattern = "abba", str = "dog cat cat fish"
# Output: false

# Input: pattern = "aaaa", str = "dog cat cat dog"
# Output: false

# Input: pattern = "abba", str = "dog dog dog dog"
# Output: false

def match_pattern?(pattern, str)
  words = str.split(" ") # Convert to array
  
  return false if pattern.length != words.length # Length of pattern and array should be same

  hash = {} # Map a character to a specific word. Example, a: cat, b: dog

  pattern.length.times do |i|
    current_char = pattern[i]

    if !hash.has_key?(current_char) # If hash doesn't have a key, we will add key - value pair.
      if hash.values.include?(words[i]) # But first we need to check if values in the hash already contain the value we want to add.
        return false                    # For example, we have a: dog. The next key we are adding is b. But b has a value of dog,
      end                               # and we already have dog as a value (a: dog). In this case we return false (no pattern match).

      hash[current_char] = words[i]
    else
      if hash[current_char] != words[i] # If we already have the key in our hash, we need to check if the words[i] is the same as the value 
        return false                    # for that key. Example, pair a: dog. Next time we see a, we know we have it already and it maps 
      end                               # dog. That's why we need to check that 'a' we encountered also matches 'dog'.
    end                                 # If it's a: fish, then it's not a match.
  end

  return true
end


pattern = 'abba'
str = 'cat dog dog cat'
str2 = 'dog cat cat fish'

pattern2 = "aaaa"
str3 = "dog cat cat dog"

pattern3 = "abba"
str4 = "dog dog dog dog"

p match_pattern?(pattern, str)
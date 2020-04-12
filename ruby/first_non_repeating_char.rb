# QUESTION 2: Given a string, return the index of the 
# first nonrepeating character. 
# Example input: "adadev"  output: 4

def non_repeating_char_index(string) 
  hash = {}

  string.length.times do |i|
    if !hash.has_key?(string[i])
      hash[string[i]] = 1
    else
      hash[string[i]] += 1
    end
  end

  char =  hash.select { |char, occurence| occurence == 1}
    .map { |char, occurence| char }[0]

  return string.index(char) 
end

str = "adadev"
p non_repeating_char_index(str)
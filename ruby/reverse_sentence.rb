# Reverse a sentence
def reverse_sentence(input)
  as_array = input.split(" ")

  low = 0
  high = as_array.length - 1
  while low < high 
    temp = as_array[low]
    as_array[low] = as_array[high]
    as_array[high] = temp

    low += 1
    high -= 1
  end
  
  return as_array
end

p reverse_sentence("apple cake")

# Reverse a sentence in place
# "  I can do this!     "  =>  "     this! do can I  "
# "apple cake"  =>  "cake apple"
def reverse_characters(sentence, first_index, last_index)

  while first_index < last_index
    temp = sentence[first_index]
    sentence[first_index] = sentence[last_index]
    sentence[last_index] = temp

    first_index += 1
    last_index -= 1
  end

  return sentence
end

def reverse_in_place(sentence)
  return sentence if sentence.nil? || sentence.length == 0 || sentence == ""

  # reverse all characters in a sentence
  sentence = reverse_characters(sentence, 0, sentence.length - 1)

  current_word_start_index = 0
  
  (0..sentence.length).each do |i|
    if sentence[i] == " " || i == sentence.length
      reverse_characters(sentence, current_word_start_index, i - 1)
      current_word_start_index = i + 1
    end
  end

  return sentence
end

p reverse_in_place("apple cake")
p reverse_in_place("  I can do this!     ")
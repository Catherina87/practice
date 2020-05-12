def most_frequent(input)
  hash_count = {}
  input.each do |num|
    if hash_count[num]
      hash_count[num] += 1
    else
      hash_count[num] = 1
    end
  end

  occurencies = hash_count.values
  max_occurence = occurencies.max

  most_frequent_element = []
  hash_count.each do |key, value|
    if hash_count[key] == max_occurence
      most_frequent_element << key
    end
  end

  return most_frequent_element
end

p most_frequent([1,2,3,3,4]) # [3]
p most_frequent([1,1,1,2,3,3,3,4,5]) # [1,3]
p most_frequent([]) # []
p most_frequent([1]) # [1]
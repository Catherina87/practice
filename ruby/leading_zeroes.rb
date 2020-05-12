# print numbers with leading zeroes

# def leading_zeroes(max_length)
#   101.times do |i|
#     num_of_zeroes = max_length - i.digits.length 
#     puts "".rjust(num_of_zeroes, "0") + i.to_s
#   end
# end

# leading_zeroes(6)

def leading_zeroes(max_num_length)
  101.times do |i|
    num_of_zeroes = max_num_length - i.digits.length
    puts "0" * num_of_zeroes + i.to_s
  end
end

leading_zeroes(6)
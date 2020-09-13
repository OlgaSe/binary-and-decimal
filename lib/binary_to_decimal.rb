# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal = 0
  reverse_binary_array = binary_array.reverse
  reverse_binary_array.each_with_index do |num, index|
    decimal += num * 2 ** index
  end
  return decimal
end

binary_array = []
until binary_array.length == 8 do
  binary_array << rand(0..1)
end
p binary_array
puts "#{binary_to_decimal(binary_array)}"

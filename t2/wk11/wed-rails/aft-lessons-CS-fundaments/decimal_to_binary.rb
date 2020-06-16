# Implement a function that will convert a decimal number to binary, returning a string representation of the binary number. The input is an integer. 

# Your function should implement an algorithm that does the conversion (for example, the division method of conversion).

def decimal_to_binary(decimal)
  decimal.to_s(2)
end

def binary_to_decimal(binary)
  binary = "0b" + binary
  binary.to_i(2)
end

puts decimal_to_binary(10)

puts binary_to_decimal("1010")

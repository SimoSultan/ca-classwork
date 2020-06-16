# Number pyramid
# Number pyramid is a recursive structure where each next row is constructed by adding adjacent values of the current row. For example:

# Row 1     [1     2     3     4]
# Row 2        [3     5     7]
# Row 3           [8    12]
# Row 4             [20]
# Task
# Given the first row of the number pyramid, find the value stored in its last row.

# Examples
# reduce_pyramid([1])        ==  1
# reduce_pyramid([3, 5])     ==  8
# reduce_pyramid([3, 9, 4])  ==  25

def reduce_pyramid(pyramid)
  loop do
    temp = []
    return 0 if pyramid.empty?
    return pyramid[0] if pyramid.length == 1
    pyramid.each.with_index do |num, idx|
      break if pyramid[idx+1].nil?
      temp.push(num + pyramid[idx+1])
    end
    pyramid = temp
  end
  return pyramid
end


reduce_pyramid([1])
reduce_pyramid([3, 5])
reduce_pyramid([3, 9, 4])
reduce_pyramid([1, 2, 3, 4])
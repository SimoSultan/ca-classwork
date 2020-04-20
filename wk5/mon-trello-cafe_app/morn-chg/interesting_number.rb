def interesting_number(number)
    # problem
    # An interesting number is one with at least 3 digits,
    # in which the digits are either incrementing or decrementing.

    # params
    # When the digits are incrementing, 0 comes after 9:
    # interesting_number(7890) => true
    # When the digits are decrementing, 0 comes after 1:
    # interesting_number(3210) => true

    # my assumptions
    # if the last number is LARGER than first number order is ascending
    # if the last number is SMALLER than first number, order is descending
    # if first or last number is 0, then ignore in comparison for asc vs des

    puts ""
    arr = number.to_s.chars
    zero = {}

    if arr.include?("0")
        zero[:index] = arr.find_index("0")
        arr.delete("0")
    end

    if arr.first < arr.last
    # if first_to_compare < last_to_compare
        # this runs when ascending order
        # want to keep the array in a ascending order
        sorted = arr.sort { |a,b| a.to_i <=> b.to_i }
    else
        # this runs when descending order
        # want to keep the array in a descending order
        sorted = arr.sort{ |a,b| b.to_i <=> a.to_i }
    end

    sorted << "0" if !zero.empty?
    arr.insert(zero[:index],"0") if !zero.empty?

    puts arr.join('')
    puts sorted.join('')

    return "false: array length is not at least 3" if arr.length < 3
    return "false: original array not asc or des" if arr != sorted

    return "correct"

end

puts interesting_number(789)
puts interesting_number(321)
puts interesting_number(798)
puts interesting_number(6)
puts interesting_number(23)
puts interesting_number(7890)
puts interesting_number(1508)
puts interesting_number(8501)
puts interesting_number(1203)
puts interesting_number(1230)
puts interesting_number(57901234)






# describe "should return false when less than 3 digits" do
#     it "should return false when 1 digit" do
#         expect(interesting_number(1)).to eq(false)
#     end
#     it "should return false when 2 digits" do
#         expect(interesting_number(12)).to eq(false)
#     end
# end
# describe "should return false when not ascending or descending" do
#     it "should return false when 879" do
#         expect(interesting_number(879)).to eq(false)
#     end
# end
# describe "should return true when 3+ digits ascending" do
#     it "should return true when 3 digits ascending" do
#         expect(interesting_number(123)).to eq(true)
#     end
#     it "should return true when 4 digits ascending" do
#         expect(interesting_number(1234)).to eq(true)
#     end
#     it "should return true when ends with 890" do
#         expect(interesting_number(890)).to eq(true)
#     end
# end
# describe "should return true when 3+ digits descending" do
#     it "should return true when 3 digits descending" do
#         expect(interesting_number(321)).to eq(true)
#     end
#     it "should return true when 4 digits descending" do
#         expect(interesting_number(4321)).to eq(true)
#     end
#     it "should return true when ends with 210" do
#         expect(interesting_number(210)).to eq(true)
#     end
# end
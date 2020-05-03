# require 'prime'
# Prime.each(100) do |prime|
#     p prime  #=> 2, 3, 5, 7, 11, ...., 97
#   end


# def prime5?(num)
#     return true if num == 2
#     return false if num <= 1 || num.even?
#     3.step(Math.sqrt(num).floor, 2) { |i| return false if (num % i).zero? }
#     true
# end

def prime?(num)
    return true if num == 2
    return false if num.even? || num <= 1
    i = 3
    while i < Math.sqrt(num).floor do
        return false if (num % i).zero?
        i += 2
    end
    return true
end

for num in 1..100 do
    puts num if prime?(num)
end
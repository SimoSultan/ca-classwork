def dec_to_base(dec, base)
  # have a leftover number
  # push remainders of divide to array to create base number
  # have a leftover number that needs to be divided by again
  # do this until we get 0

  leftover = dec
  base_num = []
  while true
    base_num.push(leftover) and break if leftover < base
    rem = leftover / base
    base_num.push(rem)
    leftover -= rem * base
  end
  base_num.join
end

puts dec_to_base(7, 7)
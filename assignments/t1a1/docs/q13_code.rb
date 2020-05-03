

arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]


# ------  ORIGINAL CODE -----

# i = 0
# while (i < arr.size - 1 and arr[i] < arr[i + 1])
#   i = i + 1 end
# puts i

# arr[i] = arr[i + 1]
# arr[i + 1] = arr[i]

# puts arr.to_s




# ------  FIXED CODE -----

i = 0
while (i < arr.size - 1 and arr[i] < arr[i + 1])
    x = arr[i]
    y = arr[i+1]
    i = i + 1 
end
puts i

x = arr[i]
y = arr[i+1]

arr[i] = y
arr[i + 1] = x





# SOME BASIC CODE THAT WILL SORT THE ENTIRE ARRAY


# def sort_arr(arr)
#     arr.map.with_index do |n, i|
#         x = arr[i]
#         y = arr[i+1]
#         if x > y
#             arr[i] = y
#             arr[i+1] = x
#             sort_arr(arr)
#         end
#         return false if arr[arr.length-2] < arr[arr.length-1]
#     end
# end

# arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
# continue = true
# while continue
#     continue = sort_arr(arr)
# end

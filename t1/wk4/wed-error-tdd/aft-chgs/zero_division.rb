# MY FIRST ATTEMPT

# def divide_numbers()
#     error = ""
#     begin
#         system "clear"
#         if error != ""
#             puts error
#         end
#         e = ""
#         puts ""
#         puts "please input a number"
#         num1 = gets.strip.to_i
#         puts "please input another number to divide by the first"
#         num2 = gets.strip.to_i
#         puts ""
#         puts "Your answer is #{(num1 / num2).to_f}"         
#     rescue ZeroDivisionError
#         error = "Got a Zero Division Error. Please try again!"
#         retry
#     end
# end

# divide_numbers()


# ZEBS ALTERED ANSWER

def divide()
    puts "enter two numbers"
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i
    return num1 / num2
end

begin
    ans = divide()
    puts "result is #{ans}"
rescue
    puts "cannot divide a number by zero"
    retry
end

if 1 > 2
    p "no"


    
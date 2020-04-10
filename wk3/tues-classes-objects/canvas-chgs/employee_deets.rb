# #CLASSES WITHOUT USER INPUT
# # each employee is an object that is input by programmer

# class Employee

#     @@num_employees = 0

#     def initialize(name, salary)
#         @name = name
#         @salary = salary
#         @@num_employees += 1
#     end

#     def self.num_of_employees()
#         "There are #{@@num_employees} employees in total"
#     end

#     def show_salary()
#         "Name = #{@name} ; Salary = $#{@salary}"
#     end

#     def show_all()
        
#     end
# end

# sarah = Employee.new("Sarah", "20,000")
# ben = Employee.new("Ben", "19,000")
# john = Employee.new("John", "19,500")

# p sarah.show_salary
# p ben.show_salary
# p john.show_salary

# p Employee.num_of_employees


# # CLASSES WITH USER INPUT
# # CEO creates the list of employees
# # CEO can ask to see the salary of an individual employee
# # CEO can ask to see all employees and their salaries in her business
# # CEO can ask to see how many employees she has

# def class_with_user_input()

#     class Business

#         def initialize()
#             @employees = {}
#         end

#         def add_employee(name, salary)
#             @employees[name.to_sym] = salary
#         end

#         def self.num_of_employees()
#             "There are #{@employees.length} employees in total"
#         end

#         def show_salary(name)
#             "Name = #{name.capitalize!} ; Salary = $#{@employees[name]}"
#         end

#         def show_all()
#             @employees.each do |k,v|
#                 p "Name = #{k} ; Salary = $#{@employees[k]}"
#             end
#         end
#     end

# end

# sarah = Employee.new("Sarah", "20,000")
# ben = Employee.new("Ben", "19,000")
# john = Employee.new("John", "19,500")

# p sarah.show_salary
# p ben.show_salary
# p john.show_salary

# p Employee.num_of_employees






# DO SAME QUESTION BUT WITHOUT CLASSES


def without_class_without_user_input()

    employees = {
        sarah: 20000,
        ben: 19000,
        john: 19500,
    }

    system "clear"
    puts "*" * 80
    puts " "
    puts "Welcome to Simo_Sultan's Business Terminal App"
    puts " "
    puts "*" * 80
    puts " "

    puts "You have #{employees.length} employee/s in your business."
    puts " "

    employees.each { |k,v| puts "Name = #{k.to_s.capitalize} ; Salary = $#{v}"}
    puts " "
    
end


without_class_without_user_input()


# # DO SAME QUESTION WITH USER INPUT BUT WITHOUT CLASSES

# def without_class_with_user_input()

#     $employees = {}

#     # CAN I NOT SET FUNCTIONS AS A VALUE IN RUBY??

#     # $user_actions = {
#     #     "1" => add_employee(),
#     #     "2" => delete_employee(),
#     #     "3" => see_all_employees(),
#     #     "4" => show_emp_salary(),
#     #     "5" => edit_emp_salary(),
#     #     "6" => outro(),
#     #     "E" => outro(),
#     # }


#     finished = false
#     until finished 

#         # display intro message
#         header_intro()
#         # ask user what they want to do
#         resp = ask_user_action()

#         case resp
#         when "1"
#             add_employee()
#         when "2"
#             delete_employee()
#         when "3"
#             see_all_employees()
#         when "4"
#             show_emp_salary()
#         when "5"
#             edit_emp_salary()
#         when "6"
#             resp = outro()
#         when "E"
#             resp = outro()
#         end
#     end

# end


# def header_intro()
#     system "clear"
#     puts "*" * 80
#     puts " "
#     puts "Welcome to Simo_Sultan's Business Terminal App"
#     puts " "
#     puts "*" * 80
#     puts " "
# end


# def outro()
#     system "clear"
#     puts "*" * 80
#     puts " "
#     puts "Thank you for using Simo_Sultan's Business Terminal App"
#     puts " "
#     puts "*" * 80
#     puts " "
#     sleep 3
#     return (finished = true)
# end

# def ask_user_action()
#     puts "What would you like to do?"
#     puts " "
#     puts "[1] Create an employee"
#     puts "[2] Delete an employee"
#     puts "[3] See a list of your employees and their salaries"
#     puts "[4] Show someone's salary."
#     puts "[5] Edit the salary of an employee"
#     puts "[6] or [E]xit"
#     puts " "

#     print "Input: "; resp = gets.strip

#     return resp
#     # normally would confirm user's input here
# end



# def add_employee()
    

#     # keep asking user to add employees until they type 'Q'
#     finished = false
#     until finished

#         header_intro()

#         puts " "
#         puts "What is the name of the employee you would like to submit? [Q]uit to finish"
#         print "Input: "; name = gets.strip.downcase.capitalize!
#         puts " "

#         break (finished = true) if name == "Q"

#         puts "And what is their salary? (in numbers)"
#         print "Input: "; salary = gets.strip.to_i
#         puts " "

#         $employees[name.to_sym] = salary
#         puts "Great! #{name} has been added to your list of employees."

#         sleep 2
#     end
    
# end


# def show_employee_names()
#     puts " "
#     $employees.each_key { |k| puts "#{k}" }
# end



# def delete_employee()
#     header_intro()

#     puts "Which employee would you like to remove from the business?"
#     show_employee_names()

#     puts " "
#     print "Input: "; name = gets.strip.downcase.capitalize!
#     puts " "
#     puts "Are you sure you wish to remove #{name}? y/n"
#     print "Input: "; ans = gets.strip.downcase[0]

#     if ans == "y"
#         $employees.delete(name.to_sym)
#         puts "#{name} has ben removed from the business."
#     end
#     sleep 3

#     return
# end


# def show_emp_salary()
#     header_intro()

#     puts "Which employee's salary would you like to see?"
#     show_employee_names()
#     puts " "
#     print "Input: "; name = gets.strip.downcase.capitalize!
#     puts " "

#     puts "#{name}'s salary = $#{$employees[name.to_sym]}"
#     puts " "
#     sleep 3
#     return
# end



# def edit_emp_salary()
#     header_intro()

#     puts "Which employee's salary would you like to edit?"
#     show_employee_names()
#     puts " "
#     print "Input: "; name = gets.strip.downcase.capitalize!
#     puts " "

#     puts "#{name}'s current salary is $#{$employees[name.to_sym]}'"
#     puts " "

#     puts "What is their new salary?"
#     print "Input: "; new_salary = gets.strip.to_i

#     $employees[name.to_sym] = new_salary

#     puts "#{name}'s new salary is $#{$employees[name.to_sym]}'"
#     puts " "
#     sleep 4
#     return
# end


# def see_all_employees()
#     header_intro()
#     $employees.each do |k,v|
#         puts "Name = #{k} ; Salary = $#{$employees[k]}."
#     end
#     puts " "
#     sleep 4
#     return
# end

# without_class_with_user_input()
# Q15
# 2 variables: raining (boolean) and temperature (integer). 
# If it’s raining and the temperature is less than 15 degrees, 
# print to the screen “It’s wet and cold”, 
# if it is less than 15 but not raining print “It’s not raining but cold”. 
# If it’s greater than or equal to 15 but not raining print “It’s warm but not raining”, 
# and otherwise tell them “It’s warm and raining”.



def raining_temp(temp, raining)
  if temp < 15
    raining ? (puts "It's wet and cold") : (puts "It's not raining but cold") 
  else
    raining ? (puts "It's warm and raining") : (puts "It's warm but not raining") 
  end
end

raining_temp(14,true)
raining_temp(14,false)
raining_temp(24,false)
raining_temp(24,true)
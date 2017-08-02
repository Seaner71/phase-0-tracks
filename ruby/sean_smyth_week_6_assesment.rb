#Overall there are some great  sections, though I think this could use a refactor; if you send me your refactored work I'll re-review it.

#Be sure to track your work with git and then use multiple descriptive git commits

#How could you do this problem if you didnt use send?
#Hint - base your decesion of what the operator looks like
#question 2
def calculate(int,operator,int_2)
  if operator == "+"
    int + int_2
  elsif operator == "-"
    int - int_2
  elsif operator == "/"
    int/int_2
  elsif operator == "*"
    int * int_2
  else
    return nil
  end
end
 # p calculate(4,"+",5)
 # p calculate(4,"-",5)
 # p calculate(4,"*",5)
 # p calculate(10,"/",5)  
#Question 3 
# allow user to input a formula 
# parse the user input to give the calculate method the parameters it needs
# print the result of the users formula

# Commented out since it is part of mext section but wanted to show work

# equation = ''
# puts "enter an equation number with 2 integers separated by an operator(+,-,*,/)"
#   equation = gets.chomp.split(' ')
#   num1 = equation[0].to_i
#   op1 = equation[1]
#   num2 = equation[2].to_i
#   puts calculate(num1,op1,num2)
#You have a collection with things in it, do we need to count them up 1 by 1 or does the collection have a method that will tell us that 

# Question 4 
# make it so the user can enter as many formulas as they desire(potentially infinite)
# allow user to exit by typing done

# Commented out since it is part of mext section but wanted to show work


# loop do
# puts "enter an equation number with 2 integers separated by an operator(+,-,*,/)"
#   equation = gets.chomp.split(' ')
#   break if equation == ["done"]
#   num1 = equation[0].to_i
#   op1 = equation[1]
#   num2 = equation[2].to_i
#   puts calculate(num1,op1,num2)
# end 

# Question 5
# add the users input and calculation into a data structure - Hash
# FIGURE OUT WHERE TO PUT THE HASH - INSIDE LOOP OVERWRITES - OUTSIDE LOOP CAN'T ACCESS VARIABLE - WRAP IN A METHOD??
# works unless user enters the same formula twice - see overwrite issue above
# iterate through the data structure and output the key and value as string to user
# equation = ''
result_hash ={}
loop do
puts "enter an equation number with 2 integers separated by an operator(+,-,*,/)"
  equation = gets.chomp.split(' ')
  break if equation == ["done"]
  num1 = equation[0].to_i
  op1 = equation[1]
  num2 = equation[2].to_i
  result = calculate(num1,op1,num2) 
  if result  # doesnt add result to hash if input is invalid
    p result
    result_hash[equation] = result #DOES NOT BELONG INSIDE LOOP - OVERWRITES NON UNIQUES EQUATIONS # NEED TO FIGURE OUT HASH OUTSIDE OF LOOP THAT HAS ACCESS TO VARIABLE  WRAP IN LOOP?
  else puts "The input was invalid. Did you enter it in the format 'number mathoperator number'?"
  end   
end 

puts "#{result_hash.count} calcualtions performed" 
#Good this is how to iterate through a hash.
result_hash.each do |eq, result|
  # if result != nil # doesn't print if value is nil
  puts "#{eq.join(" ")} = #{result}"
  # end
end

#Question 6
# update to handle user enter errors
# user might enter without spaces
# user might mistype 'done' - WORK ON THIS
# user might enter a letter instead of a number - WORK ON THIS
# do not return output from invalid entry
# used .Values for total calcualtions performed
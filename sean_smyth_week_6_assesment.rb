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
equation = ''
puts "enter an equation number with 2 integers separated by an operator(+,-,*,/)"
  equation = gets.chomp.split(' ')
  num1 = equation[0].to_i
  op1 = equation[1]
  num2 = equation[2].to_i
  puts calculate(num1,op1,num2)
#You have a collection with things in it, do we need to count them up 1 by 1 or does the collection have a method that will tell us that 

# Question 4 
# make it so the user can enter as many formulas as they desire(potentially infinite)
# allow user to exit by typing done

loop do
puts "enter an equation number with 2 integers separated by an operator(+,-,*,/)"
  equation = gets.chomp.split(' ')
  break if equation == ["done"]
  num1 = equation[0].to_i
  op1 = equation[1]
  num2 = equation[2].to_i
  puts calculate(num1,op1,num2)
end 
# hash ={}
# until equation == ["done"]
# puts "enter an equation number with 2 integers separated by an operator(+,-,*,/)"
#   equation = gets.chomp.split(' ')
#   break if equation == "done"
#   p equation
#   num1 = equation[0].to_i
# 	op1 = equation[1]
# 	num2 = equation[2].to_i
# 	puts calculate(num1,op1,num2)
#   hash[:equation] = calculate(num1,op1,num2)
# end

# p "#{hash.count} calculations performed"
# #Good this is how to iterate through a hash.
# hash.each do |eq, result|
#   puts "#{eq} = #{result}"
# end

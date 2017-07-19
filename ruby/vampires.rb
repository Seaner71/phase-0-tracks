puts "How many employees will you be processing?"
employees_processed = gets.chomp.to_i

completed_process = 0 
 until completed_process == employees_processed

    puts "What is your name?"
    employee_name = gets.chomp
    puts "How old are you?"
    employee_claim_age = gets.chomp.to_i
    puts "What year were you born?"
    employee_birth_year = gets.chomp.to_i
    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    employee_like_garlic = gets.chomp
    puts "Would you like to enroll in the company’s health insurance? "
    employee_health_insurance = gets.chomp
    employee_math_age = 2017 - employee_birth_year
    allergies = "" 
     while allergies != "sunshine" 
      puts "List any allergies: (Type done when complete)"
      allergies = gets.chomp
      break if allergies == "done"
    end
    completed_process +=1 
    case
    	when ((employee_math_age) == (employee_claim_age) || employee_math_age == (employee_claim_age + 1)) && (employee_like_garlic == "yes" || employee_health_insurance == "yes")
    		puts "Probably not a vampire."	
    	when ((employee_math_age) != (employee_claim_age) || employee_math_age == (employee_claim_age + 1)) && (employee_like_garlic == "no" || employee_health_insurance == "no")
    		  puts "Probably a vampire."		
      	when ((employee_math_age) != (employee_claim_age) || employee_math_age == (employee_claim_age + 1)) && employee_like_garlic == "no" && employee_health_insurance == "no"
    		      puts "Almost certainly a vampire."
    	when  employee_name == "Drake Cula" || employee_name == "Tu Fang" || employee_name == "Edward Cullen"
    		        puts "Definitely a vampire."		
    	else
    	          puts "Results inconclusive."
      end
   end

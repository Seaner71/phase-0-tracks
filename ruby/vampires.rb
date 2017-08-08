puts "How many employees will you be processing?"
employees_processed = gets.chomp.to_i

completed_process = 0 
 until completed_process == employees_processed

    puts "What is your name?"
    em_name = gets.chomp
    puts "How old are you?"
    age = gets.chomp.to_i
    puts "What year were you born?"
    birth_year = gets.chomp.to_i
    if (Time.new.year - birth_year) == age
      age = true
     else
      age = false
     end
    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    like_garlic = gets.chomp
      if like_garlic == "y"
        like_garlic = true
      else 
        like_garlic = false
      end
    puts "Would you like to enroll in the company’s health insurance? "
    health_insurance = gets.chomp
    if health_insurance == "y"
        health_insurance = true
      else 
       health_insurance = false
    end
    puts "List any allergies: (Type done when complete)"
      allergies = gets.chomp
    until allergies == "sunlight" || allergies == "done"
      allergies = gets.chomp
    end
    completed_process +=1 
      if age  && (like_garlic || health_insurance)
        status = "Probably not a vampire."
      end
      if !age && (!like_garlic || !health_insurance)
        status = "Probably a vampire."  
      end
      if !age && !like_garlic && !health_insurance
        status = "Almost certainly a vampire."  
      end
      if em_name == "Drake Cula" || em_name == "Tu Fang"
        status = "Definitely a vampire."
     end
      if allergies == "sunlight"
        status = "Probably a vampire"
    end
    if status == nil 
        status = "Results inconclusive."
      end
     puts status
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

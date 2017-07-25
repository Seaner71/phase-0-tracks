# Create an empty hash
# Ask the user for the client's details
# Convert the user info into a key: value hash to assocatiate the proper information
# print out the completed hash to the user to check
# offer the user the opportunity to update any information or exit
# overwrite new information with user new response
# Reprint the updated hash

client_details = {}
puts "Please enter the client's full name:"
	client_details[:full_name] =  gets.chomp
puts "Please enter the client's age:"
	client_details[:age] =  gets.chomp.to_i
puts "Please enter the client's number of children:" 
	client_details[:children] =  gets.chomp.to_i
puts "Does the client like large triangles? (y or n)?" # create a boolean has key:value
	triangles = gets.chomp
		if triangles == "y"
			client_details[:triangles] = true
		else
			client_details[:triangles]	= false
		end		
puts "What is the client's favorite color?"
	client_details[:fav_color] = gets.chomp
puts "What is the client's annual income?"
	client_details[:income] = gets.chomp.to_f	
puts client_details 

puts "Please review the client's information. Enter the category to correct or 'none'?" 
puts client_details.keys   
	client_confirm = gets.chomp.to_sym
	if client_confirm == :none
	  puts "Thank you for entering the information."
	  else
	case
        when  client_confirm == :full_name
          puts "What is the correct name?"
          client_details[:full_name] =  gets.chomp
        when  client_confirm == :age
          puts "What is the correct age?"
          client_details[:age] =  gets.chomp.to_i
        when  client_confirm == :children
          puts "What is the correct # of children?"
          client_details[:children] =  gets.chomp.to_i
        when  client_confirm == :triangles
          if client_details[:triangles] == true
            client_details[:triangles] = false
          else client_details[:triangles] = true
          end
        when  client_confirm == :fav_color
          puts "What is the correct favorite color?"
          client_details[:fav_color] =  gets.chomp 
        when  client_confirm == :income
          puts "What is the correct annual income ?"
          client_details[:income] =  gets.chomp.to_f
        else
          puts "Im sorry you can not update the information without the correct category"
  end
puts "Here is the client's updated information:"	
puts client_details
end
# Create an empty hash
# Ask the user for the client's details
# Convert the user info into a key: value hash to assocatiate the prper information
# print out the completed hash to the user to check
# offer the user the opportunity to update any information or exit
# Reprint the updated hash

client_details = {}
puts "Please enter the client's full name:"
	client_details["Full name"] =  gets.chomp
puts "Please enter the client's age:"
	client_details[:age] =  gets.chomp.to_i
puts "Please enter the client's number of children:"
	client_details[:children] =  gets.chomp.to_i
puts "Does the client like large triangles? (y or n)?"
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

puts "Please review the client's information. Is it correct? (y or n)?"
	client_confirm = gets.chomp
	if client_confirm == "y"
		puts "Thank you for entering the information. Here is the client's information:"
		puts client_details
	else
	  puts "Which information is incorrect?"
		client_details.each {|key, value| puts key}
		corrected_category = gets.chomp
	case
      when  corrected_category == "Full name"
        puts "What is the correct name?"
        client_details["Full name"] =  gets.chomp
      when  corrected_category == "age"
        puts "What is the correct age?"
        client_details[:age] =  gets.chomp
      when  corrected_category == "children"
        puts "What is the correct # of children?"
        client_details[:children] =  gets.chomp.to_i
      when  corrected_category == "triangles"
        if client_details[:triangles] == true
          client_details[:triangles] = false
        else client_details 
        end
      when  corrected_category == "fav_color"
        puts "What is the correct favorite color?"
        client_details[:fav_color] =  gets.chomp 
      when  corrected_category == "income"
        puts "What is the correct annual income ?"
        client_details[:income] =  gets.chomp.to_f
      else
        puts "Im sorry you can not update the information without the correct category"
	  end
	
puts client_details
		
end		
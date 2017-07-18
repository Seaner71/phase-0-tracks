puts "Hamster's name:"
hamster_name = gets.chomp
puts "Volume level:"
volume_level = gets.chomp.to_i
puts "Fur color:"
fur_color = gets.chomp	
puts "Good candidate for adoption (y/n)?"
candidate = gets.chomp
if candidate == "y"
  candidate = true
else candidate = false
end
puts "Estimated age:"
age = gets.chomp.to_i
if age == ""
  age = nil
end
if volume_level >= 6
  noise_level = "loud"
else
  noise_level = "quiet" 
end

puts "Hamster's name is: #{hamster_name}"
puts "Volume level is: #{volume_level}"
puts "Fur color is: #{fur_color}"
puts "Estimated age: #{age}"
if candidate == true
  puts "#{hamster_name} is a #{noise_level} #{age} year old #{fur_color} hamster and is good for adoption"
else
  puts "#{hamster_name} is a #{noise_level} #{age} year old #{fur_color} hamster and is NOT good for adoption"
end



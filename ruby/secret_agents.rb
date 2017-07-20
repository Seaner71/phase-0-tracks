=begin
Algo for Encrypt
1. accept a string as input
2. index each letter in the string 
3. take first letter in the string
4. change that letter to the next letter sequentially in the alphabet (.next function)
5. repeat  for each additional letter in the string - loop steps 2 through 4

Algo for Decrypt
1. accept a string as input
2. index each letter in the string 
3. take first letter in the string
4. change that letter to the next letter sequentially in the alphabet. 
	-Logic to achieve ??  
	-index the whole alphabet
	- assign each letter to the alphabet index. subtract one from the assignment
5. repeat  for each additional letter in the string - loop steps 2 through 4
=end

def encrypt(string)
  count = 0
  while count < string.length
    string[count] = string[count].next
    count += 1
  end
  return string
end
puts encrypt("abc")

def decrypt(string)
  count = 0
  while count < string.length
  string[count] =  "abcdefghijklmnopqrstuvwxyz"["abcdefghijklmnopqrstuvwxyz".index(string[count])-1]
   count += 1
  end
  return string
end

puts decrypt("ghi")
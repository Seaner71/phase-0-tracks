=begin
Algo for Encrypt
1. accept a string as input
3. take first letter in the string
4. change that letter to the next letter sequentially in the alphabet (.next function)
	-add edge case logic
5. repeat  for each additional letter in the string - loop steps 2 through 4

Algo for Decrypt
1. accept a string as input
2. index each letter in the string 
3. take first letter in the string
4. change that letter to the next letter sequentially in the alphabet. 
	-index the whole alphabet
	-get nummerical position of letter. subtract one from that
	-use (numerical position -1) to reindex to new letter
5. repeat  for each additional letter in the string - loop steps 2 through 4
=end

def encrypt(string)
  count = 0
  
  while count < string.length
  if string[count] =="z" # add edge case logic to overcome z.next = aa
      string[count] = "a"
  else
    string[count] = string[count].next # increment forward one letter
  end   
    count += 1
  end
  return string
end


def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz" # set variable to alphabet for readability
  count = 0
  while count < string.length
  string[count] =  alphabet[alphabet.index(string[count])-1] # get letter's position in alphabet -1 (convert letter to index# -1) then convert index# back to a letter 
   count += 1
  end
  return string
end


puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
puts decrypt(encrypt("swordfish"))

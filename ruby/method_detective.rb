# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase # or "iNvEsTiGaTiOn".swapcase! returning nil if no changes were made i.e on a non-letter "!" returns nil
#=> “InVeStIgAtIoN”

"zom".insert(0,"o") #index,"other_str")	
#=> “zoom”

"enhance".center(20) #(width, padstr(optional))centers text within a string can pad it if desired
#=> "    enhance    "

 "Stop! You’re under arrest!".upcase #or .upcase! returning nil if no changes were made i.e on a non-letter "!" returns nil
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects") 
"the usual".insert(9, " suspects")
"the usual" + " suspects" # .concat("other_str") insert(index, str) + other_str
#=> "the usual suspects"
		
 " suspects".insert(0,"the usual") # (index,"str") 
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The mystery of the missing first letter".slice(0.-2) 	 
# => "The case of the disappearing last lette"

 "The mystery of the missing first letter".slice(1..-1) 
 "The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".squeeze("")
# => "Elementary, my dear Watson!"

 "z".ord  # 122 is the ASCI Decimal for char "z"
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count("a") 
# => 4
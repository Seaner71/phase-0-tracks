// In comments, pseudocode a function that takes a string as a parameter and reverses the string.
 // reverse("hello"), for example, should return "olleh"

// take a word 
// the first letter of the word should be replaced with the last letter
// the second letter should be replaces with second to last letter and 
// so on until the last letter is replaced with the first
//  things to think about: index starts at 0 so a 4("four")letter word f=0,o=1,u=2,r=3,
			// the length built in will return 4
			// in example f will be replaced with r so first letter needs to become word length -1
			// in the loop examples returned on each line - get around by assign to new variable 


function reverseString(str) {
	var newstr = "";
	for (var i = 0; i < str.length; i++) {
   newstr += str[str.length - (i+1)];
}
 	return (newstr);
}	

var doneReverse = reverseString("help me if you can!")

if (1 == 1 && "four".length == 4){
	console.log(doneReverse);
}
else{
	console.log("Can't reverse that string until we figure out basic math.");
}
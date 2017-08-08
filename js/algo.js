// Release 0 Find the longest phrase
// take a list with n number of different phrases in it
// find the length each phrase in the list
// compare the length to each other - set length to 0 and iterate through the list replacing length to current if greater
// return the longest phrase

function findLongest(phrase) {
	var longlength = 0;
	var longword = ''
	for (var i = 0; i < (phrase.length); i++) {
	  if (longlength < phrase[i].length){
    	longlength = phrase[i].length;
    	longword =phrase[i]
}
}
	return (longword);
}	

// Release 1 Find a Key-Value Match
// take 2 objects  with key value pairs
// compare the objescts to see if either pair has a match in other pair
//  this is very confusingly worded 
// need to iterate through the object 1 keys and compare its value to object2 value
//  

function matchValue(object1,object2){
	key = (Object.keys(object1))
	key2 = (Object.keys(object2))
for (var i = 0; i < key.length; i++){
	if (object1[key[i]] == object2[key[i]]){
		return true}
}
		return false		
}
 

// Release 2 Generate Random Test Data

function randomWord() {
	var alpha = "abcdefghijklmnopqrstuvwxyz"
	var randstr = ""
	var wordlen = Math.floor(Math.random()*10) +1
  	for (i = 0; i < wordlen; i++) {
		var alphagen = Math.floor(Math.random()*25) +1   
  	randstr += alpha.charAt(alphagen)
}
		return randstr
}



// code thoughts to get to three words
// var randArray =[]   
//   for (i=0; i < integer; i++){
// randArray.push(randstr)


// Driver Code

// Release 0 driver code
console.log(findLongest(["long phrase","longest phrase","longer phrase"]))
console.log(findLongest(["long phrase","longest phrase","longer phrase", "longerererer phrase"]))

// Release 1 Driver code

console.log(matchValue({name: "sean1",age: 54}, {name: "sean",age: 53}))

console.log(matchValue({name: "Steven", age: 52}, {name: "Ste2ven", age: 54})); 
console.log(matchValue({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})); 

console.log(randomWord());
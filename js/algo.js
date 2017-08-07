// take a list with n number of different phrases in it
// find the length each phrase in the list
// compare the length to each other - how compare to un
// return the longest phrase
// 

var phrase = ["long phrase","longest phrase","longer phrase"]

function findLongest(wordPhrase) {
	keyValue = {}
	for (var i = 0; i < wordPhrase.length; i++) {
 		keyValue[wordPhrase[i]] = wordPhrase[i].length ;
 		}
    
   console.log(keyValue)
}
	 	
findLongest(phrase)

function findLarge(phrase) {
	for (var i = 0; i < (phrase.length); i++) {
	
  if (phrase[i] > phrase[i+1])
  {
    console.log(phrase[i])
    y =	phrase.splice(i,1)
}
}
	return (phrase);
}	

findLarge([11,18,17,11])
console.log(y)
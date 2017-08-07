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
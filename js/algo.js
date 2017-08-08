// take a list with n number of different phrases in it
// find the length each phrase in the list
// compare the length to each other - how compare to un
// return the longest phrase
// 

// function findLongest(wordPhrase) {
// 	keyValue = {}
// 	for (var i = 0; i < wordPhrase.length; i++) {
//  		keyValue[wordPhrase[i]] = wordPhrase[i].length ;
//  		}
    
//    console.log(keyValue)
// }
	 	
// findLongest(phrase)

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

console.log(findLongest(["long phrase","longest phrase","longer phrase", "longerererer phrase"]))

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

console.log(randomWord());

// code thoughts to get to three words
// var randArray =[]   
//   for (i=0; i < integer; i++){
// randArray.push(randstr)
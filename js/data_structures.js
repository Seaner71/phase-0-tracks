var colors = ['brown','black','white','yellow'];
var horses = ['Tom','Mary','Buttercup', 'American Pharoh'];

colors.push('green');
horses.push('Jerry');

horseColor = {}
for (var i = 0; i < horses.length-1; i++) {
	horseColor[horses[i]] = colors[i];
}	

console.log(horseColor)

function Car (make, year, color) {
	this.make = make;
	this.year = year;
	this.color = color;
	this.accelerate = function() {console.log("Accelerating to 40 mph")};

		console.log("CAR INITIALIZATION COMPLETE");
}

var corvette = new Car("chevy","1980","red");
corvette.accelerate();
console.log(corvette);
console.log("---------");
var pinto = new Car("Amc","1980","blue");
pinto.accelerate();
console.log(pinto);
console.log("---------");
var camry = new Car("Toyota","2015","blue");
camry.accelerate();
console.log(camry);
console.log("---------");
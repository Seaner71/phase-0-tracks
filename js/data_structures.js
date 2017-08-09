var colors = ['brown','black','white','yellow'];
var horses = ['Tom','Mary','Buttercup', 'American Pharoh'];

colors.push('green');
horses.push('Jerry');

horseColor = {}
for (var i = 0; i < horses.length-1; i++) {
	horseColor[horses[i]] = colors[i];
}

console.log(horseColor)
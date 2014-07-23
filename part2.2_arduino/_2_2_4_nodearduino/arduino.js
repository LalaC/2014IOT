var SerialPort = require("serialport"); // so we can access the serial port
var scraper = require('json-scrape')(); // cleans messy serial messages.

//LIST DEVICES
SerialPort.list( function (err, ports) {
	for (var num in ports) {
		console.log(ports[num])
	}
});

//CONNECT
var arduino = new SerialPort.SerialPort('COM7', {baudrate: 9600}); //you must set the port and baudrate

var arduConnect = function (connection) {
	connection.on("data", arduDatahandler);
}

var arduDatahandler = function (data) {
	//var strdata = data.toString()
	scraper.write(data); 
}

scraper.on('data', function (cleandata) {
	console.log(cleandata)		
});

/*
// TO SEND TO ARDUINO
// ideally this will be called from the browser event with socket io. 
// more in a later class on this.

	var data = { brightness: "0.1" }
	var test = JSON.stringify(data)    // turns into string to send
	console.log(test)
	arduino.write(test)
*/

arduConnect(arduino);




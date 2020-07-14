var app = require('express')();
var http = require('http').createServer(app);
var io = require('socket.io')(http);

app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

io.on('connection', function(socket){
	socket.on('chat message', function(msg){
		console.log('message: ' + msg);
		io.emit('chat message', msg);
	});

	setInterval(function(){ 
		io.emit('viewbeacon', '');
	}, 10000);
  
  
});


http.listen(1311, function(){
  console.log('listening on *:1311');
});
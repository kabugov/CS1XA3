window.addEventListener('load', () =>{
	const canvas = document.querySelector('#canvas');
	const context = canvas.getContext('2d');

	// Resizing

	canvas.height = window.innerHeight;
	canvas.width = window.innerWidth;

	context.font = "30px Comic Sans MS";
	context.fillStyle = "red";
	context.textAlign = "center";
	context.fillText("Welcome to Victor's Magic Marker Drawing App", canvas.width / 2, canvas.height / 2);

	// Variables

	let painting = false;

	function startPosition(e){
		painting = true;
		draw(e);
	}

	function endPosition(){
		painting = false;
		context.beginPath();
	}

	function draw(e){

		if(!painting) return;

		context.lineWidth = 50;
		context.lineCap = 'round';

		context.lineTo(e.clientX, e.clientY);
		context.stroke();
		context.beginPath();
		context.moveTo(e.clientX, e.clientY);
		context.strokeStyle = '#'+Math.random().toString(16).substr(-6);
	}


	// EventListeners

	canvas.addEventListener('mousedown', startPosition);
	canvas.addEventListener('mouseup', endPosition);
	canvas.addEventListener('mousemove', draw);
	canvas.addEventListener('click', );

});

window.addEventListener('resize', () =>{

	const canvas = document.querySelector('#canvas');
	const context = canvas.getContext('2d');

	// Resizing

	canvas.height = window.innerHeight;
	canvas.width = window.innerWidth;

	context.font = "20px Comic Sans MS";
	context.fillStyle = "red";
	context.textAlign = "center";
	context.fillText("Welcome to Victor's Magic Marker Drawing App", canvas.width / 2, canvas.height / 2);

	// Variables

	let painting = false;

	function startPosition(e){
		painting = true;
		draw(e);
	}

	function endPosition(){
		painting = false;
		context.beginPath();
	}

	function draw(e){

		if(!painting) return;

		context.lineWidth = 50;
		context.lineCap = 'round';

		context.lineTo(e.clientX, e.clientY);
		context.stroke();
		context.beginPath();
		context.moveTo(e.clientX, e.clientY);
		context.strokeStyle = '#'+Math.random().toString(16).substr(-6);
	}

	// EventListeners

	canvas.addEventListener('mousedown', startPosition);
	canvas.addEventListener('mouseup', endPosition);
	canvas.addEventListener('mousemove', draw);

});
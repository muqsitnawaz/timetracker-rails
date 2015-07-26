$(document).on('ready page:load', function() {
	drawPath();
});


// function fro drawing logo
function drawPath() {
	var canvas = document.getElementById("logocanvas");
	if (canvas.getContext) {
		var ctx = canvas.getContext("2d");
		ctx.fillStyle="rgba(255, 255, 255, 0.8)";
		
		// creating first triangle
		ctx.beginPath();
		ctx.moveTo(0, 0);
		ctx.lineTo(90, 0);
		ctx.lineTo(90, 100);
		ctx.fill();

		// creating second triangle
		ctx.beginPath();
		ctx.moveTo(50, 0);
		ctx.lineTo(70, 150);
		ctx.lineTo(90, 0);
		ctx.fill();

		ctx.fillStyle="#fff";
		ctx.font="small-caps bold 37px 'Georgia'"
		ctx.textAlign="left";
		ctx.fillText("Time", 100, 50);
		ctx.fillText("Tracker", 100, 100);
	}
}
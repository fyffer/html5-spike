function draw(project_name) {
  var canvas = document.getElementById("canvas");
  var ctx = canvas.getContext("2d");

  var centerX = canvas.width / 2;
  var centerY = canvas.height / 2;
  var radius = 70;

  ctx.beginPath();
  ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
  ctx.fillStyle = "#2498D9";
  ctx.fill();
  ctx.lineWidth = 5;
  ctx.strokeStyle = "black";
  ctx.stroke();

  ctx.textAlign = "center";
  ctx.fillStyle = "black";
  ctx.fillText("Hello World!", centerX, centerY);


}


$(function() {

  $("#canvas").click(function() {

    draw("project name");
  })
});

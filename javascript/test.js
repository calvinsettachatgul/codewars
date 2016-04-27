$(document).ready(function(){
    console.log("this is a test of the js scripts");

    var $button = $("#callToAction");

    $button.on("click", fillDisplay);
})

var fillDisplay = function(event){
  var $textbox = $("#userInput");
  console.log($textbox);
  console.log(event);
}
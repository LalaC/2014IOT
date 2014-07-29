
$(document).ready(function(){
   var rTrack = document.getElementById('rAudio');
   var bTrack = document.getElementById('bAudio');
   
   
   $('#leftknob').click(function() {
      console.log("clicky")
    rTrack.currentTime= 0;
    rTrack.play();
    bTrack.pause();
    $('#trackname').html("track 1")
   });
   
   
   
   $('#rightknob').mousedown(function() {
    console.log("clicky")
    rTrack.pause();
    bTrack.currentTime= 0;
    bTrack.play();
    $('#trackname').html("track 2")
   });
   
});



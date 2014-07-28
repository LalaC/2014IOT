alert("debug");

$(document).ready(function(){
   var rTrack = document.getElementById('rAudio');
   var bTrack = document.getElementById('bAudio');
   
   
   $('#leftknob').mousedown(function() {
    rTrack.currentTime= 0;
    rTrack.play();
   });
   
     $('#rightknob').mousedown(function() {
    bTrack.currentTime= 0;
    bTrack.play();
   });
   
});

 $( document ).ready( function() {
    
    $('#leftknob').click(function() {
        
        if ($(this).hasClass('leftknobon')) {
            $(this).removeClass('leftknobon').addClass('leftknobof');
        } else {
            $(this).removeClass('leftknobof').addClass('leftknobon');
        }
    
    });
});
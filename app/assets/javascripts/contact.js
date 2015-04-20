// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
document.addEventListener('DOMContentLoaded', function() {
  var submit_button = document.getElementById('submit_form');
  submit_button.addEventListener('click', function(){
    document.getElementById('contacts').submit();
  });
});

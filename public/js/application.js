$(document).ready(function() {
  $('#tweetout').on('submit', function(e){
    e.preventDefault();
    $.ajax({
      url: this.action,
      type: this.method,
    })
    .done(function() {
      $('#tweets').text("You tweeted:" + $('#tweet').val())
    })
    .fail(function() {
      $('#tweets').text('No Tweeting for you.')
    });
  });
});

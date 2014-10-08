// Config
var userName = 'endangeredmassa';


// Utils
function waitsFor(condition, callback){
  if (condition())
    callback();
  else
    setTimeout(function(){
      waitsFor(condition, callback);
    }, 100);
};


// default to My Music
if(window.location.hash === '')
  window.location.hash = '#!/' + userName + '/playlists';

// wait for the ad and click the close button
$('body').delegate('.play.count', 'click', function(){
  var condition = function(){
    return $('#resumePlaybackButton.active').length > 0;
  };

  waitsFor(condition, function(){
    setTimeout(function(){
      $('#resumePlaybackButton.active').click();
      console.log('clicking #resumePlaybackButton.active');
    }, 250);
  });
});

$(function(){
  setTimeout(function(){
    window.onunload = function(){};
    window.onbeforeunload = function(){};
  }, 1000);
});

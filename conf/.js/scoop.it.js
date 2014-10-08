// Bypasses scoop.it by redirecting the browser to the actual page

$(function(){
  window.location = $('#thePostToPrint a.title').attr('href')
})


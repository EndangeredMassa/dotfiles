
$(function(){
  // only use on drafting page
  if (window.location.pathname !== '/draft.php') return

  // ignore on pick review page
  if ($(".infos:contains('Next Booster')").length > 0) return

  // ignore on draft-ended page
  if ($(".infos:contains('The draft is ended')").length > 0) return


  // hide all elements except last center
  var $all = $('body').children()
  var lastIndex = $all.length - 1
  $all.each(function(i, el){
    if (i === lastIndex) return

    $(el).hide()
  })

  // hide the nested center in our remaining element
  $('center').children('center').hide()
})


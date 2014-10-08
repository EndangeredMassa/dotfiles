var author = 'Sean Massa'

// domReady is too soon for this to work
// poll for the state we care about
var pollTimeout = 2000
var pollInterval = 200

$(function(){
  // Remove all builds that aren't mine
  $('.author').not(":contains('Sean Massa')").closest('.coupon').remove()

  // Space out the builds a bit
  $('.coupon')
    .css('margin-bottom', '60px')
    .css('border-bottom', '1px solid grey')

  // poll for the Show Details state, and toggle it
  var timer = setInterval(function(){
    $('.expandCollapseDetails:contains("show details")').click()
  }, pollInterval)

  // stop polling at some point
  setTimeout(function(){
    clearInterval(timer)
  }, pollTimeout)
})


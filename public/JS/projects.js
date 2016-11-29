const height = 400
var margin = '-' + height + 'px'
var halfMargin = '-' + 100 + 'px'

var defaultStyles = {
  height: '100px'
}

var bigStyles = {
  height: height + 'px'
}

$('.row:first-child').click(function (e) {
  var $el = $(this)  
  if($el.hasClass('big')){
    $el.removeClass('big')
    $el.css(defaultStyles)
  } else {
    $el.addClass('big')
    $el.css(bigStyles)
  }
})

$('.row:not(:first-child):not(:last-child)').click(function (e) {
  var $el = $(this)  
  if($el.hasClass('big')){
    $el.removeClass('big')
    $el.css(defaultStyles)
    $('body').css({'margin-top':'0px'})
  } else {
    $el.addClass('big')
    $el.css(bigStyles)
    $('body').css({'margin-top':halfMargin})
  }
})

$('.row:last-child').click(function (e) {
  var $el = $(this)  
  if($el.hasClass('big')){
    $el.removeClass('big')
    $el.css(defaultStyles)
    $('body').css({'margin-top':'0px'})
  } else {
    $el.addClass('big')
    $el.css(bigStyles)
    $('body').css({'margin-top':margin})
  }
})
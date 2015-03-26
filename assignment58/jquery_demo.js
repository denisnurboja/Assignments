$(document).ready(function() {
  console.log('ready!');

  if ($('#nonexistent').length) {
    console.log("Found the nonexistent id!!!");
    // Wrong! This code will always run!
  }

  // Get all of the listItems, select the 2nd one and remove it
  var listItems = $('li');
  var secondListItem = listItems.eq(1);
  secondListItem.remove();

  // $( 'li' ).html( 'New HTML' );
  $('li').html(function(index, oldHtml) {
    return oldHtml + '!!!';
  });

  $('li').each(function(index, elem) {
    // this: the current, raw DOM element
    // index: the current element's index in the selection
    // elem: the current, raw DOM element (same as this)
    $(elem).prepend('<b>' + index + ': </b>');
  });

  $('li')
    .click(function() {
      $(this).addClass('clicked');
      console.log("clicked");
    })
    .find('span')
    .attr('title', 'Hover over me');

  $('li').addClass('hidden');
  $('li').eq(1).removeClass('hidden');
});

// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
bodyElement1 = $('head')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('h1').css({ 'color': 'red', 'font-size': '150%', 'border': 'solid black 1px' })
// $('h1').hide();
 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://animalia-life.com/data_images/bobolink/bobolink5.jpg')
  })
 $('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

bodyElement.click(function(){
    $("img").animate({
        left: '250px',
        opacity: '0.5',
        height: '150px',
        width: '150px'
    });
}); 


//RELEASE 4: Event Listener
  // Add the code for the event listener here


//RELEASE 5: Experiment on your own



})  // end of the document.ready function: do not remove or write DOM manipulation below this.


// Reflection
//
// -What is jQuery?
//
// JQuery is a library that lets you manipulate HTML/CSS elements and events on
// your website using JavaScript.
//
// -What does jQuery do for you?
// 
// It lets you use JavaScript to manipulate different qualities of
// webpages
//
//
//
//
// -What did you learn about the DOM while working on this challenge?
// 
// I learned that you can use JS to go into the DOM and manipulate basically
// anything. 
//
//





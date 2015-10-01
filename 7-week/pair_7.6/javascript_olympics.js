 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up
var thisAthlete = ["Sarah Hughes", "Women\'s Singles"]


function winColumn(array) {
  array.push("win");
  if ( array.indexOf("win") != -1 ) {
    console.log(array[0] + " won the " + array[1] + "."); 
  }
}

winColumn(thisAthlete)




// Bulk Up
var someString = "computer"


function reverse(string) {
  string = string.split("").reverse().join("");
  console.log(string);
  
}

reverse(someString)


// Jumble your words

// 2,4,6,8
var num_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]


function evens(array) {
  var  evenNumbers = []
    for (var i = 0; i < array.length; i++ ) {
      if ( array[i] % 2 === 0 ) {
        evenNumbers.push(array[i]);
      };
    };
  console.log(evenNumbers);
};

evens(num_array)


// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}







var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)












// Reflection

// -What JavaScript knowledge did you solidify in this challenge?
//
// Variable and function syntax, a lot of concepts within the for loops of JS. 
// The syntax of dot (.) functions and how to line them up. 
//
// -What are constructor functions?
//
// Contructor functions are functions that contain related variables or blocks
// of code that can be called in later code. They're useful for situations
// in which there are repetitive sections of code. 
//
// -How are constructors different from Ruby classes (in your research)?
//
// Constructors are processed when the JS file is initiated, instead of when
// they're passed in the code. This could create situations of extra processing
// for a function you never use. I also don't think constructor function can 
// inheirit properties like Ruby classes can.









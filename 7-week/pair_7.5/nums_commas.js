// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// # Take the integer and make it into a string
// # Reverse the String
// # Add in a comma for every three character
// # Reverse the string again and return



// Initial Solution

// function separateComma(integer) {

//     var string = integer + '';  
//     var tempArray = [];

//     for (i=0; i < string.length; i+=3) {
//     	tempArray.push(string.split("").reverse().slice(i, i+3).join(""))
//       	};

//    var commaNum = tempArray.join(",").split("").reverse().join("");
   
//    return commaNum
// };

// Refactored Solution

// function separateComma(integer) {

// 	var tempArray = (integer + '').split("").reverse();

// 	for (i=3; i < tempArray.length; i+=3) {
// 	var separateComma = tempArray.splice(i, 0, ",");
// 	i += 1
// 	};

// 	return tempArray.reverse().join("")

// }

// console.log(separateComma(1234567123412348))


// REFACTOR 2
function separateComma(integer) {

	var tempArray = (integer + '').split("");

	for (i=3; i < tempArray.length; i+=4) {
	var separateComma = tempArray.splice(-i, 0, ",");
	};

	return tempArray.join("")

}

console.log(separateComma(1234567123412348))

// Your Own Tests (OPTIONAL)




//    # Reflection

// -What was it like to approach the problem from the perspective of 
//  JavaScript? Did you approach the problem differently?
//
// I approached this challenge with a ruby mindset. I basically thought out
// the solution in Ruby, then translated it to JS. That's not inheirantly bad
// though. I'm still learning a lot about syntax in JS and JS methods.
//
// -What did you learn about iterating over arrays in JavaScript?
//
// I learned how to structure the arguements in a for loop. That took me a 
// while, but now it's clear as day to me. It's actually pretty useful, dare I
// say I like JS for loops more than their Ruby equivelent?
//
// -What was different about solving this problem in JavaScript?
//
// Syntax, using brackets, the for loops. Return. That's about it. 
//
// -What built-in methods did you find to incorporate in your refactored solution?
//
// Splice! It's awesome.
//
//
//
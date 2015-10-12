// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

//Pseudocode



// __________________________________________
// Initial Solution
// function  countVote() {

// for(var students in votes) {
//   if(votes.hasOwnProperty(students)) {
//     for (var position in votes[students]) {
//       if (voteCount[position].hasOwnProperty(votes[students][position])) {
//         voteCount[position][votes[students][position]]++;
//       }
//       else {
//         voteCount[position][votes[students][position]] = 1;
//       }
//     }
//   }
// }
// };

// countVote();
// console.log(voteCount);


// function winner () {
//   for (var position in voteCount) {
//   var counter = 0;
//   var winner;
//     for (var candidates in voteCount[position]) {
//       if (voteCount[position][candidates] > counter) {
//         counter = voteCount[position][candidates];
//         winner = candidates;
//       }
//   }
//   officers[position] = winner;
//   }
// }

// winner();
// console.log(officers);




// __________________________________________
// Refactored Solution


function  countVote() {

  for(var students in votes) { // acessing the first level of the votes object
    for(var position in votes[students]) { //then call what's inside votes[students] position
      if(voteCount[position].hasOwnProperty(votes[students][position])) { //if votes[students][position] exists
       voteCount[position][votes[students][position]]++; //increment the corresponding object in voteCount by 1
      } //if
      else {
         voteCount[position][votes[students][position]] = 1; // else if it doesn't yet exist assign it a value of 1
      } //else
    } //for
  } //for
}; //function

countVote(); //runs countVote


function winner() {

  for (var position in voteCount) {
    var counter = 0;
    var winner;
    for (var candidates in voteCount[position]) {
      if (voteCount[position][candidates] > counter) {
        counter = voteCount[position][candidates];
        winner = candidates;
      } //if
    } //for
    officers[position] = winner;
  } //for
}; //function

winner();

console.log(officers)


/* ________________________________________
// Reflection

-What did you learn about iterating over nested objects in JavaScript?

I learned (painstakingly) about how to refer to nested objects in JS using 
for..in.. and bracket notation. 

-Were you able to find useful methods to help you with this?

For..in.. was needed pretty much throughout the challenge-- We also used 
.hasOwnProperty, which I didn't completely understand the usefulness of in 
this situation, but by the time we put it in the code, I was too afraid to 
break it to take out .hasOwnProperty. 

-What concepts were solidified in the process of working through this challenge?

JS syntax, using brackets and keeping them organized, nested objects are still 
a little iffy for me, but it's something I'm going to work on between now and 
phase 1.


*/ // __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
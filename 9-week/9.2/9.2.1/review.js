// Javascript Grocery Challenge!

// I did this solo it took me 1 hour


// Pseudocode:
// -Create a function with 5 this.functions to:
// 		- create a new grocery list
//			- Input: name of list
//			- Output: blank object with name gied
//			- Code: 
//				- function that takes name
//				- then assign a blank object with that name
//				-
// 		- add an item and quanity to the list
//			- Input: item, quanity
//			- Output: none
//			- Code:
//				- grocery_array << {item: quanity}
// 		- remove an item from the list
//			- Input: item
//			- Output: none
//			- Code:
//				-	delete grocery_list[item]
//				-
//				-
// 		- update quanitites
//			- Input: item, quanity
//			- Output: none
//			- Code:
//				- grocery_list[item: quanity]
//				-
//				-
// 		- print the list (and make it look nice)
//			- Input: none
//			- Output: grocery_list (fancy)
//			- Code:
//				- tbd


// Initial solution:

//create list
list = {}


//add an item to the list
var addItem = function(item, quanity) {
	list[item] = quanity
	console.log(item + " successfully added to your list!")
}

//remove an item
var removeItem = function(item) {
	delete list[item]
}

//update an item
var updateList = function(item, quanity) {
	if (list[item] === undefined) {
		console.log(item + " isn't on your list, use 'addItem' to add it!")
	} //if
	else {
		list[item] = quanity
	} //else
} //updateList

//print the list
var printList = function(list) {
	console.log("Your current gorcery list:")
	for (var item in list) {
		if (list.hasOwnProperty(item)) {
			console.log(list[item] + " " + item)
		} //if
	} //for

} //var printList




// Some driver code for you to test this shit!:


addItem("bananas", 5)
addItem("bag of coffee", 1)
addItem("eggs", 12)
addItem("tomatoes", 4)
addItem("beer", 6)
addItem("ping-pong balls", 12)

removeItem("bananas")

updateList("beer", 24)
updateList("solo cups", 60)

addItem("solo cups", 60)

printList(list)


// end driver section



// Reflection

// -What concepts did you solidify in working on this challenge? (reviewing 
// the passing of information, objects, constructors, etc.)

	// .hasOwnProperty and a little brush up on nested objects.

// -What was the most difficult part of this challenge?

	// The print part was kind of a pain, and the update part took a minute, 
	// but it was over all pretty simple.

// -Did an array or object make more sense to use and why?

	// I hate to say this because I love arrays, but an object made more sense
	// here. Just because the most complex relationship we have is 1 to 1, so 
	// an array would just complicate things with depth. 





















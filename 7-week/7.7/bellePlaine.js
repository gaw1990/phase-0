// Welcome to Belle Plaine 

//  			# PseudoCode 
// 
// 
// 				# Outline
// Chapter 1-- Intro:
// 	Alarm switch
// 	Enemy 1: shitty upstairs neighbors
//
// Chapter 2-- Street:
// 	IF you take a shortcut through the CVS parking lot
// 		Enemy 2: bycicle kids in the CVS parking lot want your new kicks!! 
// 	ELSE Starbucks switch
// 		Option to get PSL(+2 max_energy)
//
// Chapter 3-- Landlord's office:
// Enemy 3: final boss evil landlord
// 
//
//			    # Mechanics
//
// 1: Variables
//		-health
// 			stored in a health variable
//	 		max_health variable is your max health
//		-energy
//			stored in energy variable
//			max_energy variable is your max energy
//
// 2: battle dynamics
//		turn based
//		whoever runs out of health first loses
//  2.1: turns
// 		-Attack
// 			costs 2 energy
// 			damage = energy + random between 15-45
// 		-Rest
//			restore 4 energy, 25 health
//			no damage done
//		-Defend
//			restore 4 energy
//			no damage done
//			next attack deals attack/2 damage to you
// 
//
// 				# Variables
//
// var max_health = 100
// var health = 100
//
// var max_energy = 10
// var energy = 8
//

//				# Chapter 1-- The Apartment
//
// var name = prompt("what's your name?")
// var start = alert("Ok, " + name + " let's play 'Belle Plaine'!!")

// print out-- "It's 8:30am on a sunny, beautiful Thursday morning in North Center, Chicago" 
// print out-- "Bees are buzzing, children are playing and birds are chirping"
// print out-- "..Hmm, actually these birds sound kind of funny-- Like they're almost beeping"
// print out-- "beeeep, beeeep, beeeep"
// print out-- "Wait.. Those aren't birds.... It's your alarm clock!!"
// print out-- "After a long night of DBC work, you're still exausted!! Your energy is at a " + energy + " out of " + max_energy
// snoozeResponse = prompt("Type 'snooze' to sleep another half hour and gain back 2 energy or type 'off' to turn off the alarm and get up")
// SWITCH alarm

	// Case 1: snoozeResponse === "snooze" then 
	// print out "You slam your alarm (hoping you hit the snooze button) and drift back off to sleep"
	// print out-- "zzzzzzz"
	// print out-- "zzzzzzz"
	// print out-- "zzzzzzz"
	// var energy = energy + 2
	// print out-- "you gain +2 energy"
	// print out-- "BEEEEP BEEEEP BEEEEP... Damn that's loud, ok now it's 9am and your energy is " + energy + " out of " + max_energy
		// IF energy === max_energy
		// print out-- "It's time to get up... "
		// end
		// IF energy < max_energy
		// call switch alarm again. (maybe this should be a function for recursive purposes)
		// end

	// Case 2: snoozeResponse === "off"
	// end

// print out-- "You clean up, start cooking breakfast just like every morning when suddenly you realize.."
// print out-- "IT'S OCTOBER 1st!!!!! THE RENT'S DUE"
// print out-- "you were so busy thinking about crypto-anarchy articles from the 90s that you forgot rent was due today!!!!"
// print out-- "You grab your rent check and your hoodie and run out the door"
// print out-- "suddenly you hear 'Hey.. Where do you think YOU'RE going??"
// print out-- "..it's your shitty upstairs neighbor.."
// print out-- "'It's a weeknight and we're having a bunch of random people over later... Around 1am....'"
// print out-- "'I'm going to need that rent money to buy booze, illicit drugs and new bass speakers for the party'"
// print out-- "'Hand over the cash or I'll kick you ass!!"
// var neighbor_switch = prompt("Type 'fight' to take him on, type 'give up' to give him your rent money and run away)
	// Case 1: give up
	// print out-- "You hand over the cash.. That's the last of it, looks like you'll be out on the street by next week"
	// print out-- "GAME OVER"

	// Case 2: fight
	// call fight function 

// print out-- "You bound out on to the street victorious. The fresh air and sun restore your health to 100/100"

// 			# END Chapter 1




//  		##### Initial solution #####

var name = prompt("what's your name?")
alert("Ok, " + name + " let's play 'Belle Plaine'!!")

	// hero stats (tested)

var hero = {
name: name,

health: 100,
maxHealth: 100,

energy: 8,
maxEnergy: 10
}; //119


	// NPC Neighbor stats (tested)

var neighbor = {
name: "upstairs neighbor",

health: 85,
maxHealth: 85
}; // 131


	// delay function (tested)

function delay(ms) {
   ms += new Date().getTime();
   console.log("...")
   while (new Date() < ms);
};


	// RNG function (tested)

function randomNum(min, max) { 
	return Math.floor(Math.random() * (max - min + 1)) + min
};

 	// fight function

function fight(player, NPC) {

	console.log("It's on!! Quick, make the first move!!");

	var ready = alert("The fight is about to begin, hit 'ok' when you're ready")

	while (player.health !== 0 && NPC.health !== 0) {
		stats()
		delay(3000)
		if(player.health <= 0) {break;}
		turn()
		stats()
		delay(3000)
		if(NPC.health <= 0) {break;}
		turnNPC()
		delay(3000)

		function stats() {
			console.log("Current stats:");
			console.log(player.name + " health-> " + player.health + "/" + player.maxHealth);
			console.log(player.name + " energy-> " + player.energy + "/" + player.maxEnergy);
			console.log(NPC.name + " health-> " + NPC.health + "/" + NPC.maxHealth);
		} //stats


		function turn() {
		 	var move = prompt("Your move!! Type 'attack' to attack or 'rest' to restore 4 energy and 25hp").toUpperCase();
	
			if(move === "ATTACK") {
				var damage = randomNum(15, 35) + (player.energy * 2);
				console.log("You hit " + NPC.name + " for " + damage + "!!");
				NPC.health = NPC.health - damage;
			} //if

			else if(move === "REST"){
				player.energy = player.energy + 4;
				player.health = player.health + 25;
				console.log("You gain 4 energy and 25 health, but deal no damage!!")
			} // else if

			else {
				alert("Please input a valid command")
				turn()
			} //else
		} //turn

		function turnNPC() {
			if(NPC.health <= 30) {
				console.log(NPC.name + " used REST!! They restored 25 health")
				NPC.health = NPC.health + 25
				delay(3000)
			} // if 

			else {
				var damageNPC = randomNum(15, 35) + (player.energy * 2);
				console.log(NPC.name + " used attack!! He hits" + player.name + " for " + damageNPC + "!!");
				player.health = player.health - damageNPC;
			} //else

		} //function ln 194
	} // while ln 146

} // function ln145






//				# Chapter 1-- The Apartment

console.log("It's 8:30am on a sunny, beautiful Thursday morning in North Center, Chicago");
delay(3000);
console.log("Bees are buzzing, children are playing and birds are chirping");
delay(2500);
console.log("..Hmm, actually these birds sound kind of funny-- Like they're almost beeping");
delay(3000);
console.log("beeeep, beeeep, beeeep");
delay(2000);
console.log("Wait.. Those aren't birds.... It's your alarm clock!!");
delay(2500);
console.log("After a long night of DBC work, you're still exausted!!"); 
delay(2500);
alarm();
	
	// alarm function (tested)
function alarm(){
	console.log("Your energy is at a " + hero.energy + " out of " + hero.maxEnergy)
	delay(2000);
	snoozeResponse = prompt("Type 'snooze' to sleep another half hour and gain back 2 energy or type 'off' to turn off the alarm and get up").toUpperCase();
	switch(snoozeResponse) {
		case 'SNOOZE':
			console.log("You slam your alarm (hoping you hit the snooze button) and drift back off to sleep");
			delay(3000);
			console.log("zzzzzzz");
			delay(1000);
			console.log("zzzzzzz");
			delay(1000);
			console.log("zzzzzzz");
			delay(1000);
			hero.energy = hero.energy + 2;
			console.log("you gain +2 energy!!")
			delay(1000);
			console.log("BEEEEP BEEEEP BEEEEP... Damn that's loud, ok now it's 9am and your energy is " + hero.energy + " out of " + hero.maxEnergy);
			delay(3000);
	
			if(hero.energy === hero.maxEnergy) {
				console.log("You feel fully energized. It's time to get up!!")
				delay(2000);
				break;
			} //if

			else if(hero.energy < hero.maxEnergy) {
				alarm()
			} // else if

			else {
				hero.energy = hero.maxEnergy
				console.log("You feel fully energized. It's time to get up!!")
				delay(1000);
				break;
			}; //else

		case 'OFF':
		break;
		
	} //switch
} //function alarm
delay(3000);
console.log("You clean up, start cooking breakfast just like every morning when suddenly you realize..");
delay(5000);
console.log("IT'S OCTOBER 1st!!!!! THE RENT'S DUE");
delay(2000);
console.log("you were so busy thinking about crypto-anarchy articles from the 90s that you forgot rent was due today!!!!");
delay(5000);
console.log("You grab your rent check and your hoodie and run out the door");
delay(2500);
console.log("suddenly you hear 'Hey.. Where do you think YOU'RE going??");
delay(4000);
console.log("..it's your shitty upstairs neighbor..");
delay(2000);
console.log("'It's a weeknight and we're having a bunch of random people over later... Around 1am....'");
delay(5000);
console.log("'I'm going to need that rent money to buy booze, illicit drugs and new bass speakers for the party'");
delay(6000);
console.log("'Hand over the cash or I'll kick you ass!!");
delay(2000);

var neighbor_switch = prompt("Type 'fight' to take him on, type 'give up' to give him your rent money and run away").toUpperCase();

switch (neighbor_switch){	 
	case 'GIVE UP':
		console.log("You hand over the cash.. That's the last of it, looks like you'll be out on the street by next week");
		alert("GAME OVER");
		break;
	case 'FIGHT':
		fight(hero, neighbor);
		break;
}
console.log("You bound out on to the street victorious. The fresh air and sun restore your health to 100/100")






// # Reflection

// -What was the most difficult part of this challenge?
// 
// Figuring out what the challenge was asking us to do, then probably sorting 
// out all the syntax.
//
// -What did you learn about creating objects and functions that interact with one another?
//
// I learned that you can create objects to store states and just code a 
// series of functions to modify them and it creates an environment.
//
// -Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//
// I learned about switch and case. I also learned about Math.random and 
// .getTime which helped me create my random numbers for attacks and my delay.
// It was mostly forks (switches, if else statements) and keeping everything 
// organized though.
//
// -How can you access and manipulate properties of objects?
//
// I found their path and then reassigned them if I wanted to manipulate them.
//




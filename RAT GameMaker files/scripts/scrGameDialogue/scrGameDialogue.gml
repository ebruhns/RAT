///@param 

function scrGameDialogue(_textID){

	switch(_textID){
		
	#region ----------------INTRO CUTSCENE -------------------------------------//
	
		case "intro-cutscene":
			scrText("New York City \n Year 202X"); 
			scrText("It is rumored that the city has a ratio of 5 rats for every human"); 
			scrText("Meaning there are over 10 million rats living in the concrete jungle."); 
			scrText("Because of this, the mayor of New York has created the Rat Extermination Neutralization Taskforce.");  
			scrText("Their goal is to rid the city of rats..."); 
			break; 
			
		case "Thank you for playing!":
			scrText("Thank you for playing the RAT demo!"); 
			scrText("Look out for more updates by following the @studio.housetree.games instagram!"); 
			break;
	
	#endregion
		
	#region ----------------SUBWAY----------------------------------------------//
	
	#region ----------------JUNKTOWN RESIDENTIAL--------------------------------//
	
	//----------------------ROOMIE RAT--------------------------------------------
	#region ROOMIE RAT
	
		case "ROOMIE RAT":
			scrText("... -ake up...Hey... Hey wake up, it's almost noon!", sprPortraitRoomieRat);
			scrText("You said you would clean up your dishes in the sink. Or did you forget, again?", sprPortraitRoomieRatTalk);
			scrText("Whatever, just go over to the sink and press 'E' to start cleaning.", sprPortraitRoomieRatTalk);
			//scrText("Did you forget how to move, too?? It's WASD or the arrow keys!");
			scrText("... I need to start looking for a new roommate...", sprPortraitRoomieRat);
			break;	
			
		case "ROOMIE RAT - post wake up": 
			scrText("You said you would clean up your dishes in the sink. Or did you forget, again?", sprPortraitRoomieRatTalk);
			scrText("Whatever, just go over to the sink and press 'E' to start cleaning.", sprPortraitRoomieRat);
			scrText("Did you forget how to move, too?? It's WASD or the arrow keys!", sprPortraitRoomieRatTalk);
			scrText("... I need to start looking for a new roommate...", sprPortraitRoomieRat);
			break;	
			
		case "Roomie Rat - job not done": 
			scrText("Hey, don't try to leave without cleaning these dishes!", sprPortraitRoomieRat); 
			break; 
			
	#endregion 
	
	//----------------------MA RAT------------------------------------------------
	#region MA RAT
		
		case "MA RAT":
			scrText("Oh good morning, hon! Aw you look tired sweetie, I could use the bags under your eyes for my groceries!", sprPortraitMaRat);
			scrText("I hope you're not working yourself too hard...", sprPortraitMaRat);
			scrText("You can always stop by any time for a nice, homecooked meal after work!", sprPortraitMaRatTalk);
			scrText("Your father would appreciate the visit, you know he doesn't get out much lately...", sprPortraitMaRat);
				scrOptions("Yeah, I'll try to visit sometime this week", "MA RAT - visit: yes");
				scrOptions("Sorry, Ma. I'm pretty busy this week...", "MA RAT - visit: no");
			break;
		case "MA RAT - visit: yes":
			scrText("Great! I'll make your favorite mac and cheese dinner special!", sprPortraitMaRatTalk);
			break;
		case "MA RAT - visit: no":
			scrText("Oh... ok, sweeite. Don't work yourself too hard. The offer still stands if you change your mind.", sprPortraitMaRat);
			break;
			
	#endregion
	
	#endregion

	#region ----------------JUNKTOWN COMMERCIAL---------------------------------//
	
	
	//----------------------MAYOR RAT---------------------------------------------
	#region MAYOR RAT
	
		case "MAYOR RAT":
			scrText("Everyone please keep filing forward to hear an important annoucement!", sprPortraitMayorRat);
			break;
			
	#endregion
	#endregion
	
	//----------------------Non Portrait RATs-------------------------------------
	#region NP NPCs
		case "SHOPKEEP NPC - JUNKTOWN COMMERICIAL":
			scrText("\"Welcome, valued customer! All produce is freshly scavenged this morning and we have a buy one, get one half off on single chips!\"");
			scrText("\"Ask about our membership deals!\"");
			scrText("\"We are not currently hiring...\"");
			break;
			
		case "SLEEPING NPC - JUNKTOWN COMMERICIAL":
			scrText("The rat is loudly snoring and squirmingly a little, deep in sleep. Best not to wake them up.");
			break;
			
	#endregion
			
	#region ----------------RAT TRAP--------------------------------------------//
			
		//-----------------------BARTENDER RAT------------------------------------
		#region BARTENDER RAT
	
			case "BARTENDER RAT":
				scrText("What can I get you? \n \n \n (even though it's 11 am... but I'm not judging...)", sprPortraitBartenderRat);
				break;
			
		#endregion
			
		//-----------------------BUSINESS RAT-------------------------------------
		#region BUSINESS RAT
		
			case "BUSINESS RAT":
				scrText("Kids these days are all the same... 'Waaa waaa work life balance', 'boo hoo I can't afford rent after working 40 hours a week'", sprPortraitBusinessRatFrown);
				scrText("It's like nobody wants to work anymore. Back in my day, we would work 90 hour weeks without any of this overtime pay nonsense. And look how I turned out!", sprPortraitBusinessRatSweat);
				scrText("What do you think? Do you kids actually know a thing or too about hard work?", sprPortraitBusinessRat);
					scrOptions("I think you should give us more credit", "BUSINESS RAT - yes");
					scrOptions("You don't know what you're talking about, boomer.", "BUSINESS RAT - no");
				break;
				
				case "BUSINESS RAT - yes":
					scrText("Maybe I was wrong about all the kids these days... I can tell by the fire in your eyes that you're a go-getter, an upstart, a ... ROCK STAR.", sprPortraitBusinessRatSweat);
					scrText("If you ever need a job, kid, give me a call.", sprPortraitBusinessRat);
					break;
				case "BUSINESS RAT - no":
					scrText("Well that proves my point, you don't like the truth so you resort to name calling instead!", sprPortraitBusinessRatFrown);
					scrText("Bartender, I need another drink!", sprPortraitBusinessRatFrown);
					break;
					
		#endregion
		
		//-----------------------HIPPIE RAT---------------------------------------
		#region HIPPIE RAT
		
			case "HIPPIE RAT":
				scrText("You look like you need to relax a little...", sprPortraitHippieRat);
				scrText("You try to burn through life, it'll burn through you, too. Ya know what I'm saying?", sprPortraitHippieRat);
				break;
				
		#endregion
		
		//------------------------PUNK RAT----------------------------------------
		#region PUNK RAT
		
			case "PUNK RAT":
				scrText("Hey Rat, you wanna get off the stage?? I'm rehearsing here.", sprPortraitPunkRatGrit);
				scrText("Rats have no appreciation for the Music these days...", sprPortraitPunkRat);
				break;
				
		#endregion
		
		//------------------------GOLDEN RAT--------------------------------------
		#region GOLDEN RAT
		
			case "GOLDEN RAT": 
				scrText("UGH these tables are terrible! How much does a rat have to pay for a decent game of pool around here??", sprPortraitGoldenRat); 
				scrText("What are you looking at? Think you could do any better??", sprPortraitGoldenRatTalk); 
					scrOptions("You're on!", "GOLDEN RAT - pool yes"); 
					scrOptions("Nah you're right, the tables are trash", "GOLDEN RAT - pool no");
				break;
				
			case "GOLDEN RAT - pool yes":
				oPlayer.poolJobY = true; 
				scrText("HA! I bet $20 you can't get all the balls in without scratching the cue ball...\nThe cue is the white one for your information", sprPortraitGoldenRatGrin);
				break;
			
			case "GOLDEN RAT - pool no":
				scrText("That's what I thought", sprPortraitGoldenRat); 
				break;
				
			case "GOLDEN RAT - win": 
				scrText("Pfft whatever, beginners luck or something. Here's your stupid money", sprPortraitGoldenRatTalk); 
				break;
				
			case "GOLDEN RAT - lose": 
				scrText("Hmph just as expected. What, you don't have any money? Forget it, just know you owe me", sprPortraitGoldenRatGrin); 
				break;
		
		#endregion 
		
	#endregion
	
	//----------------------CUTSCENES---------------------------------------------
	#region CUTSCENES
	
	//intro-k9-main-conflict cutscene
	
	//K9
	case "intro-k9-main-conflict-cutscene":
		scrText("You shuffle to find a place amongst the rest of the rats gathered together in this hastily put together meeting.");
		scrText("You overhear concerned whispers from your fellow rats...");
		scrText("Do you know what this is about?", sprPortraitMaRat);
		scrText("Probably just a campaign stunt for the mayor's election.", sprPortraitPunkRat);
		scrText("This feels like it'll be bad for business...", sprPortraitBusinessRatSweat);
		scrText("Good morning everyone, thank you for meeting on such short notice.", sprPortraitMayorRat);
		scrText("As some of you know, we have had an ongoing agreement with a K-9 member of the police department to protect our home from the threat of extermination by the city.", sprPortraitMayorRat);
		scrText("K-9 has asked to give an annoucement about an update to our agreement. Without further ado, please welcome, K-9.", sprPortraitMayorRat);
		scrText("Good morning.", sprPortraitK9);
		scrText("I don't like beating around the bush, so I'll just get right to it.", sprPortraitK9);
		scrText("The police budget for the year has dipped into the red, and as such certain 'agreements' made in the past are updating the terms starting today.", sprPortraitK9);
		scrText("The new terms for my continued protection of Junktown is this: \n $5,000 by the end of the week.", sprPortraitK9);
		scrText("Otherwise my unit will come and clear this whole subway line of any rats we come across.", sprPortraitK9);
		scrText("This is ridiculous!");
		scrText("How can we make any of that money?! We can barely afford snacks from vending machines!");
		scrText("That's f@&%*$& bull&%*$", sprPortraitPunkRatGrit);
		scrText("Pipe down, rats! Consider yourselves lucky you're getting a week's notice! I'm sticking my neck out for this junk heap, $5,000 is the least you could do to thank me.", sprPortraitK9Angry);
		scrText("Lucky?? You basically told us we have a week to live!", sprPortraitRoomieRatTalk);
		scrText("Everyone please remain calm! I know this seems like an impossible task, but if we all keep a level head and work together, we will find a way to meet these demands.", sprPortraitMayorRat);
		scrText("My office is currently working on strategies and making calls to figure out the best way forward.", sprPortraitMayorRat);
		scrText("Whether you get the money or leave, I don't care. But those are the options, I'm just the messenger. I'll be back in a week to collect, ready or not.", sprPortraitK9);
		break;
		
	#endregion
	
	#endregion SUBWAY
	
	}
	
}
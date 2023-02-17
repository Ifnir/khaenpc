CHAIN IF ~Global("K3WIZARD","GLOBAL",1)~ THEN K3VERD VERD1
~Oh, <CHARNAME>, about time. For your information I'm well aware of the situation, and I already have a plan prepared.~
END
++ ~What's the plan?~ EXTERN K3VERD VPLAN
++ ~Rather suspicious, tell me exactly, what you know of our *situation*.~ EXTERN K3VERD VEXCUSE1

CHAIN K3VERD VEXCUSE1
~Excuse me, I'm a well-respected within the organization. My job is to know everything, I already had my theories, but I couldn't be sure. Thankfully you confirmed I was right all along.~
END
++ ~Is that so, well, I suppose you oughta know.~ EXTERN K3VERD VPLAN

CHAIN K3VERD VPLAN
~At the graveyard, find the the tomb to the south. In there is a face made of clay facing toward you. You will cycle these instruction, I've yet to decipher them, so that will be up to you.~
END
++ ~Why haven't you deciphered the instruction yourself?~ EXTERN K3VERD VPLANQ1
++ ~What we're up against?~ EXTERN K3VERD VPLANQ2
++ ~Affirmative.~ EXTERN K3VERD VPLANGO

CHAIN IF ~~ THEN K3VERD VPLANGO
~Excellent, now go away and do my bidding.~
DO ~SetGlobal("K3WIZARD","GLOBAL",2) GiveItemCreate("k3book1",Player1,1,0,0)~ EXIT

CHAIN K3VERD VPLANQ1
~I don't have time to do everything, I've other inquiries, that need my attention.~ EXTERN K3VERD VPLAN

CHAIN K3VERD VPLANQ2
~From what I research, you'll be transported to a dimesion of the undead realm. In there is an weapon, we can use against the vampires, where exactly is unknown to me.~ EXTERN K3VERD VPLAN

// CHAIN K3VERD VPLAN
// ~~ EXTERN K3VERD VPLAN


// CHAIN K3VERD VPLAN
// ~~
// END


// Change the start conversation depending if you helped Zhal or let Ebrif escape
// The quest is Verdel has a book with instruction, where you have to go the graveyard 811 and
// Click on the face, do the instruction, then a portal opens, where you have to fight a evil spirit.
// then you get a item, that verdel need, he lied to you about, because this item 
// will not help the fight against the vampires, instead it will turn him to a lich.
// He will then fight bror in the main hall, assisted by vampires
// 
// You can either accept to help him remove him, or fight him.
// Before you give him the lich item, you can go to gervel, he will have you go to Ula, she will look and tell you the truth.

// Create item book as quest item. Make ChatGPT do the quest.

CHAIN IF ~PartyHasItem("k3figur")~ THEN K3VERD FIGUR
~<CHARNAME>! I see, you done well, I 've a great reward for you, now hang it over to me.~
END
++ ~You're strangely eager to get the figur, what's your plan with it?~ EXTERN K3VERD FIGUR1
++ ~Who's included in this scheme?~ EXTERN K3VERD FIGUR2
++ ~*Give the figur*~ EXTERN K3VERD FIGUR3

CHAIN K3VERD FIGUR1
~It's part of plan to turn the tides, it will gain us the advantage against our enemies.~ 
EXTERN K3VERD FIGUR

CHAIN K3VERD FIGUR2
~Our great leader, Bror. I've personally kept him informed.~ 
EXTERN K3VERD FIGUR

// Create a item
CHAIN K3VERD FIGUR2
~Good, here's your reward. I greatly appreciate your effort to obtain this artifact.~ 
DO ~ GiveGoldForce(4000)~ EXIT

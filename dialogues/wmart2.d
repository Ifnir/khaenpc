EXTEND_TOP WMART2 1 
+~Global("K3GERVQUEST","GLOBAL",3) Global("DEIDREIMPORT","GLOBAL",1)~+ ~We are from the shadow thieves, we're here to help.~ EXTERN WMART2 XWALMART1 
END 

CHAIN WMART2 XWALMART1 
~Shhh. Not so loud. There are people of substances here, haven't you been taught how to approach a upperclass lady. I can't risk my reputation, if all knew of my associations with the shadow thieves, I would be like you, I suppose.~ 
END 
++ ~I've got a feelin, you're going to be joy working for.~ EXTERN WMART2 XWALMART2

CHAIN WMART2 XWALMART2
~I can't be bothered by your sarcasm, this is importan, now listen. You'll be meeting your collague in the dock district next to the annoying blacksmith, this night.~
END
++ ~Alright, and then.~ EXTERN WMART2 XWALMART3

CHAIN WMART2 XWALMART3
~You'll get a crate, do not die or loose it, it's more important than you.~
DO ~SetGlobal("DEIDREIMPORT","GLOBAL",2)~ 
EXIT

EXTEND_TOP WMART2 1
+~Global("DEIDREIMPORT","Global",3) Global("VAMPATTACK","GLOBAL",2) PartyHasItem("K3CRATE")~+ ~We have your crate.~ EXTERN WMART2 XWALMART4
END


CHAIN WMART2 XWALMART4
~Wonderful, If there's one thing I can't stand, it's snobbery, scum and one-upmanship. People trying to pretend they're superior. Makes it so much harder for those of us who really are. Now go away.~
DO ~TakePartyItem("K3CRATE") SetGlobal("DEIDREIMPORT","GLOBAL",4)~ EXIT
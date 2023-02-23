// Is supposed to be 2.
CHAIN
IF~Global("K3Q1","GLOBAL",2) NumberOfTimesTalkedTo(0) Global("K3GERVQUEST","GLOBAL",0)~ THEN K3GERV MEET.GERV1
@301
END
IF~~ THEN REPLY @311 EXTERN K3GERV MEET.GERV2

CHAIN K3GERV MEET.GERV2
@302
== K3XAV @303
END
IF~~ THEN REPLY @312 EXTERN K3GERV MEET.GERV3

CHAIN K3GERV MEET.GERV3
@304
END
IF~~ THEN REPLY @313 EXTERN K3GERV MEET.GERV4

CHAIN K3GERV MEET.GERV4
@305
END
IF~~THEN REPLY @314 EXTERN K3GERV MEET.GERV5

CHAIN K3GERV MEET.GERV5
@306
END
IF~~THEN REPLY @315 DO ~SetGlobal("K3GERVQUEST","GLOBAL",1)~ EXIT

// New quest to meet deidre in adventure mart SetGlobal("K3GERVQUEST","GLOBAL",3)
CHAIN IF~Global("TALKTOGERV2","GLOBAL",1) Global("DEIDREIMPORT","GLOBAL",0) Global("K3GERVQUEST","GLOBAL",2)~ THEN K3GERV QUEST2
~Ahh, look who's returned! Simply splendid, my comrade. And tell me, did you have any luck in your dealings with Zhal? Did you manage to uncover anything of note?~
END
+~Global("ZHALLQUEST","GLOBAL",1)~+ ~I did, it wasn't much, however, he told me about someone moving in and out of the broken cell.~ EXTERN K3GERV QUEST2.1
+~Global("K3EBRIFQUEST","GLOBAL",3)~+ ~No, but I meet Ebrif, the one who was in the prison cell and escaped. I helped him escape.~ EXTERN K3GERV QUEST2.1.1

CHAIN K3GERV QUEST2.1.1
~Oh my, this is most unfortunate for our line of work, isn't it? How, might I ask, did this individual manage to make his escape? It seems implausible that he could have accomplished such a feat all on his own, don't you think?~
END
++ ~Ohhh, I did. It never occurred me to question how exactly he managed to dig out, he couldn't have done it without help.~
EXTERN K3GERV QUEST2.2

CHAIN K3GERV QUEST2.1
~Well now, wasn't that location supposed to be occupied? What could have become of the individual in question? Did he perhaps escape on his own, or could it be that someone might have provided him with a helping hand, if you catch my drift?~
END
++ ~Ohhh, I did. It never occurred me to question how exactly he managed to dig out, he couldn't have done it without help.~
EXTERN K3GERV QUEST2.2

CHAIN K3GERV QUEST2.2
~Ahh, no need to fret, my comrade. Let us move forward, shall we? I have just received news that one of our valued clients, the lovely Deidre, has been experiencing some difficulties with her contraband. Her shipments have been repeatedly high-jacked, and there have even been instances of fatalities. This simply will not do. I need you to pay her a visit and see what can be done to resolve this issue. Who knows, perhaps this will lead us closer to discovering the traitor in our midst.~
DO ~SetGlobal("K3GERVQUEST","GLOBAL",3) SetGlobal("DEIDREIMPORT","GLOBAL",1)~ EXIT

CHAIN IF ~Global("DEIDREIMPORT","GLOBAL",4) Global("K3WIZARD","GLOBAL",0)~ THEN K3GERV QUEST3
~Ahh, welcome back! And tell me, what have you learned on your journey? Did you manage to be of assistance to our dear friend Deidre and help resolve the difficulties she has been facing with her contraband?~
END
++ ~We were ambushed by vampires, and the shadow thieves we was supposdly to meet, assisted the vampires.~ EXTERN K3XAV K3XAV1

CHAIN K3XAV K3XAV1
~Listen closely, Gervel and <CHARNAME>. The shadow thieves you encountered at the blacksmith, who was supposed to be an ally of ours, they came at you in league with those bloodthirsty vampires.~
== K3XAV ~It's a treacherous situation, one that has put us in a compromising position. These individuals, who were supposed to have our trust, have now aligned themselves with our enemies and it's important that we take swift action to protect ourselves from their malicious intent.~
== K3GERV ~It's unfortunate, more and more is leaving the shadow thieves in fear, and converting to those beasts. Go to our wizard, he knows what we've to do.~
DO ~SetGlobal("K3WIZARD","GLOBAL",1)~ EXIT

CHAIN IF ~Global("K3WIZARD","GLOBAL",3)~ THEN K3GERV Q4
~I see,you returned comrade, and you helped our wizard with a solution with our problem. Could you tell me, do you have any clue to how our wizard do?~
END
++ ~He gave me a book and asked me to recipe it at one of the tomb at the graveyard. It teleported me to the realm of Mepsfo.~ EXTERN K3XAV Q4.1

CHAIN K3XAV Q4.1
~The realm of Mepsfo, I've never heard of it before.~
== K3GERV ~Me neither, this is worrisome, I had my suspicion about our wizard. Can you tell what you were required to get?~
END
++ ~I was told to get a figur, I've no idea what it does~ EXTERN K3GERV Q4.2

CHAIN K3GERV Q4.2
~Hmmm, we have a atypical expert we can ask about, go to our beautiful chief, Ula. I believe with her smart wit, she could tell us who Mepsfo is.~
DO ~SetGlobal("K3ULA","GLOBAL",1)~ EXIT

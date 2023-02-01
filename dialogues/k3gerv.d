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
CHAIN IF~Global("TALKTOGERV2","GLOBAL",1)~ THEN K3GERV QUEST2
~You're back, splendid. Did you get anything out of Zhal?~
END
+~Global("ZHALLQUEST","GLOBAL",1)~+ ~I did, it wasn't much, however, he told me about someone moving in and out of the broken cell.~ EXTERN K3GERV QUEST2.1
+~Global("K3EBRIFQUEST","GLOBAL",3)~+ ~No, but I meet Ebrif, the one who was in the prison cell and escaped. I helped him escape.~ EXTERN K3GERV QUEST2.1.1

CHAIN K3GERV QUEST2.1.1
~Ohhh, that's not good for business, how did he escape exactly, he couldn't have done all by himself?~
END
++ ~Ohhh, I did. It never occurred me to question how exactly he managed to dig out, he couldn't have done it without help.~
EXTERN K3GERV QUEST2.2

CHAIN K3GERV QUEST2.1
~Wasn't it occupied, what happen to that guy, did he by chance escape, because I believe someone might assisted him.~
END
++ ~Ohhh, I did. It never occurred me to question how exactly he managed to dig out, he couldn't have done it without help.~
EXTERN K3GERV QUEST2.2

CHAIN K3GERV QUEST2.2
~Well, no worries. Let's move on, I've recently found out one of our close customer, Deidre, is missing her contraband. 
Her men is continous getting high-jacked and in some instances killed. I need you to go talk to her and resolve this matter, it might let us closer to any clue to who is the traitor among us.~
DO ~SetGlobal("K3GERVQUEST","GLOBAL",3) SetGlobal("DEIDREIMPORT","GLOBAL",1)~ EXIT

CHAIN IF ~~ THEN K3GERV QUEST3
~You're back, what did you learn.~
EXIT


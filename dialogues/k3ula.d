// Make the guard intercept and tell the wizard wants to talk to the player immediately before he goes to Ula.
// If the player decide, then wizard will blackmail the player and Khae to assist him, because he has Khae wife as hostage.
// If you go to Ula, she will tell of the trouble ahead, she will with Gerv and his assistant confront VERD.
// If that happens, then Verd will summon Quyen and kill her immediately unless you join him.

CHAIN IF~Global("K3ULA","GLOBAL",1)~THEN K3ULA 1
~Hello, It's nice meeting you, <CHARNAME>, I'm Ula.~
END
++ ~Hi Ula, Gervel sent me here, he said, you would know who Mepsfo are.~ EXTERN K3ULA 2

CHAIN K3ULA 2
~Did you just say Mepsfo, that's not good. If it's true, then Verdel might have made a deal to become a Lich.~
== K3ULA ~We have to stop him immediately, we have to get to Gervel and stop Verdel, before it's to late.~
DO ~~ EXIT
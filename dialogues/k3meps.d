BEGIN K3MEPS

CHAIN IF ~NumTimesTalkedTo(0)~ THEN K3MEPS 1
~Hello child of Bhaal, hello... What a pleasure to see you here. (Mepsfo claps in his hands)~
END
++ ~How do you know what I am?~ EXTERN K3MEPS 2
++ ~Who are you?~ EXTERN K3MEPS 3
++ ~I'm here for an artifact, I'm told I would find it here?~ EXTERN K3MEPS 4

CHAIN K3MEPS 2
~Oh little boy, you're famous. Every deity has more and less a interest in you. Myself included, I enjoy the chaos that follows you.~
EXTERN K3MEPS 1

CHAIN K3MEPS 3
~Hehehe, I'm Mepsfo, I rule my little kingdom of shadow, in short, I create contracts and collect the soul, when times up.~
EXTERN K3MEPS 1

CHAIN K3MEPS 4
~I'm here for an artifact. How tedious, it always I want, want and want with you, mortals. Why wouldn't you stay for while, flatter me. Let's be friends, hehehe.~
END
+~InParty("K3KhaeJ")~+ ~We can be friends, what would you like to do?~ EXTERN K3KHAEJ 5
++ ~Ehhh, how about we stick to the subject. I need this artifact.~ EXTERN K3MEPS 6

CHAIN K3KHAEJ 5
~We don't have time for this, what are you doing, we don't anything about what he is.~
== K3MEPS ~SILENCE! I don't like your tone, a little high octave in taste, and for that I've to punish you.~
DO ~FadeToColor([30.0],0)
    Wait(1)
    StartCutSceneMode()
    StartCutScene("K3CUT04")~ EXIT

CHAIN K3MEPS 6
~Now, now, little one. Let me have my fun, afterward it can be about you, bhaalspawn.~
DO ~FadeToColor([30.0],0)
    Wait(1)
    StartCutSceneMode()
    StartCutScene("K3CUT04")~ EXIT

CHAIN IF ~Global("K3MEPSCAST","GLOBAL",1)~ THEN K3MEPS 7
~You are doing great, little one. We're almost there.~
END
++ ~We're not here to entertain you. Enough of this!~ EXTERN K3MEPS 8

CHAIN K3MEPS 8
~You are not in position to say anything!~
== K3MEPS ~No matter, I'm done with you. You'll get what you want, but be wary.~
DO ~
GiveItemCreate("k3figur",Player1,1,0,0)
ActionOverride(Player1,LeaveAreaLUA("ar0810","",[562.354],4))
ActionOverride(Player2,LeaveAreaLUA("ar0810","",[562.354],4))
ActionOverride(Player3,LeaveAreaLUA("ar0810","",[562.354],4))
ActionOverride(Player4,LeaveAreaLUA("ar0810","",[562.354],4))
ActionOverride(Player5,LeaveAreaLUA("ar0810","",[562.354],4))
ActionOverride(Player6,LeaveAreaLUA("ar0810","",[562.354],4))~ EXIT

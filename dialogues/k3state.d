BEGIN K3STATE

CHAIN IF~True()~ THEN K3STATE FACE1
~A dial is revealed, what do you?~
END
++ ~Turn one time to the left.~ EXTERN K3STATE WRONG
++ ~Turn two times to the left.~ EXTERN K3STATE WRONG
++ ~Turn three times to the left.~ EXTERN K3STATE CORRECT1
++ ~Turn four times to the left.~ EXTERN K3STATE WRONG
++ ~Turn Five times to the left.~ EXTERN K3STATE WRONG

CHAIN K3STATE CORRECT1
~A dial is revealed, what do you?~
END
++ ~Turn one time to the right.~ EXTERN K3STATE WRONG
++ ~Turn two times to the right.~ EXTERN K3STATE WRONG
++ ~Turn three times to the right.~ EXTERN K3STATE WRONG
++ ~Turn four times to the right.~ EXTERN K3STATE CORRECT2
++ ~Turn Five times to the right.~ EXTERN K3STATE WRONG

CHAIN K3STATE CORRECT2
~A dial is revealed, what do you?~
END
++ ~Aperi Mors~ EXTERN K3STATE WRONG
++ ~Fortis Manu Aperi Mors.~ EXTERN K3STATE WRONG
++ ~Fortis Aperi Mors Manu.~ EXTERN K3STATE WRONG
++ ~Manu Fortis Aperi Mors.~ EXTERN K3STATE WRONG
++ ~Aperi Mors Manu Fortis.~ EXTERN K3STATE CORRECT3
++ ~Manu Fortis.~ EXTERN K3STATE WRONG

CHAIN K3STATE CORRECT3
~A dial is revealed, what do you?~
END
++ ~Step forward.~
DO ~
SetGlobal("FaceOne","AR0810",2)
ActionOverride(Player1,LeaveAreaLUA("k3a3502","",[1860.1259],4))
ActionOverride(Player2,LeaveAreaLUA("k3a3502","",[1854.1294],4))
ActionOverride(Player3,LeaveAreaLUA("k3a3502","",[1965.1333],4))
ActionOverride(Player4,LeaveAreaLUA("k3a3502","",[1873.1195],4))
ActionOverride(Player5,LeaveAreaLUA("k3a3502","",[1875.1164],4))
ActionOverride(Player6,LeaveAreaLUA("k3a3502","",[1923.1163],4))~ EXIT
++ ~Step back.~ EXTERN K3STATE WRONG
++ ~Step to the left.~ EXTERN K3STATE WRONG
++ ~Step to the right.~ EXTERN K3STATE WRONG


CHAIN K3STATE WRONG
~You failed to follow the passage in the book and shall now be punished~
DO ~CreateCreature("ZOMBJU01",[368.350],0)
CreateCreature("ZOMBJU01",[564.491],0)
SetGlobal("FaceOne","AR0810",0)
SetGlobal("StateTalk","AR0810",0)
TriggerActivation("k3faceonwall",TRUE)
DestroySelf()~ EXIT
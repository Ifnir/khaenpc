CHAIN IF~Global("K3GERVQUEST","GLOBAL",2) NumberOfTimesTalkedTo(0)~ THEN K3EBRI EBRI1
@101
END
IF ~~THEN REPLY @201 EXTERN K3EBRI EBRI2
IF ~~THEN REPLY @301 EXTERN K3EBRI EBRI3
IF ~~THEN REPLY @401 EXTERN K3EBRI EBRI4

CHAIN K3EBRI EBRI2
@102
END
IF ~~THEN REPLY @202 DO ~Enemy()~ EXIT
IF ~~THEN REPLY @203 EXTERN K3EBRI EBRI5

CHAIN K3EBRI EBRI3
@103
END
IF ~~THEN REPLY @203 EXTERN K3EBRI EBRI5

CHAIN K3EBRI EBRI4
@104
END
IF ~~THEN REPLY @203 EXTERN K3EBRI EBRI5

CHAIN K3EBRI EBRI5
@105
END
IF ~~THEN REPLY @501 EXTERN K3EBRI EBRI6

CHAIN K3EBRI EBRI6
@106
END
IF ~~THEN REPLY @601 EXTERN K3EBRI EBRI.ANGRY
IF ~~THEN REPLY @602 EXTERN K3EBRI EBRI7

CHAIN K3EBRI EBRI.ANGRY
@1071
END
IF ~~THEN REPLY @7071 EXTERN K3EBRI EBRI7

CHAIN K3EBRI EBRI7
@107
END
IF ~~THEN REPLY @701 EXTERN K3EBRI EBRI8

CHAIN K3EBRI EBRI8
@108
END
IF ~~THEN REPLY @801 EXTERN K3EBRI EBRI9

CHAIN K3EBRI EBRI9
@109
DO ~SetGlobal("K3EBRIFQUEST","GLOBAL",1)~ EXIT

//

CHAIN
IF~PartyHasItem("K3STDI") Global("K3EBRIFQUEST","GLOBAL",2)~THEN K3EBRI DISG.1
@110
END
IF ~~THEN REPLY @901 EXTERN K3EBRI DISG.2

CHAIN K3EBRI DISG.2
@111
END
IF ~~THEN REPLY @902 EXTERN K3EBRI DISG.3

CHAIN K3EBRI DISG.3
@112
END
IF ~~THEN REPLY @903 EXTERN K3EBRI DISG.4

CHAIN K3EBRI DISG.4
@113
END
IF ~Global("KILLCOUPLE","K3AR01",0)~THEN REPLY @904 EXTERN K3EBRI DISG.4.1
IF ~Global("KILLCOUPLE","K3AR01",0)~THEN REPLY @905 EXTERN K3EBRI DISG.4.1
IF ~~THEN REPLY @906 EXTERN K3EBRI DISG.4.2

CHAIN K3EBRI DISG.4.1
@114
DO ~SetGlobal("KILLCOUPLE","K3AR01",1)~ EXIT

CHAIN K3EBRI DISG.4.2
@115
END
IF ~~THEN REPLY @907 EXTERN K3EBRI DISG.4.3

CHAIN K3EBRI DISG.4.3
@116
END
IF ~~THEN REPLY @908 EXTERN K3EBRI DISG.4.4

CHAIN K3EBRI DISG.4.4
@117
DO ~TakePartyItem("K3STDI")
SetGlobal("TALKTOGERV2","GLOBAL",1)
SetGlobal("K3EBRIFQUEST","GLOBAL",3)
ActionOverride("K3EBRI",Polymorph(SHADOW_THIEF))
ActionOverride("K3EBRI",EscapeAreaObject("Tran5007a")) ~ EXIT

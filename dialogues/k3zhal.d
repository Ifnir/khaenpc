CHAIN
IF~Global("K3Q1","GLOBAL",2) NumberOfTimesTalkedTo(0) Global("K3GERVQUEST","GLOBAL",1)~ THEN K3ZHAL MEET.ZHAL1
@101
END
IF~~ THEN REPLY @201 EXTERN K3ZHAL MEET.ZHAL2
IF~~ THEN REPLY @2021 EXTERN K3ZHAL ZHAL.ANGRY1

CHAIN K3ZHAL ZHAL.ANGRY1
@1021
END
IF~~ THEN REPLY @2022 EXTERN K3ZHAL ZHAL.ANGRY2

CHAIN K3ZHAL ZHAL.ANGRY2
@1022
DO ~Enemy()~ EXIT

CHAIN K3ZHAL MEET.ZHAL2
@102
END
IF~~ THEN REPLY @202 EXTERN K3ZHAL MEET.ZHAL3

CHAIN K3ZHAL MEET.ZHAL3
@103
END
IF~~THEN REPLY @203 EXTERN K3ZHAL MEET.ZHAL4

CHAIN K3ZHAL MEET.ZHAL4
@104
DO ~SetGlobal("K3GERVQUEST","GLOBAL",2)~ EXIT

CHAIN
IF ~PartyHasItem("K3EBHEAD")~THEN K3ZHAL KILLEBRIF1
@105
END
IF~~THEN REPLY @301 EXTERN K3ZHAL NEWJOB1

CHAIN
IF ~PartyHasItem("K3HEAD")~ THEN K3ZHAL SPAREEBRIF1
@105
END
IF~~THEN REPLY @301 EXTERN K3ZHAL NEWJOB1

CHAIN K3ZHAL NEWJOB1
@106
DO ~SetGlobal("K3GERVQUEST","GLOBAL",3)~ EXIT
BEGIN K3KHAE
BEGIN K3DEB1
BEGIN K3DEB2
BEGIN K3DEB3
BEGIN K3DEM
BEGIN K3GERV
BEGIN K3BROR
BEGIN K3QUY
BEGIN K3ULA
BEGIN K3VERD
BEGIN K3ZHAL
BEGIN K3COWL
BEGIN K3BRIX

CHAIN 
IF~Global("K3DEBT","GLOBAL",0)~ THEN K3KHAE KHAE.00.00
@0
DO ~FadeToColor([30.0],0)
    Wait(1)
    ClearAllActions()
    MoveViewPoint([3109.2573],INSTANT)
    StartCutSceneMode()
    StartCutScene("K3CUT01")~ EXIT

CHAIN 
IF~Global("K3DEBT","GLOBAL",1) !AreaCheck("AR0021")~ THEN K3KHAE DEB1.01.01
@1 
END 
IF~~ THEN REPLY @2 EXTERN K3KHAE DEB1.01.02

CHAIN K3KHAE DEB1.01.02
@3
==K3DEB1 @4
==K3DEB2 @5
==K3DEB3 @6
==K3DEB1 @7
END
IF~~ THEN REPLY @8 EXTERN K3KHAE DEB1.01.04

CHAIN K3KHAE DEB1.01.04
@9
==K3DEB1 @10
==K3DEB2 @11
END
IF~~ THEN REPLY @12 EXTERN K3KHAE DEB1.01.05
IF~~ THEN REPLY @100 EXTERN K3Khae RUN.01

CHAIN K3KHAE DEB1.01.05
@13
== K3DEB1 @14
== K3DEB2 @15
DO ~ActionOverride("K3DEB1",Enemy())
    ActionOverride("K3DEB2",Enemy())
    ActionOverride("K3DEB3",Enemy())~ EXIT

CHAIN IF~!AreaCheck("AR0021")
Global("K3DEBT","GLOBAL",2)~ THEN K3KHAE DEB1.01.06
@16
END
IF~~ THEN REPLY @17 EXTERN K3KHAE DEB1.01.07

CHAIN K3KHAE DEB1.01.07
@18
END
IF~~ THEN REPLY @19 EXTERN K3KHAE DEB1.01.08

CHAIN K3KHAE DEB1.01.08
@20
END
IF~~ THEN REPLY @21 EXTERN K3KHAE DEB1.01.09

CHAIN K3KHAE DEB1.01.09
@22
== K3KHAE @23
END
IF~~ THEN REPLY @24 EXTERN K3KHAE DEB1.01.10

CHAIN K3KHAE DEB1.01.10
@25
END
IF~~ THEN REPLY @26 EXTERN K3KHAE DEB1.01.11

CHAIN K3KHAE DEB1.01.11
@27
END
IF~~ THEN REPLY @28 EXTERN K3KHAE KHAE.JOIN1
IF~~ THEN REPLY @30 EXTERN K3KHAE KHAE.JOIN2

CHAIN K3KHAE KHAE.JOIN1
@29
DO ~JoinParty()~ EXIT

CHAIN K3KHAE KHAE.JOIN2
@31
END
IF~~ THEN REPLY @32 EXTERN K3KHAE KHAE.JOIN2.1

CHAIN K3KHAE KHAE.JOIN2.1
@33
END
IF~~ THEN REPLY @34 EXTERN K3KHAE KHAE.JOIN2.2

CHAIN K3KHAE KHAE.JOIN2.2
@35
END
IF~~ THEN REPLY @36 EXTERN K3KHAE KHAE.JOIN2.3

CHAIN K3KHAE KHAE.JOIN2.3
@37
END
IF~~ THEN REPLY @38 EXTERN K3KHAE KHAE.JOIN2.4

CHAIN K3KHAE KHAE.JOIN2.4
@39
DO ~JoinParty()~ EXIT

// Teleports out.
CHAIN K3KHAE RUN.01
@101
DO ~FadeToColor([30.0],0)
    Wait(1)
    StartCutSceneMode()
    StartCutScene("K3CUT03")~ EXIT

// In gatehouse
CHAIN IF~Global("K3HIDE","Global",2)
AreaCheck("AR0021")~
THEN K3KHAE KHAE.HIDE1
@102
END
IF~~ THEN REPLY @103 EXTERN K3KHAE KHAE.HIDE2

CHAIN K3KHAE KHAE.HIDE2
@104
END
IF~~ THEN REPLY @105 EXTERN K3KHAE KHAE.HIDE3
IF~~ THEN REPLY @106 EXTERN K3KHAE KHAE.HIDE4

CHAIN K3KHAE KHAE.HIDE3
@107
END
IF~~ THEN REPLY @110 DO ~JoinParty()~ EXIT

CHAIN IF~Global("K3INSULT","AR0021",0)~ THEN K3KHAE KHAE.HIDE4
@108
DO ~SetGlobal("K3INSULT","AR0021",1)~ EXIT

CHAIN IF~Global("K3INSULT","AR0021",1)~ THEN K3KHAE KHAE.HIDE5
@109
EXIT

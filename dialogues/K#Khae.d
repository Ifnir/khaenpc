BEGIN K#KHAE
BEGIN K#DEB1

CHAIN 
IF~Global("K#DEBT","GLOBAL", 0)~ THEN K#KHAE KHAE.00.00
@0
DO ~FadeToColor([30.0],0)
    Wait(1)
    ClearAllActions()
    MoveViewPoint([3109.2573],INSTANT)
    StartCutSceneMode()
    StartCutScene("K#CUT01")~ EXIT

CHAIN 
IF~Global("K#DEBT","GLOBAL",1)~ THEN K#KHAE DEB1.01.01
@1 EXTERN K#DEB1 DEB1.01.02


CHAIN K#DEB1 DEB1.01.02 
@2 EXIT
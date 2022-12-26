EXTEND_BOTTOM FATESP 6 #9
+~!Dead("K#KHAE")!Dead("K#KHAE")!InMyArea("K#KHAE")Global("K#KHAESummoned","GLOBAL",0)ReputationGT(Player1,7)~+ @0
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("K#KHAE25",[1999.1228],0) 
SetGlobal("K#KHAESummoned","GLOBAL",1)~ GOTO 8
END
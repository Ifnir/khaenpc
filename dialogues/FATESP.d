EXTEND_BOTTOM FATESP 6 #9
+~!Dead("K3Khae")!Dead("K3Khae")!InMyArea("K3Khae")Global("K3KhaeSummoned","GLOBAL",0)ReputationGT(Player1,7)~+ @0
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("K3Khae25",[1999.1228],0) 
SetGlobal("K3KhaeSummoned","GLOBAL",1)~ GOTO 8
END
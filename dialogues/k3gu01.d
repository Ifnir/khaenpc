//Check out MaeVar script to start dialogue
BEGIN K3GU01

CHAIN 
IF~Global("K3Q1","GLOBAL",0)~ THEN K3GU01 K3SEWERSOUT
@0
EXIT

CHAIN 
IF~Global("K3Q1","GLOBAL",1)~ THEN K3GU01 K3SEWERSOUT
@0
EXIT
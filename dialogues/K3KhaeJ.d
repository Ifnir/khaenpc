BEGIN K3KHAEJ

// APPEND K3KHAEP

CHAIN
IF~Global("K3DEBT","GLOBAL",2) InParty("Yoshimo")See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("K#KHAEJ",CD_STATE_NOTVALID)~ THEN K3KHAEJ KHAE.ST.1
@0
== BYOSHIM @1
== K3KHAEJ @2
== BYOSHIM @3 EXTERN BYOSHIM K3YOS1

// Change dialogue to include the player
CHAIN BYOSHIM K3YOS1
@4
END
IF~~ THEN REPLY @5 EXTERN K3KHAEJ K3YOS2

CHAIN K3KHAEJ K3YOS2
@6
DO ~SetGlobal("K3DEBT","GLOBAL",3)~ EXIT


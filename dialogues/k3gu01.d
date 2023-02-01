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

CHAIN 
IF ~Global("KILLCOUPLE","K3AR01",3)~THEN K3GU01 K3LOVE
~Oh fair man, I have beheld thee from afar and I cannot resist the urge to profess my undying love.~
== K3DEB1 ~Thou hast captured my heart and soul with but a mere glance. I shall spend the rest of my days showering thee with gifts and adoration.~
== K3GU01 ~Thy beauty shines brighter than the light of Selûne, and I am but a mere moth drawn to thy flame.~
== K3DEB1 ~I would brave any danger, cross any distance, just to be near thee and bask in thy radiance.~
== K3GU01 ~I promise to cherish thee forever and always, my love for thee shall never fade.~
== K3DEB1 ~And I shall stand by thy side, through thick and thin, as thy steadfast companion and lover.~
== K3GU01 ~Hold on, someone is near. We shall not expose our love, the world is not ready for it.~
== K3DEB1 ~Let's take up arms, my love, and show the world the depth of our devotion.~
DO ~SetGlobal("KILLCOUPLE","K3AR01",4)~ EXIT  
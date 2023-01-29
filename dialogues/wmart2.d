EXTEND_TOP WMART2 1 
+~Global("K3GERVQUEST","GLOBAL",3) Global("DEIDREIMPORT","GLOBAL",0)~+ ~We heard you're been missing merchandise lately?~ EXTERN WMART2 XWALMART1 
END 

CHAIN WMART2 XWALMART1 
~Shhh. Not so loud. Yes , I'm missing merchandise ordered from you, someone is intercepting the delivering and killing my men.~ 
END 
++ ~Do you have another deliver coming.~ EXTERN WMART2 XWALMART2

CHAIN WMART2 XWALMART2
~Yes, this night, at the dock near the lighthouse.~
END
++ ~Alright, we'll be taking and personally making sure you recieve the next deliver.~ EXTERN WMART2 XWALMART3

CHAIN WMART2 XWALMART3
~What a gentleman, the man you'll be meeting is Tom Lee Homes.~
 EXIT


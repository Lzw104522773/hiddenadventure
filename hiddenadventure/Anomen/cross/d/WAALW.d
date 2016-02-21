BEGIN WAALW

CHAIN
IF ~Global("WAMoirQ","Global",4)
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN WAALW Anomen_AlweskChain01
@0
== ANOMENJ @1
== WAALW @2
END
IF ~InParty("Keldorn")
InParty("C#Ajantis")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ EXTERN KELDORJ Keldorn_AlweskChain01
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!InParty("C#Ajantis")~ EXTERN KELDORJ Keldorn_AlweskChain01
IF ~!InParty("Keldorn")
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ EXTERN C#AJANJ Ajantis_AlweskChain01
IF ~!InParty("Keldorn")
!InParty("C#Ajantis")~ EXTERN ANOMENJ Anomen_AlweskChain02
CHAIN
IF ~~ THEN KELDORJ Keldorn_AlweskChain01
@3
== WAALW @4
== KELDORJ @5
== WAALW @6
END
IF ~InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ EXTERN C#AJANJ Ajantis_AlweskChain01
IF ~!InParty("C#Ajantis")~ EXTERN ANOMENJ Anomen_AlweskChain02
CHAIN
IF ~~ THEN ANOMENJ Anomen_AlweskChain02
@7
== WAALW @8
END
++ @9 EXTERN WAALW Anomen_AlweskChain03
CHAIN
IF ~~ THEN WAALW Anomen_AlweskChain03
@10
END
++ @11 EXTERN WAALW Anomen_AlweskChain04
CHAIN
IF ~~ THEN WAALW Anomen_AlweskChain04
@12
== ANOMENJ @13
== WAALW @14
END
++ @15 EXTERN WAALW Anomen_AlweskChain05
++ @16 EXTERN WAALW Anomen_AlweskChain05
CHAIN
IF ~~ THEN WAALW Anomen_AlweskChain05
@17
END
++ @18 EXTERN WAALW Anomen_AlweskChain06
++ @19 EXTERN WAALW Anomen_AlweskChain06
++ @20 EXTERN WAALW Anomen_AlweskChain06
CHAIN
IF ~~ THEN WAALW Anomen_AlweskChain06
@21
= @22
END
++ @23 EXTERN WAALW Anomen_AlweskChain07
CHAIN
IF ~~ THEN WAALW Anomen_AlweskChain07
@24
END
++ @25 DO ~ActionOverride("WAALW",EscapeAreaObject("Tran0333"))
SetGlobal("WAMoirQ","Global",5)
AddJournalEntry(@3016,QUEST)~ EXIT
++ @26 DO ~ActionOverride("WAALW",EscapeAreaObject("Tran0333"))
SetGlobal("WAMoirQ","Global",5)
AddJournalEntry(@3016,QUEST)~ EXIT
CHAIN
IF ~~ THEN C#AJANJ Ajantis_AlweskChain01
@27
== WAALW @28
== C#AJANJ @29
== WAALW @30
== C#AJANJ @31
== WAALW @32
END
IF ~~ EXTERN ANOMENJ Anomen_AlweskChain02

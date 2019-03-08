CHAIN
IF ~Global("WAMoirQ","Global",5)~ THEN WAALW Anomen_AlweskCHAIN2_1
@0
END
IF ~~ THEN DO ~AddexperienceParty(100)~ EXTERN WAALW Anomen_AlweskCHAIN2_1_1
CHAIN
IF ~~ THEN WAALW Anomen_AlweskCHAIN2_1_1
@1
= @2
== ANOMENJ @3
== WAALW @4
== ANOMENJ @5
== WAALW @6
= @7
END
++ @8 EXTERN WAALW Anomen_AlweskCHAIN2_1_2
++ @9 EXTERN WAALW Anomen_AlweskCHAIN2_1_2
++ @10 EXTERN WAALW Anomen_AlweskCHAIN2_1_2

CHAIN
IF ~~ THEN WAALW Anomen_AlweskCHAIN2_1_2
@11
END
++ @12 EXTERN ANOMENJ Anomen_AlweskCHAIN2_1_3

CHAIN
IF ~~ THEN ANOMENJ Anomen_AlweskCHAIN2_1_3
@13
== WAALW @14
END
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("WAMoirQ","Global",6)~ EXTERN KORGANJ Korgan_AlweskCHAIN1
IF ~OR(3)
!InParty("Korgan")
!See("Korgan")
StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN DO ~AddJournalEntry(@3017,QUEST)
SetGlobal("WAMoirQ","Global",6)~ EXIT

CHAIN
IF ~~ THEN KORGANJ Korgan_AlweskCHAIN1
@15
END
IF ~~ THEN DO ~AddJournalEntry(@3017,QUEST)~ EXIT
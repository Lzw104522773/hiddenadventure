CHAIN
IF ~Global("WAMoirQ","Global",13)~ THEN WAJAIK Anomen_Jaiken_EndCHAIN1
@0
= @1
END
IF ~~ THEN DO ~GiveGoldForce(100)~ GOTO Anomen_Jaiken_EndCHAIN2
CHAIN
IF ~~ THEN WAJAIK Anomen_Jaiken_EndCHAIN2
~~
END
++ @3 EXTERN WAJAIK Anomen_Jaiken_EndCHAIN3
++ @4 EXTERN WAJAIK Anomen_Jaiken_EndCHAIN3
CHAIN
IF ~~ THEN WAJAIK Anomen_Jaiken_EndCHAIN3
@5
== ANOMENJ @6
END
++ @7 DO ~ActionOverride("Anomen",JoinParty())~ EXTERN ANOMENJ Anomen_Jaiken_EndCHAIN4
++ @8 DO ~ActionOverride("Anomen",JoinParty())~ EXTERN ANOMENJ Anomen_Jaiken_EndCHAIN5
CHAIN
IF ~~ THEN ANOMENJ Anomen_Jaiken_EndCHAIN4
@9
END
IF ~~ THEN DO ~ActionOverride("WAJAIK",EscapeAreaObject("Tran0500"))
AddexperienceParty(200)
AddJournalEntry(@3023,QUEST_DONE)
EraseJournalEntry(@3015)
EraseJournalEntry(@3016)
EraseJournalEntry(@3017)
EraseJournalEntry(@3018)
EraseJournalEntry(@3019)
EraseJournalEntry(@3020)
EraseJournalEntry(@3021)
SetGlobal("WAMoirQ","Global",14)~  EXIT
CHAIN
IF ~~ THEN ANOMENJ Anomen_Jaiken_EndCHAIN5
@10
END
IF ~~ THEN DO ~ActionOverride("WAJAIK",EscapeAreaObject("Tran0500"))
AddexperienceParty(200)
AddJournalEntry(@3023,QUEST_DONE)
EraseJournalEntry(@3015)
EraseJournalEntry(@3016)
EraseJournalEntry(@3017)
EraseJournalEntry(@3018)
EraseJournalEntry(@3019)
EraseJournalEntry(@3020)
EraseJournalEntry(@3021)
SetGlobal("WAMoirQ","Global",14)~  EXIT

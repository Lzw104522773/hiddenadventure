CHAIN
IF ~Global("WAMoirQ","Global",13)~ THEN WAJAIK Anomen_Jaiken_EndCHAIN1
@0
= @1
END
IF ~~ THEN DO ~GiveGoldForce(400)~ GOTO Anomen_Jaiken_EndCHAIN2

CHAIN
IF ~~ THEN WAJAIK Anomen_Jaiken_EndCHAIN2
~~
END
++ @3 EXTERN WAJAIK Anomen_Jaiken_EndCHAIN3
++ @4 EXTERN WAJAIK Anomen_Jaiken_EndCHAIN3

CHAIN
IF ~~ THEN WAJAIK Anomen_Jaiken_EndCHAIN3
@5
== ANOMENP @6
END
++ @7 EXTERN ANOMENP Anomen_Jaiken_EndCHAIN4
++ @8 EXTERN ANOMENP Anomen_Jaiken_EndCHAIN5

CHAIN
IF ~~ THEN ANOMENP Anomen_Jaiken_EndCHAIN4
@9
END
IF ~~ THEN DO ~AddexperienceParty(200)
AddJournalEntry(@3023,QUEST_DONE)
EraseJournalEntry(@3015)
EraseJournalEntry(@3016)
EraseJournalEntry(@3017)
EraseJournalEntry(@3018)
EraseJournalEntry(@3019)
EraseJournalEntry(@3020)
EraseJournalEntry(@3021)
SetGlobal("WAMoirQ","Global",14)
SetGlobal("KickedOut","LOCALS",0)
JoinParty()
ActionOverride("WAJAIK",EscapeAreaObject("Tran0500"))~  EXIT

CHAIN
IF ~~ THEN ANOMENP Anomen_Jaiken_EndCHAIN5
@10
END
IF ~~ THEN DO ~AddexperienceParty(200)
AddJournalEntry(@3023,QUEST_DONE)
EraseJournalEntry(@3015)
EraseJournalEntry(@3016)
EraseJournalEntry(@3017)
EraseJournalEntry(@3018)
EraseJournalEntry(@3019)
EraseJournalEntry(@3020)
EraseJournalEntry(@3021)
SetGlobal("WAMoirQ","Global",14)
SetGlobal("KickedOut","LOCALS",0)
JoinParty()
ActionOverride("WAJAIK",EscapeAreaObject("Tran0500"))~  EXIT

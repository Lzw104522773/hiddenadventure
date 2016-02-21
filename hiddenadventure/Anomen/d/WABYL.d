CHAIN
IF ~AreaCheck("AR1002")
See("Bylanna")
Global("WAMoirQ","Global",3)~ THEN ANOMENJ Anomen_ByllanaCHAIN01
@0
== BYLANNA @1
END
++ @2 EXTERN BYLANNA Anomen_ByllanaCHAIN02
CHAIN
IF ~~ THEN BYLANNA Anomen_ByllanaCHAIN02
@3
== ANOMENJ @4
== BYLANNA @5
END
++ @6 DO ~SetGlobal("WAMoirQ","Global",4)
AddJournalEntry(@3018,QUEST)~ EXIT
++ @7 DO ~SetGlobal("WAMoirQ","Global",4)
AddJournalEntry(@3018,QUEST)~ EXIT

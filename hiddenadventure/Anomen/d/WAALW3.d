APPEND WAALW

IF ~Global("WAMoirQ","Global",8)~ THEN BEGIN WAALW03_1
SAY @0
++ @1 EXIT
+ ~PartyHasItem("WASTANS")~ + @2 DO ~TakePartyItem("WASTANS")~ GOTO WAALW03_2
END

IF ~~ THEN WAALW03_2
SAY @3
IF ~~ THEN DO ~GiveGoldForce(100)
AddexperienceParty(90)~ GOTO WAALW03_3
END

IF ~~ THEN WAALW03_3
SAY @4
IF ~~ THEN DO ~CreateCreature("Terl",[212.490],0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("WACTERL")~ EXIT
END

END

CHAIN
IF WEIGHT #-1
~Global("WAMoirQ","Global",8)~ THEN TERL Anomen_TerlCHAIN1
@5
== ANOMENJ @6
== TERL @7
== ANOMENJ @8
END
IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",9)
ClearAllActions()
StartCutSceneMode()
StartCutScene("WACTERL2")~ EXIT


CHAIN
IF WEIGHT #-1
~Global("WAMoirQ","Global",9)~ THEN WAALW WAALW03Chain_01
@9
END
++ @10 GOTO WAALW03_6 
++ @11 GOTO WAALW03_4
++ @12 GOTO WAALW03_5

CHAIN
IF ~~ THEN WAALW WAALW03_4
@13
END
++ @10 GOTO WAALW03_6 
++ @12 GOTO WAALW03_5
++ @16  DO ~AddJournalEntry(@3022,QUEST_DONE)
EraseJournalEntry(@3015)
EraseJournalEntry(@3016)
EraseJournalEntry(@3017)
EraseJournalEntry(@3018)
EraseJournalEntry(@3019)
EraseJournalEntry(@3020)
EraseJournalEntry(@3021)
SetGlobal("WAMoirQ","Global",99)~ EXIT

CHAIN
IF ~~ THEN WAALW WAALW03_5
@17
END
++ @10 GOTO WAALW03_6
++ @16 DO ~AddJournalEntry(@3022,QUEST_DONE)
EraseJournalEntry(@3015)
EraseJournalEntry(@3016)
EraseJournalEntry(@3017)
EraseJournalEntry(@3018)
EraseJournalEntry(@3019)
EraseJournalEntry(@3020)
EraseJournalEntry(@3021)
SetGlobal("WAMoirQ","Global",99)~ EXIT

CHAIN
IF ~~ THEN WAALW WAALW03_6
@19
END
IF ~~ THEN DO ~AddJournalEntry(@3021,QUEST)
SetGlobal("WAMoirQ","Global",10)~ EXIT




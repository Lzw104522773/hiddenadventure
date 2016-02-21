BEGIN WASYLAR

IF ~NumTimesTalkedTo(0)~ BEGIN 0
	SAY @0
	++ @1 + 1
	++ @2 + 1
	++ @3 + 8
END

IF ~~ BEGIN 1
	SAY @4
	++ @5 + 2
	+ ~!Kit(LastTalkedToBy(Myself),MAGESCHOOL_NECROMANCER)~ + @6 + 3
	++ @7 + 8
END

IF ~~ BEGIN 2
	SAY @8
	++ @9 + 3
END

IF ~~ BEGIN 3
	SAY @10
	++ @9 + 4
END

IF ~~ BEGIN 4
	SAY @11
	++ @12 + 5
	++ @13 + 6
	+ ~Kit(LastTalkedToBy(Myself),MAGESCHOOL_NECROMANCER)~ + @14 + 7
END

IF ~~ BEGIN 5
	SAY @15
	IF ~~ THEN DO ~SetGlobal("WAHelpSylar","Global",1) AddJournalEntry(@9003,INFO)~ EXIT
END

IF ~~ BEGIN 6
	SAY @16
	IF ~~ THEN DO ~AddJournalEntry(@9004,INFO)~ EXIT
END

IF ~~ BEGIN 7
	SAY @17 
	IF ~~ THEN DO ~SetGlobal("WAHelpSylar","Global",1) AddJournalEntry(@9005,INFO)~ EXIT
END

IF ~~ BEGIN 8
	SAY @16
	IF ~~ THEN EXIT
END

IF ~Global("WAHelpSylar","Global",0)~ BEGIN 9
	SAY @18
	++ @19 + 10
	++ @20 EXIT
END

IF ~~ BEGIN 10
	SAY @21
	IF ~~ THEN DO ~SetGlobal("WAHelpSylar","Global",1) AddJournalEntry(@9006,INFO)~ EXIT
END

IF ~Global("WAHelpSylar","Global",1)~ BEGIN 11
	SAY @22
	++ @23 EXIT
	+ ~PartyHasItem("Misc80")~ + @24 + 12
END

IF ~~ BEGIN 12
	SAY @25
	IF ~~ THEN DO ~TakePartyItem("MISC80") GiveGoldForce(150) SetGlobal("WAHelpSylar","Global",2)~ EXIT
END

IF ~Global("WAHelpSylar","Global",2)~ BEGIN 13
	SAY @26
	++ @23 EXIT
	+ ~PartyHasItem("Misc80")~ + @24 + 14
END

IF ~~ BEGIN 14
	SAY @25
	IF ~~ THEN DO ~TakePartyItem("MISC80") GiveGoldForce(150) SetGlobal("WAHelpSylar","Global",3)~ EXIT
END

IF ~Global("WAHelpSylar","Global",3)~ BEGIN 15
	SAY @26
	++ @23 EXIT
	+ ~PartyHasItem("Misc80")~ + @24 + 16
END

IF ~~ BEGIN 16
	SAY @25
	IF ~~ THEN DO ~TakePartyItem("MISC80") GiveGoldForce(150) SetGlobal("WAHelpSylar","Global",4)~ EXIT
END

IF ~Global("WAHelpSylar","Global",4)~ BEGIN 17
	SAY @26
	++ @23 EXIT
	+ ~PartyHasItem("Misc80")~ + @24 + 18
END

IF ~~ BEGIN 18
	SAY @25
	IF ~~ THEN DO ~TakePartyItem("MISC80") GiveGoldForce(150) SetGlobal("WAHelpSylar","Global",5)~ EXIT
END

IF ~Global("WAHelpSylar","Global",5)~ BEGIN 19
	SAY @26
	++ @23 EXIT
	+ ~PartyHasItem("Misc80")~ + @24 + 20
END

IF ~~ BEGIN 20
	SAY @25
	IF ~~ THEN DO ~TakePartyItem("MISC80") GiveGoldForce(150) SetGlobal("WAHelpSylar","Global",6)~ EXIT
END

IF ~Global("WAHelpSylar","Global",6)~ BEGIN 21
	SAY @26
	++ @23 EXIT
	+ ~PartyHasItem("Misc80")~ + @24 + 22
END

IF ~~ BEGIN 22
	SAY @27
	IF ~~ THEN DO ~TakePartyItem("MISC80") GiveGoldForce(150) SetGlobal("WAHelpSylar","Global",7) EscapeArea()~ EXIT
END

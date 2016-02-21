BEGIN ~WAWisp~

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN WAWisp WAWispchain1
@0
== ANOMENJ @1
== WAWisp @2
== ANOMENJ @3
== WAWisp @4
== ANOMENJ @5
== WAWisp @6
== ANOMENJ @7
== WAWisp @8
== ANOMENJ @9
= @10
== WAWisp @11
== ANOMENJ @12
== WAWisp @13
END
++ @14 EXTERN ANOMENJ WAWispchain2
++ @15 EXTERN ANOMENJ WAWispchain2

CHAIN
IF ~~ THEN ANOMENJ WAWispchain2
@16
END
IF ~~ THEN EXTERN WAWisp WAWispchain3

CHAIN
IF ~~ THEN WAWisp WAWispchain3
@17
= @18
END
IF ~~ THEN DO ~EscapeArea()~ EXTERN ANOMENJ WAAN01

APPEND ANOMENJ

IF ~~ THEN WAAN01
		SAY @19
		++ @20 + WAAN02
		++ @21 + WAAN03
		++ @22 + WAAN04
	END
	
	IF ~~ THEN WAAN02
		SAY @23
		++ @24 + WAAN04
		++ @21 + WAAN03
	END
	
	IF ~~ THEN  WAAN03
		SAY @25
		++ @26 + WAAN04
		++ @27 + WAAN05
	END
	
	IF ~~ THEN WAAN04
		SAY @28
		IF ~~ THEN DO ~AddJournalEntry(@3019,QUEST)
		SetGlobal("WAMoirQ","Global",1)~ EXIT
	END
	
	IF ~~ THEN BEGIN WAAN05
		SAY @29
		IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeArea()~ EXIT
	END

END 
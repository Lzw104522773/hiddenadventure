/*
ADD_TRANS_TRIGGER WWENCH 0 ~OR(2)
!InParty("Anomen")
!Global("WARebAbA","Global",1)~ DO 0
*/

EXTEND_BOTTOM WWENCH 0
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!Global("WARebAbA","Global",1)
!GlobalGT("WAMoirQ","Global",1)~ THEN EXTERN ANOMENJ Anomen_RebeccaCHAIN1 
/*
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WARebAbA","Global",1)~ THEN EXIT
*/
END

/*
ADD_TRANS_TRIGGER WWENCH 1 ~OR(2)
!InParty("Anomen")
!Global("WARebAbA","Global",1)~ DO 0
*/
EXTEND_BOTTOM WWENCH 1
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!Global("WARebAbA","Global",1)
!GlobalGT("WAMoirQ","Global",1)~ THEN EXTERN ANOMENJ Anomen_RebeccaCHAIN1 
/*
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WARebAbA","Global",1)~ THEN EXIT
*/
END

/*
ADD_TRANS_TRIGGER WWENCH 2 ~OR(2)
!InParty("Anomen")
!Global("WARebAbA","Global",1)~ DO 0
*/
EXTEND_BOTTOM WWENCH 2
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!Global("WARebAbA","Global",1)
!GlobalGT("WAMoirQ","Global",1)~ THEN EXTERN ANOMENJ Anomen_RebeccaCHAIN1 
/*
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WARebAbA","Global",1)~ THEN EXIT
*/
END

CHAIN
IF ~~ THEN ANOMENJ Anomen_RebeccaCHAIN1
@0
== WWENCH @1
== WINNKEEP @2
== WWENCH @3
== ANOMENJ @4
END
++ @5 EXTERN ANOMENJ Anomen_RebeccaCHAIN2

CHAIN
IF ~~ THEN ANOMENJ Anomen_RebeccaCHAIN2
@6
= @7
END
IF ~~ THEN DO ~SetGlobal("WARebAbA","Global",1)~ EXIT

APPEND ANOMENJ

IF ~Global("WAMoirQ","Global",1)
AreaCheck("AR0704")
!Global("WARebAbA","Global",1)~ THEN BEGIN Anomen_Remembers_Rebecca01
SAY @8
IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",2)~ EXIT
END

IF ~Global("WAMoirQ","Global",1)
AreaCheck("AR0704")
Global("WARebAbA","Global",1)~ THEN BEGIN Anomen_Remembers_Rebecca02
SAY @9
IF ~~ THEN REPLY @10 DO ~SetGlobal("WAMoirQ","Global",2)~ EXIT
END

END

CHAIN
IF WEIGHT #-999 ~Global("WAMoirQ","Global",2)~ THEN WWENCH Anomen_RebeccaCHAIN3
@11
== ANOMENJ @12
= @13
== WWENCH @14
== ANOMENJ @15
END
++ @16 EXTERN WWENCH Anomen_RebeccaCHAIN4
++ @17 EXTERN WWENCH Anomen_RebeccaCHAIN4
CHAIN
IF ~~ THEN WWENCH Anomen_RebeccaCHAIN4
@18
= @19
== ANOMENJ @20
== WWENCH @21
= @22
== ANOMENJ @23
== WWENCH @24
= @25
= @26
= @27
END
++ @28 EXTERN WWENCH Rebecca_Answer01
++ @29 EXTERN WWENCH Rebecca_Answer02
++ @30 EXTERN WWENCH Rebecca_Answer03

APPEND WWENCH
IF ~~ THEN BEGIN Rebecca_Answer01
SAY @31
IF ~~ THEN GOTO Anomen_RebeccaCHAIN5
END

IF ~~ THEN BEGIN Rebecca_Answer02
SAY @32
IF ~~ THEN GOTO Anomen_RebeccaCHAIN5
END

IF ~~ THEN BEGIN Rebecca_Answer03
SAY @33
IF ~~ THEN GOTO Anomen_RebeccaCHAIN5
END

END

CHAIN
IF ~~ THEN WWENCH Anomen_RebeccaCHAIN5
@34
== ANOMENJ @35
== WWENCH @36
END
IF ~~ THEN DO ~GiveItem("WAMOIRK","Anomen")~ EXTERN ANOMENJ Anomen_RebeccaCHAIN6
CHAIN
IF ~~ THEN ANOMENJ Anomen_RebeccaCHAIN6
@37
= @38
END
IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",3)
AddJournalEntry(@3020,QUEST)~ EXIT
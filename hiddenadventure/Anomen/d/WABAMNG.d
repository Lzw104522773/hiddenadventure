ADD_TRANS_TRIGGER BAMNG01 0 ~!Global("WAMoirQ","Global",5)~ DO 0
EXTEND_BOTTOM BAMNG01 0
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @0 GOTO BAMNG01_1
END

ADD_TRANS_TRIGGER BAMNG01 1 ~!Global("WAMoirQ","Global",5)~ DO 0
EXTEND_BOTTOM BAMNG01 1
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @0 GOTO BAMNG01_1
END

ADD_TRANS_TRIGGER BAMNG01 2 ~!Global("WAMoirQ","Global",5)~ DO 0
EXTEND_BOTTOM BAMNG01 2
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @1 GOTO BAMNG01_1
END

ADD_TRANS_TRIGGER BAMNG01 3 ~!Global("WAMoirQ","Global",5)~ DO 0
EXTEND_BOTTOM BAMNG01 3
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @2 GOTO BAMNG01_1
END

ADD_TRANS_TRIGGER VICONIJ 21 ~!Global("WAMoirQ","Global",5)~ DO 0
EXTEND_BOTTOM VICONIJ 21
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @3 EXTERN BAMNG01 BAMNG01_1
END

ADD_TRANS_TRIGGER YOSHJ  19 ~!Global("WAMoirQ","Global",5)~ DO 0
EXTEND_BOTTOM YOSHJ  19
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @3 EXTERN BAMNG01 BAMNG01_1
END

APPEND BAMNG01

IF ~~ THEN BEGIN BAMNG01_1
SAY @4
++ @5 + BAMNG01_2
END

IF ~~ THEN BEGIN BAMNG01_2
SAY @6
IF ~~ THEN DO ~SetGlobal("WABAMNG01","Global",1)
EscapeAreaObject("Tran0500")~ EXIT
END

END

ADD_TRANS_TRIGGER JaheiraJ  287 ~!Global("WAMoirQ","Global",5)~ DO 0
EXTEND_BOTTOM JaheiraJ  287
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @7 EXTERN WAMNG02 WAMNG02_1
END

ADD_TRANS_TRIGGER NaliaJ  129 ~!Global("WAMoirQ","Global",5)~ DO 0
EXTEND_BOTTOM NaliaJ  129
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @7 EXTERN WAMNG02 WAMNG02_1
END

BEGIN ~WAMNG02~

IF WEIGHT #2 ~RandomNum(4,1)
~ THEN BEGIN 0
  SAY #28444
  IF ~!Global("WAMoirQ","Global",5)~ THEN EXIT
  IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @7 GOTO WAMNG02_1
END

IF WEIGHT #3 ~RandomNum(4,2)
~ THEN BEGIN 1
  SAY #28445
  IF ~!Global("WAMoirQ","Global",5)~ THEN EXIT
  IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @7 GOTO WAMNG02_1
END

IF WEIGHT #4 ~RandomNum(4,3)
~ THEN BEGIN 2
  SAY #28446
  IF ~!Global("WAMoirQ","Global",5)~ THEN EXIT
  IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @7 GOTO WAMNG02_1
END

IF WEIGHT #5 ~RandomNum(4,4)
~ THEN BEGIN 3
  SAY #28448
  IF ~!Global("WAMoirQ","Global",5)~ THEN EXIT
  IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("WAMoirQ","Global",5)~ THEN REPLY @7 GOTO WAMNG02_1
END

IF WEIGHT #0 ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Jaheira",STATE_SLEEPING)
RandomNum(2,1)
Global("bamng02Jaheira","GLOBAL",0)
~ THEN BEGIN 4
  SAY #28449
  IF ~~ THEN DO ~SetGlobal("bamng02Jaheira","GLOBAL",1)
~ EXTERN ~JAHEIRAJ~ 287
END

IF WEIGHT #1 ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Nalia",STATE_SLEEPING)
RandomNum(2,1)
Global("bamng02Nalia","GLOBAL",0)
~ THEN BEGIN 5
  SAY #28451
  IF ~~ THEN DO ~SetGlobal("bamng02Nalia","GLOBAL",1)
~ EXTERN ~NALIAJ~ 129
END

IF ~~ THEN BEGIN WAMNG02_1
SAY @8
++ @9 + WAMNG02_2
END

IF ~~ THEN BEGIN WAMNG02_2
SAY @10
IF ~~ THEN DO ~SetGlobal("WABAMNG02","Global",1)
EscapeAreaObject("Tran0500")~ EXIT
END

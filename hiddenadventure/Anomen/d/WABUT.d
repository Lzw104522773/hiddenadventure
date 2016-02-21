APPEND ~SButler~

IF ~OR(2)
GlobalGT("WAMoirQ","Global",11)
!GlobalGT("WAMoirQ","Global",99)~ THEN BEGIN SCButler1
SAY @0
IF ~~ THEN REPLY @1 DO ~RestParty()~ EXIT
IF ~~ THEN REPLY @2 DO ~StartStore("WABUT",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @3 EXIT
END
END

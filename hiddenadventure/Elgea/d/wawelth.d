BEGIN ~WAWELTH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY @0
	IF ~~ THEN DO ~GiveItem("MISC5O",LastTalkedToBy)
EscapeArea()~ EXIT
END

REPLACE ~Welther~ 
IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~GiveGoldForce(10000)~ GOTO 4
  IF ~~ THEN REPLY @3 DO ~GiveGoldForce(10000)~ GOTO 3
END
END
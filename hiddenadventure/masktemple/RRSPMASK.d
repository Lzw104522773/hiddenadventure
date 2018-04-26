BEGIN RRSPMASK

IF ~True()~ THEN BEGIN 0
  SAY @0 /* ~Seid gegrüßt! Benötigt Ihr die Dienste des Mask?~ */
  IF ~~ THEN REPLY @1 /* ~Das tue ich.~ */ DO ~StartStore("rrspmask",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY @2 /* ~Momentan nicht.~ */ GOTO 1
++ @3 /* ~Was ist dies für ein Ort?~ */ + 2
END

IF ~~ THEN BEGIN 1
  SAY @4 /* ~So geht, solange Euch die Schatten lassen.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN 2
SAY @5 /* ~Ihr befindet Euch im Tempel des Mask, Gott der Diebe und Schatten.~ */
= @6 /* ~Benötigt Ihr die Dienste des Mask?~ */
  IF ~~ THEN REPLY @1 DO ~StartStore("rrspmask",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END
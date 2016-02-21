APPEND FFBART

	IF WEIGHT #-99 ~Global("WABardforSH","Global",2)~ THEN BEGIN WAFFBART01
		SAY @0
		IF ~~ THEN REPLY #25618 DO ~SetGlobal("WABardforSH","Global",3)~ GOTO 1
		IF ~Global("knowsmurders","GLOBAL",1)
		Global("MurdersSolved","GLOBAL",0)~ THEN REPLY #25619 DO ~SetGlobal("WABardforSH","Global",3)~ GOTO 2
		IF ~~ THEN REPLY #25620 DO ~SetGlobal("WABardforSH","Global",3)~ GOTO 3
		IF ~InPartySlot(LastTalkedToBy,0)
		GlobalLT("chapter","GLOBAL",4)~ THEN REPLY #45792 DO ~SetGlobal("WABardforSH","Global",3)~ GOTO 11
		IF ~GlobalLT("chapter","GLOBAL",4)~ THEN REPLY #45793 DO ~SetGlobal("WABardforSH","Global",3)~ GOTO 15
		IF ~~ THEN REPLY #25621 DO ~SetGlobal("WABardforSH","Global",3)~ GOTO 4
	END
	
END

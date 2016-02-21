BEGIN WAOLLIK

BEGIN WASTAN

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN WASTAN Ollik_StanialCHAIN1
@0
== WAOLLIK @1
== WASTAN @2
== WAOLLIK @3
== WASTAN @4
== WAOLLIK @5
== ANOMENJ @6
== WASTAN @7
== ANOMENJ @8
END
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN EXTERN VICONIJ Viconia_StanialCHAIN1
IF ~!InParty("Viconia")~ THEN EXTERN WAOLLIK Ollik_StanialCHAIN2
CHAIN
IF ~~ THEN VICONIJ Viconia_StanialCHAIN1
@9
== WASTAN @10
== VICONIJ @11
END
++ @12 DO ~ActionOverride("WASTAN",Enemy())
ActionOverride("WAOLLIK",Enemy())
SetGlobal("WAMoirQ","Global",7)~ EXIT
++ @13  DO ~ActionOverride("WASTAN",Enemy())
ActionOverride("WAOLLIK",Enemy())
SetGlobal("WAMoirQ","Global",7)~ EXIT
++ @14  DO ~ActionOverride("WASTAN",Enemy())
ActionOverride("WAOLLIK",Enemy())
SetGlobal("WAMoirQ","Global",7)~ EXIT

CHAIN
IF ~~ THEN WAOLLIK Ollik_StanialCHAIN2
@15
END
++ @12  DO ~ActionOverride("WASTAN",Enemy())
ActionOverride("WAOLLIK",Enemy())
SetGlobal("WAMoirQ","Global",7)~ EXIT
++ @13  DO ~ActionOverride("WASTAN",Enemy())
ActionOverride("WAOLLIK",Enemy())
SetGlobal("WAMoirQ","Global",7)~ EXIT
++ @14  DO ~ActionOverride("WASTAN",Enemy())
ActionOverride("WAOLLIK",Enemy())
SetGlobal("WAMoirQ","Global",7)~ EXIT

CHAIN
IF ~Global("WAStanS","Global",2)
!GlobalGT("WAMoirQ","Global",7)~ THEN ANOMENJ Anomen_Stanial_ScrollCHAIN1
@16
= @17
END
IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",8)~ EXIT

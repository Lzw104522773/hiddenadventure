CHAIN
IF ~Global("WAMoirQ","Global",14)
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN Surayah Surayah_AnomenENDCHAIN1
@0
== ANOMENJ @1
== Surayah @2
END
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN EXTERN NALIAJ Nalia_SurayahENDCHAIN1
IF ~!InParty("Nalia")~ THEN EXTERN Surayah Surayah_AnomenENDCHAIN2
CHAIN
IF ~~ THEN NALIAJ Nalia_SurayahENDCHAIN1
@3
END
IF ~~ THEN EXTERN Surayah Surayah_AnomenENDCHAIN2
CHAIN
IF ~~ THEN Surayah Surayah_AnomenENDCHAIN2
@4
= @5
END
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN EXTERN HAERDAJ HaerDalis_SurayahENDCHAIN1
IF ~!InParty("HaerDalis")~ THEN EXTERN Surayah Surayah_AnomenENDCHAIN3
CHAIN
IF ~~ THEN HAERDAJ HaerDalis_SurayahENDCHAIN1
@6
END
IF ~~ THEN EXTERN Surayah Surayah_AnomenENDCHAIN3
CHAIN
IF ~~ THEN Surayah Surayah_AnomenENDCHAIN3
@7
== ANOMENJ @8
== Surayah @9
= @10
END
IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",15)
EscapeAreaObject("Tran0505a")~ EXIT
CHAIN
IF ~Global("WAMoirQ","Global",14)
!InParty("Anomen")~ THEN Surayah Surayah_AnomenENDCHAIN4
@11
END
IF ~~ THEN EXIT

CHAIN
IF WEIGHT #-999 ~Global("WAMoirQ","Global",10)~ THEN SAERK Saerk_AnomenCHAIN1
#25513 //@0
== Surayah #25514 //@1
== SAERK @2
== Cor @3
== ANOMENP @4
== Yusuf #25523 //@5
== Saerk #25524 //@6
== Cor @7
== Saerk @8
END
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN EXTERN AERIEJ Aerie_SaerkCHAIN1
IF ~OR(3) !InParty("Aerie") !See("Aerie")
StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN EXTERN Cor Cor_AnomenCHAIN1

CHAIN
IF ~~ THEN AERIEJ Aerie_SaerkCHAIN1
@9
END
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN EXTERN VICONIJ Aerie_SaerkCHAIN2
IF ~OR(3) !InParty("Viconia") !See("Viconia")
StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN EXTERN Cor Cor_AnomenCHAIN1

CHAIN
IF ~~ THEN VICONIJ Aerie_SaerkCHAIN2
@10
== AERIEJ @11
== VICONIJ @12
END
IF ~~ THEN EXTERN Cor Cor_AnomenCHAIN1

CHAIN
IF ~~ THEN Cor Cor_AnomenCHAIN1
@13
== Saerk @14
== ANOMENP @15
== Saerk @16
== Surayah @17
== Saerk @18
== Surayah @19
== ANOMENP @20
== Surayah @21
== Yusuf @22
END
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ Korgan_SaerkCHAIN1
IF ~OR(3) !InParty("Korgan") !See("Korgan")
StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN Surayah Surayah_SaerkCHAIN1

CHAIN
IF ~~ THEN KORGANJ Korgan_SaerkCHAIN1
@23
END
IF ~~ THEN EXTERN Surayah Surayah_SaerkCHAIN1

CHAIN
IF ~~ THEN Surayah Surayah_SaerkCHAIN1
@24
== Saerk @25
== Cor @26
== ANOMENP @27
== Cor @28
== Yusuf @29
END
IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",11)
ClearAllActions()
StartCutSceneMode()
StartCutScene("WASGuard")~  EXIT

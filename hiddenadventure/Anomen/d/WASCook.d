APPEND ~SCook~

IF ~OR(2)
GlobalGT("WAMoirQ","Global",11)
!GlobalGT("WAMoirQ","Global",99)~ THEN BEGIN SCook1
SAY @0
IF ~~ THEN EXIT
END
END

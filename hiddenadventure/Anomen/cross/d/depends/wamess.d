BEGIN ~wamess~

CHAIN
IF ~Global("WASpawnMess","Global",1)~ THEN wamess Messenger_AnomenCHAIN1
@0
END
IF ~!PartyHasItem("NPSHLD")
!PartyHasItem("C2ANOM01")
!Global("WASHLDINProduce","Global",1)~ THEN DO ~GiveItemCreate("NPSHLD","Anomen",0,0,0)
GiveItemCreate("ANOHELM","Anomen",0,0,0)~ EXTERN ANOMENJ Messenger_AnomenCHAIN2
IF ~OR(3)
PartyHasItem("NPSHLD")
PartyHasItem("C2ANOM01")
Global("WASHLDINProduce","Global",1)~ THEN DO ~GiveItemCreate("ANOHELM","Anomen",0,0,0)~ EXTERN ANOMENJ Messenger_AnomenCHAIN2


CHAIN
IF ~~ THEN ANOMENJ Messenger_AnomenCHAIN2
@1
== wamess @2
== ANOMENJ @3
END
IF ~~ THEN DO ~ActionOverride("wamess",EscapeArea())~ EXIT

CHAIN
IF WEIGHT #-998 ~Global("WAMoirQ","Global",11)
Dead("wasguar1")
Dead("wasguar2")
Dead("wasguar3")
Dead("wasguar4")
Dead("wasguar5")
Dead("wasguar6")~ THEN Yusuf Yusuf_AnomenCHAIN1
@0
== Surayah @1
== Yusuf @2
== Saerk @3
== Yusuf @4
== Saerk @5
== Yusuf @6
== Surayah @7
== Yusuf @8
== ANOMENJ @9
== Cor @10
== Yusuf @11
END
++ @12 EXTERN Yusuf Yusuf_AnomenCHAIN2
++ @13 EXTERN Yusuf Yusuf_AnomenCHAIN2
CHAIN
IF ~~ THEN  Yusuf Yusuf_AnomenCHAIN2
@14
END
IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",12)
ClearAllActions()
StartCutSceneMode()
StartCutScene("WASJaik")~ EXIT

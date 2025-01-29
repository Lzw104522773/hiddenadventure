/*
%Anomen_AlweskChain02% @7

%Anomen_AlweskChain01_WAALW% @2

%Keldorn_AlweskChain01_WAALW% @6
*/



EXTEND_BOTTOM %Anomen_AlweskChain01_WAALW%
IF ~InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(3)
	!InParty("Keldorn")
	!See("Keldorn")
	StateCheck("Keldorn",CD_STATE_NOTVALID)~ EXTERN C#AJANJ Ajantis_AlweskChain01
END

EXTEND_BOTTOM %Keldorn_AlweskChain01_WAALW%
IF ~InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ EXTERN C#AJANJ Ajantis_AlweskChain01
END



CHAIN
IF ~~ THEN C#AJANJ Ajantis_AlweskChain01
@27
== WAALW @28
== C#AJANJ @29
== WAALW @30
== C#AJANJ @31
== WAALW @32
END
IF ~~ EXTERN ANOMENJ %Anomen_AlweskChain02%

/* 25SPELL.DLG Lazarus Librarius in Sradush (and later in Amkethran)*/


I_C_T 25SPELL 6 C#ToB_LibrariusAmkethran
== 25SPELL IF ~GlobalGT("C#ToB_SaradushTunnel","GLOBAL",0)~ THEN @0
END


EXTEND_BOTTOM 25SPELL 13 //spellbook still missing
+ ~AreaCheck("AR5011") Global("C#ToB_SaradushTunnel","GLOBAL",0)~ + @1 + librarius_01
+ ~AreaCheck("AR5011") Global("C#ToB_AskedSaradushTunnel","LOCALS",0)~ + @2 DO ~SetGlobal("C#ToB_AskedSaradushTunnel","LOCALS",1)~ + librarius_02
+ ~AreaCheck("AR5011") GlobalGT("lazarusscroll","GLOBAL",0)
Global("C#ToB_AskedSaradushBarrier","LOCALS",0)~ + @3 DO ~SetGlobal("C#ToB_AskedSaradushBarrier","LOCALS",1)~ + librarius_04
+ ~AreaCheck("AR5011") PartyHasItem("C#TOBSCR") Global("C#ToB_SaradushTunnel","GLOBAL",1)
Global("C#ToB_SaradushTunnelScroll","LOCALS",0)~ + @4 DO ~setGlobal("C#ToB_SaradushTunnelScroll","LOCALS",1)~ + librarius_09

+ ~AreaCheck("AR5011") Dead("seworo01") Global("C#ToB_SaradushTunnel","GLOBAL",1)
Global("C#ToB_SaradushTunnelLocation","LOCALS",0)~ + @5 DO ~SetGlobal("C#ToB_SaradushTunnelLocation","LOCALS",1)~ + librarius_06
END

EXTEND_BOTTOM 25SPELL 1 //spellbook back
+ ~AreaCheck("AR5011") Global("C#ToB_SaradushTunnel","GLOBAL",0)~ + @1 + librarius_01
+ ~AreaCheck("AR5011") Global("C#ToB_AskedSaradushTunnel","LOCALS",0)~ + @2 DO ~SetGlobal("C#ToB_AskedSaradushTunnel","LOCALS",1)~ + librarius_02
+ ~AreaCheck("AR5011") GlobalGT("lazarusscroll","GLOBAL",0)
Global("C#ToB_AskedSaradushBarrier","LOCALS",0)~ + @3 DO ~SetGlobal("C#ToB_AskedSaradushBarrier","LOCALS",1)~ + librarius_04
+ ~AreaCheck("AR5011") PartyHasItem("C#TOBSCR") Global("C#ToB_SaradushTunnel","GLOBAL",1)
Global("C#ToB_SaradushTunnelScroll","LOCALS",0)~ + @4 DO ~SetGlobal("C#ToB_SaradushTunnelScroll","LOCALS",1)~ + librarius_09
+ ~AreaCheck("AR5011") Dead("seworo01") Global("C#ToB_SaradushTunnel","GLOBAL",1)
Global("C#ToB_SaradushTunnelLocation","LOCALS",0)~ + @5 DO ~SetGlobal("C#ToB_SaradushTunnelLocation","LOCALS",1)~ + librarius_06
+ ~AreaCheck("AR5011") Global("C#ToB_SaradushTunnel","GLOBAL",2)~ + @6 + librarius_11
END

APPEND 25SPELL

IF ~~ THEN librarius_01
SAY @7
+ ~Global("C#ToB_AskedSaradushTunnel","LOCALS",0)
OR(2)
GlobalGT("lazarusscroll","GLOBAL",0)
Global("C#ToB_AskedSaradushBarrier","LOCALS",1)~ + @8 + librarius_02a
+ ~Global("lazarusscroll","GLOBAL",0) 
Global("C#ToB_AskedSaradushBarrier","LOCALS",0)
Global("C#ToB_AskedSaradushTunnel","LOCALS",0)~ + @9 + librarius_02a
++ @10 + librarius_03
++ @11 + 3
END

IF ~~ THEN librarius_02
SAY @12
= @13
IF ~~ THEN EXIT
END

IF ~~ THEN librarius_02a
SAY @12
= @13
+ ~Global("lazarusscroll","GLOBAL",0) Global("C#ToB_AskedSaradushBarrier","LOCALS",0)~ + @14 DO ~SetGlobal("C#ToB_AskedSaradushBarrier","LOCALS",1)~ + librarius_04a
++ @10 + librarius_03
++ @11 + 3
END 

IF ~~ THEN librarius_03
SAY @15
IF ~Global("lazarusscroll","GLOBAL",3)~ THEN DO ~SetGlobal("C#ToB_AskedSaradushTunnel","LOCALS",1) SetGlobal("C#ToB_AskedSaradushBarrier","LOCALS",1) SetGlobal("C#ToB_SaradushTunnel","GLOBAL",1)~ UNSOLVED_JOURNAL @16 EXIT
IF ~GlobalLT("lazarusscroll","GLOBAL",3)~ THEN + librarius_05
END

IF ~~ THEN librarius_04
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN librarius_04a
SAY @17
++ @10 + librarius_03
++ @11 + 3
END

IF ~~ THEN librarius_05
SAY @18
IF ~~ THEN DO ~SetGlobal("C#ToB_AskedSaradushTunnel","LOCALS",1) SetGlobal("C#ToB_AskedSaradushBarrier","LOCALS",1) SetGlobal("C#ToB_SaradushTunnel","GLOBAL",1)~ UNSOLVED_JOURNAL @16 EXIT
END

IF ~~ THEN librarius_06
SAY @19
IF ~Global("C#ToB_SaradushTunnelScroll","LOCALS",0)~ + librarius_07
IF ~Global("C#ToB_SaradushTunnelScroll","LOCALS",1)~ + librarius_08
END

IF ~~ THEN librarius_07
SAY @20
+ ~PartyHasItem("C#TOBSCR")~ + @4 DO ~SetGlobal("C#ToB_SaradushTunnelScroll","LOCALS",1)~ + librarius_09
++ @21 + librarius_12
++ @22 + 3
END

IF ~~ THEN librarius_08
SAY @23
IF ~~ THEN DO ~SetGlobal("C#ToB_SaradushTunnel","GLOBAL",2) EraseJournalEntry(@16)
AddexperienceParty(28000)~ SOLVED_JOURNAL @24 EXIT
END

IF ~~ THEN librarius_09
SAY @25
= @26
IF ~Global("C#ToB_SaradushTunnelLocation","LOCALS",0)~ THEN DO ~TakePartyItem("C#TOBSCR")~ + librarius_10
IF ~Global("C#ToB_SaradushTunnelLocation","LOCALS",1)~ THEN DO ~TakePartyItem("C#TOBSCR")~ + librarius_08
END

IF ~~ THEN librarius_10
SAY @27
+ ~Dead("seworo01") Global("C#ToB_SaradushTunnelLocation","LOCALS",0)~ + @5 DO ~setGlobal("C#ToB_SaradushTunnelLocation","LOCALS",1)~ + librarius_06
++ @21 + librarius_12
++ @22 + 3
END

IF ~~ THEN librarius_11
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN librarius_12
SAY @29
IF ~~ THEN EXIT
END

IF WEIGHT #-1 
~AreaCheck("AR5011") Global("C#ToB_SaradushTunnel","GLOBAL",2)~ THEN librarius_working
SAY @30
IF ~~ THEN + 1
END

END //APPEND



/* SARTEM01.DLG priest of Waukeen in Saradush */

EXTEND_BOTTOM SARTEM01 0
+ ~Global("C#ToB_SaradushTunnel","GLOBAL",2) Global("C#ToB_InformSaradushTunnel","LOCALS",0)~ + @31 + sartem01
END

EXTEND_BOTTOM SARTEM01 3
+ ~Global("C#ToB_SaradushTunnel","GLOBAL",2) Global("C#ToB_InformSaradushTunnel","LOCALS",0)~ + @31 + sartem01
END
APPEND SARTEM01

IF ~~ THEN sartem01
SAY @32
IF ~~ THEN DO ~SetGlobal("C#ToB_InformSaradushTunnel","LOCALS",1) ReputationInc(1)~ EXIT 
END

END



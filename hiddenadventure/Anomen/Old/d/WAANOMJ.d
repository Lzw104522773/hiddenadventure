APPEND ANOMENJ
  
  IF WEIGHT #-999 ~Global("WAMoirQ","Global",3)
  AreaCheck("AR0900")~ THEN BEGIN WAAnomMitl01
		SAY ~<CHARNAME> ... bevor wir Magistrate Bylanna aufsuchen, sollten wir nach dem Käufer suchen. Mithilfe der Kette könnten die Verhüllten einen Erkenntniszauber wirken, der uns zum Mörder führt.~
		IF ~~ THEN REPLY ~Habt Ihr einen Vorschlag, wo wir mit der Suche anfangen könnten, Anomen?~ GOTO WAAnomMitl02
		IF ~~ THEN REPLY ~Nun, und wo sollen wir bitteschön anfangen zu suchen?~ GOTO WAAnomMitl02
	END 
	
	IF ~~ THEN BEGIN WAAnomMitl02
		SAY ~Wenn der Hehler die Wahrheit die Wahrheit gesagt hat, werden wir unseren Käufer an einem Ort finden, an dem viele reiche Bürger ihre Zeit verbringen. Der einzige Ort, der mir einfiele wäre das Mithrest Inn auf Waukeens Promenade. Dort treffen sich immer viele Edelleute, Debütanten und Neureiche.~
		IF ~~ THEN REPLY ~Gut, begeben wir uns schnellstens dorthin~ DO ~SetGlobal("WAMoirQ","Global",4)~ EXIT
		IF ~~ THEN REPLY ~Na meinetwegen, bringen wir es hinter uns!~ DO ~SetGlobal("WAMoirQ","Global",4)~ EXIT
	END
	
	IF WEIGHT #-998 ~Global("WAMoirQ","Global",6)
	PartyHasItem("WAMOIRK")~ THEN BEGIN WAPhaveK1
		SAY ~Moira ... es ... Verzeiht mir, CHARNAME, aber Moiras Kette in den Händen zu halten, erinnert mich an den Tag, an dem Mutter ihr diese Kette schenkte.~
		IF ~~ THEN REPLY ~Ich kann Euch verstehen, Anomen. Jedoch sollten wir uns nun auf den Weg zu Magistrat Bylanna machen, um ihr zu berichten.~ GOTO WAPhaveK2
		IF ~~ THEN REPLY ~(Seufz) Muss ich mir dieses Gejammer nun ständig anhören? Lasst uns nun endlich zu Magistrat Bylanna gehen und die Sache endlich klären!~ GOTO WAPhaveK2
	END
	
	IF ~~ THEN BEGIN WAPhaveK2
		SAY ~Ihr habt recht. Wir sollten Magistrat Bylanna so rasch wie möglich aufsuchen.~
		IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",7)~ EXIT
	END
	
	IF WEIGHT #-998 ~Global("WAMoirQ","Global",11)
  AreaCheck("AR0500")
  PartyHasItem("WAFALS")~ THEN BEGIN WAFalTalk01
  	SAY ~Wie kann das sein? Alwesk sagte, Falahar wäre allein in dem Haus. Und dann dieser Brief ... Als ob sie uns erwartet hätten!~
  	IF ~InParty("Jaheira")~ THEN EXTERN JAHEIJ WAFalJah01
  	IF ~!InParty("Jaheira")
  	InParty("Aerie")~ THEN EXTERN AERIEJ WAFalAer01
  	IF ~!InParty("Jaheira")
  	!InParty("Aerie")
  	InParty("Valygar")~ THEN EXTERN ValygarJ WAFalVal01
  	IF ~!InParty("Jaheira")
  	!InParty("Aerie") 	
  	!InParty("Valygar")
  	InParty("Viconia")~ THEN EXTERN VICONIJ WAFalVic01
  	IF ~!InParty("Jaheira")
  	!InParty("Aerie") 	
  	!InParty("Valygar")
  	!InParty("Viconia")~ THEN GOTO WAFalTalk02
  END
  
  IF ~~ THEN BEGIN WAFalTalk02
  	SAY ~~
  	IF ~Dead("sevpat01")~ THEN REPLY ~Im Brief wird ein ‚Mencar’ erwähnt. Das ist doch dieser Zwerg, gegen dessen Bande wir in der Höhle der sieben Geier gekämpft haben! Wenn wir uns dort noch einmal umsehen, finden wir vielleicht Hinweise auf diesen mysteriösen ‚A’.~ DO ~AddJournalEntry(@99999984,QUEST)
  	SetGlobal("WAMoirQ","Global",12)~ EXIT
  	IF ~~ THEN REPLY ~In diesem Brief wird ein gewisser ‚Mencar’ erwähnt. Sollte er ebenfalls mit unserem Verräter verbündet sein, sollten wir ihm diesmal zuvorkommen!~ DO ~AddJournalEntry(@99999984,QUEST)
  	SetGlobal("WAMoirQ","Global",12)~ EXIT
  END
  
  IF WEIGHT #-997 ~Global("WAMoirQ","Global",12)
  PartyHasItem("WAMENCS")~ THEN BEGIN WAMencTalk01
  	SAY ~Dieser elende Verräter! Er wusste von Anfang an, wer der Mörder war, oder vielleicht war er es sogar SELBST!~
  	IF ~InParty("Aerie")~ THEN EXTERN AERIEJ WAMencAerie01
  	IF ~!InParty("Aerie")~ THEN GOTO WAMencTalk02
  END
  
  IF ~~ THEN BEGIN WAMencTalk02
  	SAY ~~
  	IF ~~ THEN REPLY ~Wir sollten auf jeden Fall sicher sein, Anomen. Alwesk könnte auch ein Doppelagent sein, der Informationen über diese Organisation sammeln. Wir sollten Corneil aufsuchen, vielleicht kann er dieses Rätsel lösen.~ DO ~AddJournalEntry(@99999983,QUEST)
  	SetGlobal("WAMoirQ","Global",13)~ EXIT
  	IF ~~ THEN REPLY ~Ich würde sagen, dass uns der Captain einige Erklärungen schuldet. Lasst ihn uns sofort zur Rede stellen!~ DO ~AddJournalEntry(@99999980,QUEST)
  	SetGlobal("WAMoirQ","Global",17)~ EXIT
  END
  
  IF WEIGHT #-996 ~PartyHasItem("WAALWS")
  OR(2)
  Global("WAMoirQ","Global",16)
  Global("WAMoirQ","Global",19)~ THEN BEGIN WAAlwDTalk01
  	SAY ~Das ... das glaube ich nicht! Saerk Farradh steckte tatsächlich hinter der ganzen Sache! Vater hatte recht ... und ich glaubte ihm nicht!~
  	IF ~~ THEN REPLY ~Dann werden wir ihn aufsuchen und den Willen Eures Vaters durchsetzen!~ GOTO WAAlwDTalk02
  	IF ~~ THEN REPLY ~Ihr hattet keine Beweise, Anomen. Ihr wisst, dass es falsch ist, Selbstjustiz zu üben, wenn keine Schuld bewiesen wurde.~ GOTO WAAlwDTalk04
  END
  
  IF ~~ THEN BEGIN WAAlwDTalk02
  	SAY ~Alles in mir schreit danach, Saerk selbst dafür büßen zu lassen. Doch ich bin ein Ritter des Ordens – und ich habe geschworen, mich nicht selbst an dem wahren Schuldigen zu rächen. Dieser mysteriöse Informant – er wusste von Anfang an, was wir vorfinden würden.~
  	IF ~~ THEN GOTO WAAlwDTalk03
  END
  
  IF ~~ THEN BEGIN WAAlwDTalk03
  	SAY ~Wir werden es Magistrat Bylanna berichten. Sie wird alles in die Wege leiten, dass dieser Mann seine gerechte Strafe bekommt!~
  	IF ~Global("WAMoirQ","Global",16)~ THEN DO ~SetGlobal("WAMoirQ","Global",20)
  	AddJournalEntry(@99999981,QUEST)~ EXIT
  	IF ~Global("WAMoirQ","Global",19)~ THEN DO ~SetGlobal("WAMoirQ","Global",21)
  	AddJournalEntry(@99999981,QUEST)~ EXIT
  END
  
  IF ~~ THEN BEGIN WAAlwDTalk04
  	SAY ~Ja ... Ihr habt recht, CHARNAME. Als Ritter bin ich verpflichtet, das Gesetz zu wahren. Nun bin ich mir auch sicher, dass unser mysteriöser Informant genau wusste, wie unsere Suche ausgehen würde – Er hat mich beim Orden schwören lassen, dass ich nicht selbst Hand an den wahren Schuldigen lege.~
  	IF ~~ THEN GOTO WAAlwDTalk03
  END
  
END

APPEND JAHEIJ
	
	IF ~~ THEN BEGIN WAFalJah01
		SAY ~Dieser Alwesk ... etwas stimmt nicht mit ihm, <CHARNAME>. Die Art, wie er über den Mord gesprochen hat.~
		IF ~InParty("Aerie")~ THEN EXTERN AERIEJ WAFalAer01
  	IF ~!InParty("Aerie")
  	InParty("Valygar")~ THEN EXTERN ValygarJ WAFalVal01
  	IF ~!InParty("Aerie") 	
  	!InParty("Valygar")
  	InParty("Viconia")~ THEN EXTERN VICONIJ WAFalVic01
  	IF ~!InParty("Aerie") 	
  	!InParty("Valygar")
  	!InParty("Viconia")~ THEN EXTERN ANOMENJ WAFalTalk02
	END

END

APPEND AERIEJ

	IF ~~ THEN BEGIN WAFalAer01
		SAY ~Dieser Mann macht mir Angst! Dieses tückische Glitzern in seinen Augen ...~
		IF ~InParty("Valygar")~ THEN EXTERN ValygarJ WAFalVal01
  	IF ~!InParty("Valygar")
  	InParty("Viconia")~ THEN EXTERN VICONIJ WAFalVic01
  	IF ~!InParty("Valygar")
  	!InParty("Viconia")~ THEN EXTERN ANOMENJ WAFalTalk02
	END
	
	IF ~~ THEN BEGIN WAMencAerie01
		SAY ~Was kann einen Mann wie Alwesk soweit bringen. W... wie kann er nur?~
		IF ~InParty("Viconia")~ THEN EXTERN VICONIJ WAMencVic01
		IF ~!InParty("Viconia")~ THEN EXTERN ANOMENJ WAMencTalk02
	END
	
	IF ~~ THEN BEGIN WAMencAerie02
		SAY ~Wie ... wie könnte Ihr so reden, Viconia. Als ob man anderen schaden müsste, um leben zu können. Aber was weiß eine Drow schon von Nächstenliebe und Freundschaft?~
		IF ~~ THEN EXTERN VICONIJ WAMencVic02
	END
	
END

APPEND VALYGARJ

	IF ~~ THEN BEGIN WAFalVal01
		SAY ~Dieser Mann hat etwas zu verbergen. Mein Gefühl sagt mir, dass er uns einiges verheimlicht.~
		IF ~InParty("Viconia")~ THEN EXTERN VICONIJ WAFalVic01
  	IF ~!InParty("Viconia")~ THEN EXTERN ANOMENJ WAFalTalk02
	END
	
END

APPEND VICONIJ

	IF ~~ THEN BEGIN WAFalVic01
		SAY ~Närrischer Rivven! Merkt Ihr nicht, dass wir hereingelegt wurden? Die Falle sollte selbst Euch als Beweis reichen!~
		IF ~~ THEN EXTERN ANOMENJ WAFalTalk02
	END
	
	IF ~~ THEN BEGIN WAMencVic01
		SAY ~Jeder denkt zuerst an sich selbst. Töte, oder du wirst getötet. Besser, Ihr lernt diese Lektion, Geflügelte.~
		IF ~~ THEN EXTERN AERIEJ WAMencAerie02
	END
	
	IF ~~ THEN BEGIN WAMencVic02
		SAY ~Mindestens genauso viel, wie Ihr vom wahren Leben, Schätzchen!~
		IF ~~ THEN EXTERN ANOMENJ WAMencTalk02
	END
	
END
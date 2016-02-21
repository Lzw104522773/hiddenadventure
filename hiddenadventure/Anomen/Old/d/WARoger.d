EXTEND_BOTTOM ROGER 0
  IF ~Global("WAMoirQ","Global",1)
	InParty("Anomen")~ THEN REPLY ~Ihr verkauft nicht zufällig auch Schmuck, oder?~ GOTO WARoger01
	IF ~Global("WATarnDead","GLOBAL",1)
	Global("WAMoirQ","Global",2)
	InParty("Anomen")~ THEN REPLY ~Tarnor und seine Leute werden niemanden mehr bedrohen, Roger.~ GOTO WARoger07
END

EXTEND_BOTTOM ROGER 1
  IF ~Global("WAMoirQ","Global",1)
	InParty("Anomen")~ THEN REPLY ~Ihr verkauft nicht zufällig auch Schmuck, oder?~ GOTO WARoger01
	IF ~Global("WATarnDead","GLOBAL",1)
	Global("WAMoirQ","Global",2)
	InParty("Anomen")~ THEN REPLY ~Tarnor und seine Leute werden niemanden mehr bedrohen, Roger.~ GOTO WARoger07
END

EXTEND_BOTTOM ROGER 4
  IF ~Global("WAMoirQ","Global",1)
	InParty("Anomen")~ THEN REPLY ~Ihr verkauft nicht zufällig auch Schmuck, oder?~ GOTO WARoger01
	IF ~Global("WATarnDead","GLOBAL",1)
	Global("WAMoirQ","Global",2)
	InParty("Anomen")~ THEN REPLY ~Tarnor und seine Leute werden niemanden mehr bedrohen, Roger.~ GOTO WARoger07
END

EXTEND_BOTTOM ROGER 7
  IF ~Global("WAMoirQ","Global",1)
	InParty("Anomen")~ THEN REPLY ~Ihr verkauft nicht zufällig auch Schmuck, oder?~ GOTO WARoger01
	IF ~Global("WATarnDead","GLOBAL",1)
	Global("WAMoirQ","Global",2)
	InParty("Anomen")~ THEN REPLY ~Tarnor und seine Leute werden niemanden mehr bedrohen, Roger.~ GOTO WARoger07
END

EXTEND_BOTTOM ROGER 8
  IF ~Global("WAMoirQ","Global",1)
	InParty("Anomen")~ THEN REPLY ~Ihr verkauft nicht zufällig auch Schmuck, oder?~ GOTO WARoger01
	IF ~Global("WATarnDead","GLOBAL",1)
	Global("WAMoirQ","Global",2)
	InParty("Anomen")~ THEN REPLY ~Tarnor und seine Leute werden niemanden mehr bedrohen, Roger.~ GOTO WARoger07
END

EXTEND_BOTTOM ROGER 27
  IF ~Global("WAMoirQ","Global",1)
	InParty("Anomen")~ THEN REPLY ~Ihr verkauft nicht zufällig auch Schmuck, oder?~ GOTO WARoger01
	IF ~Global("WATarnDead","GLOBAL",1)
	Global("WAMoirQ","Global",2)
	InParty("Anomen")~ THEN REPLY ~Tarnor und seine Leute werden niemanden mehr bedrohen, Roger.~ GOTO WARoger07
END

APPEND ROGER

	IF ~~ THEN BEGIN WARoger01
		SAY ~Das kommt ganz darauf an ... Schwebt Euch da vielleicht etwas Bestimmtes vor?~
		IF ~~ THEN EXTERN ANOMENJ WARogerA01
	END
	
	IF ~~ THEN BEGIN WARoger02
		SAY ~„Ja woher ... ich meine natürlich nein! Wie kommt Ihr denn auf diese Idee? Ich weiß von nichts!~
		IF ~~ THEN REPLY ~So, und weshalb seid Ihr dann so nervös?~ GOTO WARoger03
		IF ~~ THEN REPLY ~Ihr habt Euch gerade selbst verraten! Also redet, oder wir kommen mit der Wache wieder!~ GOTO WARoger04
		IF ~~ THEN REPLY ~Verdammt, packt endlich aus, oder wir brechen Euch alle Knochen einzeln!~ GOTO WARoger11
	END
	
	IF ~~ THEN BEGIN WARoger03
		SAY ~Nervös!? Wer ist hier nervös? Versteht doch, ich weiß nichts und jetzt kauft etwas oder verschwindet!~
		IF ~~ THEN REPLY ~Ihr habt Euch gerade selbst verraten! Also redet, oder wir kommen mit der Wache wieder!~ GOTO WARoger04
		IF ~~ THEN REPLY ~Verdammt, packt endlich aus, oder wir brechen Euch alle Knochen einzeln!~ GOTO WARoger11
	END
	
	IF ~~ THEN BEGIN WARoger04
		SAY ~Nein, nein, nicht die Wachen! Alles, bloß nicht die Wachen! ER würde davon erfahren und mich schneller umbringen, ehe ich im Gefängnis lande!~
		IF ~~ THEN EXTERN ANOMENJ WARogerA02
	END
	
	IF ~~ THEN BEGIN WARoger05
		SAY ~Ich ... Ihr versteht nicht, Sir ... seine Leute würden mich sofort umbringen, wenn sie sähen, dass ich verhaftet würde!~
		IF ~~ THEN REPLY ~Und woher sollten SEINE Leute denn wissen, dass Ihr die Abwasserkanäle verlasst?~ GOTO WARoger06
	END
	
	IF ~~ THEN BEGIN WARoger06
		SAY ~Er hat im Norden der Abwasserkanäle einige Söldner abgestellt. Der Anführer, ein Zwerg namens Tarnor soll verhindern, dass sich jemand in seine Geschäfte einmischt.~
		IF ~Global("WATarnDead","GLOBAL",1)~ THEN REPLY ~Der Zwerg und seine Leute werden Euch nicht mehr behelligen.~ GOTO WARoger07
		IF ~!Global("WATarnDead","GLOBAL",1)~ THEN REPLY ~Dann werden wir uns um die Söldner kümmern, aber dann erwarten wir Antworten!~ DO ~AddJournalEntry(@99999993,QUEST)
		SetGlobal("WAMoirQ","Global",2)~ EXIT
	END
	
	IF ~~ THEN BEGIN WARoger07
		SAY ~Ihr ... Habt die Bande getötet? Das sind wunderbare Neuigkeiten! Leider hat derjenige, welchen Ihr sucht weitere Söldner unter seinem Kommando ... Und gute Beziehungen zur Stadtwache! Zumindest wurde er von zwei Gardisten begleitet, als er hier herkam, um mir die Kette zu verkaufen. Ich sage Euch, der ist zu hoch für Euch!~
		IF ~~ THEN REPLY ~Egal, sagt uns nun endlich, wer dieser Mann war!~ GOTO WARoger08
	END
	
	IF ~~ THEN BEGIN WARoger08
		SAY ~Ich kenne seinen Namen nicht. In meinem Gewerbe kann es sehr ‚ungesund’ sein, die Namen seiner Geschäftspartner zu kennen ... ich kann Euch lediglich sagen, wo Ihr den Käufer der Kette findet werdet.~
		IF ~~ THEN EXTERN ANOMENJ WARogerA03
	END
	
	IF ~~ THEN BEGIN WARoger09
		SAY ~Kurz nachdem ich die Kette gekauft habe, kam so ein feiner Pinkel hier herunter. Ein Adliger, Graf, Fürst, oder so. Er fragte, ob ich auch etwas ausgefallenen Schmuck im Sortiment hätte. Na, und diese Kette war ja auch eine Augenweide ... also hat er sie für schlappe 300 Goldstücke erstanden.~
		IF ~~ THEN EXTERN ANOMENJ WARogerA04
	END
	
	IF ~~ THEN BEGIN WARoger10
		SAY ~Oh, Ihr ahnt nicht, wie viele dieser hohen Herrschaften eine Gelegenheit suchen, ein ‚preiswertes Schnäppchen’ zu machen! Vor allem, wenn sie nicht ins Gerede kommen wollen. Und dieser hier schien mir ein typischer Frauenheld zu sein, der seine Eskapaden nicht an die große Glocke hängen will, hehehe!~
		IF ~~ THEN REPLY ~Nun, das hilft uns wenigstens etwas weiter. Danke, Roger.~ DO ~SetGlobal("WAMoirQ","Global",3)
		AddJournalEntry(@99999992,QUEST)~ EXIT
		IF ~~ THEN REPLY ~Lebt wohl.~ DO ~SetGlobal("WAMoirQ","Global",3)
		AddJournalEntry(@99999992,QUEST)~ EXIT
	END
	
	IF ~~ THEN BEGIN WARoger11
		SAY ~Bitte ... ich kann nicht ... Nichts was Ihr mir antun könntet, wäre so schlimm wie das, was geschieht, wenn ER herausfindet, dass ich euch geholfen habe!~
		IF ~~ THEN EXTERN ANOMENJ WARogerA05
	END
	
	IF ~~ THEN BEGIN WARoger12
		SAY ~Ich ... Ihr versteht nicht, Sir ... seine Leute würden mich sofort umbringen, wenn sie sähen, dass ich verhaftet würde!~
		IF ~~ THEN REPLY ~Und woher sollten SEINE Leute denn wissen, dass Ihr die Abwasserkanäle verlasst?~ GOTO WARoger06
	END
	
END

APPEND ANOMENJ

	IF ~~ THEN BEGIN WARogerA01
		SAY ~In der Tat, Hehler: Wir suchen nach einer Laeralhalskette. Hat man Euch so etwas verkauft?~
		IF ~~ THEN EXTERN Roger WARoger02
	END

	IF ~~ THEN BEGIN WARogerA02
		SAY ~WER würde davon erfahren? Verdammt noch mal, sprecht endlich, Hehler oder ich zerre Euch eigenhändig zur Stadtwache!~
		IF ~~ THEN EXTERN Roger WARoger05
	END

	IF ~~ THEN BEGIN WARogerA03
		SAY ~(Seufz) Nun gut, so können wir wenigstens versuchen, Moiras Kette wiederzubekommen. Sie im Besitz eines anderen zu wissen, ist unerträglich für meine Seele.~
		IF ~~ THEN EXTERN Roger WARoger09
	END
	
	IF ~~ THEN BEGIN WARogerA04
		SAY ~Weshalb sollte gerade jemand von hoher Geburt an einem Ort wie diesen kommen?~
		IF ~~ THEN EXTERN Roger WARoger10
	END
	
	IF ~~ THEN BEGIN WARogerA05
		SAY ~WER würde davon erfahren? Verdammt noch mal, sprecht endlich, Hehler oder ich zerre Euch eigenhändig zur Stadtwache!~
		IF ~~ THEN EXTERN Roger WARoger12
	END
	
END
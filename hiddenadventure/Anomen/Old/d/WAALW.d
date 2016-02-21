BEGIN WAALW

IF ~Global("WAMoirQ","Global",9)
InParty("Anomen")~ THEN BEGIN 0
	SAY ~Ah, Ihr seid doch <CHARNAME>, nicht wahr?“ Habe bereits einiges über Eure Taten gehört ... und Sir Anomen befindet sich auch in Eurer Gesellschaft. Also kann ich davon ausgehen, dass es um Eure Schwester geht.~
	IF ~~ THEN EXTERN ANOMENJ WAALW01
END

IF ~~ THEN BEGIN 1
	SAY ~Sehr scharfsinnig kombiniert, Sir Anomen. Ihr wollt sicher wissen, ob es schon Ergebnisse bei den Nachforschungen über den Mord an Eurer Schwester gibt.~
	IF ~~ THEN EXTERN ANOMENJ WAALW02
END

IF ~~ THEN BEGIN 2
	SAY ~Fürwahr schlechte Kunde, die Ihr da bringt, aber nicht wirklich überraschend. Ich habe selbst schon derartiges vermutet.~
	IF ~~ THEN REPLY ~Wenn Ihr etwas ahntet, weshalb seid Ihr der Sache nicht nachgegangen?~ GOTO 3
END

IF ~~ THEN BEGIN 3
	SAY ~Ja, warum nicht? Nun, ich weiß, dass keiner meiner Leute dumm genug wäre, sich für so etwas anheuern zu lassen. Was die anderen Stellen angeht – ist es ein enormer Aufwand, eine Durchsuchung zu verlangen. Vor allem jetzt, da dieser Gildenkrieg die Straßen Athkatlas heimsucht, brauchen wir alle verfügbaren Leute auf den Straßen. Was leider bedeutet, dass derartig komplexe Operationen zur Zeit nicht möglich sind.~
	IF ~~ THEN EXTERN ANOMENJ WAALW03
END

IF ~~ THEN BEGIN 4
	SAY ~Hmmm ... warum nicht, Unterstützung ist der Wache immer willkommen. Allerdings muss ich mich selbst vergewissern, ob sich mein Verdacht bestätigt – ich kann es nicht riskieren, dass Ihr bei unbescholtenen Bürgern die Haustür eintretet. Das wäre sehr schlecht für das Ansehen der Wache.~
	IF ~~ THEN REPLY ~Was wäre dann der nächste Schritt, Captain?~ GOTO 5
	IF ~~ THEN REPLY ~Oh, mit dem Eintreten von Türen habe ich keine Probleme.~ GOTO 6
END

IF ~~ THEN BEGIN 5
	SAY ~Ich werde die Sache persönlich noch mal überprüfen. Ich denke, in etwa sechs Stunden werde ich zurück sein. Ihr könnt ja in dieser Zeit noch einige Heldentaten vollbringen.~
	IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",10)
	AddJournalEntry(@99999990,QUEST)
	SetGlobalTimer("WAALWTime","Global",1800)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
	SAY ~Nun, IHR vielleicht nicht, aber die Besitzer der jeweiligen Häuser. Ihr ahnt nicht, wie schnell es bei Hausfriedensbruch ins Gefängnis geht. Und da wären Eure Nachforschungsmöglichkeiten sehr begrenzt.~
	IF ~~ THEN REPLY ~Und wie sollen wir dann am besten vorgehen?~ GOTO 5
END

IF ~Global("WAMoirQ","Global",10)
!InParty("Anomen")~ THEN BEGIN 7
	SAY ~Ich denke, Sir Anomen sollte sich anhören, was ich zu berichten habe. Holt ihn und kehrt zu mir zurück.~
	IF ~~ THEN EXIT
END

IF ~Global("WAMoirQ","Global",10)
InParty("Anomen")~ THEN BEGIN 8
	SAY ~Ha, ich wusste, dass ich mich in Euch nicht getäuscht habe! Wenn man sich auf etwas verlassen kann, ist es die Beharrlichkeit eines Abenteurers!~
	IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
	SAY ~Mein Verdacht hat sich bestätigt. Offenbar ist unser Mörder ein ehemaliger Offizier namens Falahar. Er gehörte zur Wachmannschaft im Brückenviertel, wurde jedoch mit Schmuggelware erwischt.~
	IF ~~ THEN EXTERN ANOMENJ WAALW04
END

IF ~~ THEN BEGIN 10
	SAY ~Für ein in Ungnade gefallenes Mitglied der Wache gibt es kaum die Chance, wieder eine legale Arbeit zu bekommen. Ein verpatzter Einbruch vielleicht – er wollte sehen, was es in Lord Cor’s Haus zu stehlen gibt. Unglücklicherweise wurde er von Eurer Schwester ertappt und er ermordete sie, um nicht verhaftet zu werde – ebenso wie das zweite Opfer, dass die Tat beobachtet haben könnte.~
	IF ~~ THEN REPLY ~Dann lasst ihn verhaften, und bringt ihn zum Reden!~ GOTO 11
	IF ~~ THEN REPLY ~Vielleicht könnten wir ihn dazu bringen, die Wahrheit zu sagen.~ GOTO 16
END

IF ~~ THEN BEGIN 11
	SAY ~(lacht auf) Wäre die Sache so einfach, hätten wir in dieser Stadt einige Probleme weniger! Bedauerlicherweise kann ich niemanden einfach so verhaften lassen – auch wenn derjenige Dreck am Stecken hat. Aber solange ich keine Beweise für seine Schuld oder Mithilfe habe, kann ich gar nichts zun. Man könnte ja einen ‚unschuldigen Bürger’ erwischen ... (schnaubt verächtlich)~
	IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
	SAY ~Allerdings gelten diese ‚Bestimmungen’ nicht für Leute, die außerhalb der Stadtwache aktiv sind. Deshalb heuert die Wache auch gerne mal Söldner an, um besondere ‚Unliebsamkeiten’ zu erledigen.~
	IF ~!InParty("Korgan")~ THEN GOTO 13
	IF ~InParty("Korgan")~ THEN EXTERN KORGANJ WAALWK01
END

IF ~~ THEN BEGIN 13
	SAY ~~
	IF ~~ THEN REPLY ~Wir werden Euch in dieser Angelegenheit unterstützen, Captain.~ GOTO 14
	IF ~~ THEN REPLY ~Wir kümmern uns darum – wenn der Preis stimmt.~ GOTO 15
END

IF ~~ THEN BEGIN 14
	SAY ~Ausgezeichnet! Ihr erweist uns damit einen großen Dienst.~
	IF ~~ THEN EXTERN ANOMENJ WAALW05
END

IF ~~ THEN BEGIN 15
	SAY ~Sollte es Euch gelingen, diesen Mordfall aufzuklären, wird Euch der Stadtrat fürstlich belohnen, <CHARNAME>. Ich selbst werde noch einen kleinen Obolus von 200 Goldstücken drauflegen, wenn Ihr diesen Fall löst.~
	IF ~~ THEN EXTERN ANOMENJ WAALW06
END

IF ~~ THEN BEGIN 16
	SAY ~Das könnte in der Tat der richtige Weg sein. Euch stehen Möglichkeiten offen, die der Stadtwache bedauerlicherweise verboten werden. Man könnte ja einen ‚unschuldigen Bürger’ erwischen (Schnaubt verächtlich). Es wäre mir eine Freude, wenn ich auf Eure Mithilfe hoffen könnte.~
	IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 17
	SAY ~Falahar hat sich in einem heruntergekommenen Haus im Osten des Brückendistrikts eingenistet. Es liegt etwas oberhalb der Fünf Krüge. Doch wie ich ihn kenne, wird er Euch nicht freiwillig folgen.~
	IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
	SAY ~Da er alleine in diesem Haus wohnt, solltet Ihr die Sache eigentlich ohne Probleme bewältigen können. Versucht nur, ihn möglichst schnell zu überwältigen. Viel Glück, Abenteurer.~
	IF ~~ THEN DO ~AddJournalEntry(@99999985,QUEST)
	SetGlobal("WAMoirQ","Global",11)~ EXIT
END

IF ~InParty("Anomen")
OR(2)
Global("WAMoirQ","Global",15)
Global("WAMoirQ","Global",17)~ THEN BEGIN 19
	SAY ~Ihr ... seid zurück, wie ich sehe. Wart Ihr erfolgreich bei Euren Ermittlungen?~
	IF ~Global("WAMoirQ","Global",17)~ THEN REPLY ~Wir wissen, dass Ihr der Mörder seid, Alwesk!~ GOTO 21
	IF ~Global("WAMoirQ","Global",15)~ THEN REPLY ~In der Tat, Captain. Wir wissen nun, wer der Mörder ist.~ GOTO 20
END

IF ~~ THEN BEGIN 20
	SAY ~Nun ... Wollt Ihr Eure Erkenntnisse mit mir teilen, oder nicht. Ich habe keine Zeit für Spielchen!~
	IF ~~ THEN EXTERN ANOMENJ WAALW07
END

IF ~~ THEN BEGIN 21
	SAY ~Ho Ho, dass sind wahrlich schwere Anschuldigungen, Sir Anomen! Ich nehme an, dass Ihr auch die entsprechenden Beweise habt? Ansonsten müsste ich Euch wegen Verleumdung eines Offiziers der Wache festnehmen lassen.~
	IF ~Global("WAMoirQ","Global",15)~ THEN REPLY ~Nun, der Brief Eurer Auftraggeber an Mencar war sehr aufschlussreich. Ihr wurdet darin namentlich erwähnt, Alwesk! Die Spur fanden wir durch Eure kleine Falle mit Eurem Freund Falahar, der uns mit einigen Spießgesellen erwartet hat – offenbar von einem Verräter gewarnt. Und IHR wart der einzige, der wusste, was wir vorhatten!~ EXTERN ANOMENJ WAALW08
	IF ~~ THEN REPLY ~Die Sache ist noch nicht vorbei, Alwesk. Sobald wir Beweise gegen Euch haben, werden wir zurückkehren!~ EXIT
	IF ~~ THEN REPLY ~Schluss mit der Farce, Alwesk! Wir haben Eure kleine Falle überlebt und Eure Schergen getötet. Nun seid Ihr dran!~ GOTO 29
END

IF ~~ THEN BEGIN 22
	SAY ~(schnaubt) Ihr habt Bylanna also schon eingeweiht, wie?~
	IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
	SAY ~Ihr kleinen unbedeutenden Insekten! Ihr wisst nicht mal ansatzweise, worauf Ihr Euch eingelassen habt!~
	IF ~~ THEN EXTERN ANOMENJ WAALW09
END

IF ~~ THEN BEGIN 24
	SAY ~HAHAHAHAHA! Nein, meine Auftraggeber hatten nie Interesse an Eurer kläglichen Sippe! Seht es einfach als Teil eines kleinen Nebenverdienstes, den ich dann und wann für einen besonderen Kunden erledige.~
	IF ~~ THEN EXTERN ANOMENJ WAALW10
END

IF ~~ THEN BEGIN 25
	SAY ~Oh, Ihr seid so naiv, Anomen! Der Mord war niemals Teil des Auftrages. Ich habe mir lediglich einen ... kleinen Überblick über die Geschäftspläne und Bilanzen Eures Vaters verschafft. Das mit Eurer Schwester war nur ein unbedeutendes Missgeschick. Sie war eben einfach zur falschen Zeit am falschen Ort. (lacht)~
	IF ~~ THEN EXTERN ANOMENJ WAALW11
END

IF ~~ THEN BEGIN 26
	SAY ~Ich gebe zu, es war eine Schande, eine solche Schönheit auszulöschen, aber ... Schönheit gibt es viel, und bei Missionen gibt es eben Opfer, nicht wahr?~
	IF ~~ THEN EXTERN ANOMENJ WAALW12
END

IF ~~ THEN BEGIN 27
	SAY ~Bedauerlicherweise muss die gute Bylanna auf meine Anwesenheit verzichten. Stattdessen werde ich ihr einige Freunde von mir vorbeischicken, die sich um sie kümmern werden – was Euch betrifft, Ihr werdet mit Eurer Schwester wieder vereint sein – samt Euren Freinden!~
	IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
	SAY ~Ich muss gestehen, dass ich überrascht bin, dass Ihr meine Falle überlebt habt – und nebenbei auch noch einige gute Söldner beseitigt habt. Nichtsdestotrotz habe ich für einen derartigen Fall vorgesorgt. DIENER, DER RUNE, GREIFT AN! TÖTET SIE ALLE!~
	IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",16)
	CreateCreature("Tanthf01",[539.262],0)
	CreateCreature("Tanthf01",[450.550],0)
	CreateCreature("Tanthf01",[210.340],0)
	CreateCreature("Tanthf01",[400.260],0)
	Enemy()~ EXIT
END

IF ~~ THEN BEGIN 29
	SAY ~Nun, wenn Ihr es so haben wollt ... Ihr werdet nicht mehr die Zeit haben, Euren Fehler zu bedauern. Männer, ERGREIFT SIE!~
	IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",19)
	ActionOverride("DOCSOL01",ChangeEnemyAlly(MYSELF,ENEMY))
	ActionOverride("DOCSOL02",ChangeEnemyAlly(MYSELF,ENEMY))
	ActionOverride("DOCSOL02",ChangeEnemyAlly(MYSELF,ENEMY))
	Enemy()~ EXIT
END

APPEND ANOMENJ

	IF ~~ THEN BEGIN WAALW01
		SAY ~Ja, das ist richtig, Sir. Dann seid Ihr Captain Alwesk?~
		IF ~~ THEN EXTERN WAALW 1
	END
	
	IF ~~ THEN BEGIN WAALW02
		SAY ~Eigentlich wollten wir Euch mitteilen, dass wir selbst die Spur des Mörders aufgenommen haben und alles deutet darauf in, dass er gute Beziehungen zur Wache hat.~
		IF ~~ THEN EXTERN WAALW 2
	END
	
	IF ~~ THEN BEGIN WAALW03
		SAY ~Ich verstehe ... aber Ihr erwähntet, Ihr hättet ebenfalls Vermutungen in dieser Richtung. Sagt uns, wer es sein könnte und wir werden der Spur selbst nachgehen.~
		IF ~~ THEN EXTERN WAALW 4
	END
	
	IF ~~ THEN BEGIN WAALW04
		SAY ~Weshalb sollte ein ehemaliger Offizier in das Heim meines Vaters einbrechen und meine Schwester ermorden?~
		IF ~~ THEN EXTERN WAALW 10
	END
	
	IF ~~ THEN BEGIN WAALW05
		SAY ~Erneut erfüllt es mich mit Stolz, an Eurer Seite zu kämpfen, <CHARNAME>. Ich kann kaum beschreiben, was Eure Hilfe für mich bedeutet.~
		IF ~~ THEN EXTERN WAALW 17
	END
	
	IF ~~ THEN BEGIN WAALW06
		SAY ~Unfassbar, dass Ihr aus einem Mordfall noch Kapital schlagen wollt, <CHARNAME>. Auch wenn ich Euren Weg nicht gutheiße, werde ich Euch begleiten, um den Mörder meiner Schwester zu finden.~
		IF ~~ THEN EXTERN WAALW 17
	END
	
	IF ~~ THEN BEGIN WAALW07
		SAY ~Ihr wagt es von *Spielchen* zu reden, Dreckskerl? Wir WISSEN, dass Ihr Moira ermordet habt, als Ihr das Haus unseres Vaters durchwühlt habt!~
		IF ~~ THEN EXTERN WAALW 21
	END
	
	IF ~~ THEN BEGIN WAALW08
		SAY ~Wir haben die Halskette gefunden, die Ihr von Moiras Leiche gestohlen habt! Mithilfe eines Erkenntniszaubers an der Kette fanden wir heraus, dass IHR das alles getan habt! Also beendet endlich Eure elende Scharade und stellt Euch der Gerechtigkeit!~
		IF ~~ THEN EXTERN WAALW 22
	END
	
	IF ~~ THEN BEGIN WAALW09
		SAY ~Sagt mir, wieso! Welchen Sinn hatte Euer Einbruch im Haus meines Vaters und die beiden Morde. Was verspricht sich Eure verfluchte Organisation von dieser Untat?~
		IF ~~ THEN EXTERN WAALW 24
	END
	
	IF ~~ THEN BEGIN WAALW10
		SAY ~Dann werdet Ihr mir nun sagen, wer Euch befohlen hat, meine Schwester zu ermorden!~
		IF ~~ THEN EXTERN WAALW 25
	END
	
	IF ~~ THEN BEGIN WAALW11
		SAY ~Ihr wagt es, in dieser Art von ihr zu sprechen, als sei sie nur ein Insekt, das Ihr nach Belieben zertreten könnt?~
		IF ~~ THEN EXTERN WAALW 26
	END
	
	IF ~~ THEN BEGIN WAALW12
		SAY ~Das reicht, Ihr Wahnsinniger! Wir haben Anweisung von Magistrat Bylanna, Euch sofort zur halle der Sechs zu bringen, wo Ihr Euren Prozess erhalten werdet – auch wenn das viel zu gut für Euch ist!~
		IF ~~ THEN EXTERN WAALW 27
	END
	
	IF ~~ THEN BEGIN WAALW13
		SAY ~Wir wissen, dass Ihr in die Sache verwickelt seid, Alwesk! Sagt mir, habt Ihr Moira selbst ermordet, oder habt Ihr nur daneben gestanden und zugesehen?~
		IF ~~ THEN EXTERN WAALW 21
	END
	
END

APPEND KORGANJ
	
	IF ~~ THEN BEGIN WAALWK01
		SAY ~Harr, Schädel einschlagen und dafür noch bezahlt zu werden ... diese Sache entwickelt sich immer besser!~
		IF ~~ THEN EXTERN WAALW 13
	END
	
END
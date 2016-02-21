ADD_STATE_TRIGGER WCUST02 5 ~!Global("WAMoirQ","Global",4)~
ADD_STATE_TRIGGER WCUST01 8 ~!Global("WAMoirQ","Global",5)~

APPEND WCUST02

	IF WEIGHT #-1 ~Global("WAMoirQ","Global",4)~ THEN BEGIN WACU01
		SAY ~Oh werter Graf Claylan! Diese Laeral-Halskette ist das schönste Schmuckstück, das ich je gesehen habe!~
		IF ~~ THEN EXTERN WCUST01 WACU02
	END
	
	IF ~~ THEN BEGIN WACU03
		SAY ~Wie ... entzückend! (Kichert)~
		IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",5)~ EXIT
	END
	
	IF ~~ THEN BEGIN WACU06
		SAY ~W-Was meint dieser Mann damit, Graf?~
		IF ~~ THEN EXTERN WCUST01 WACU07
	END
	
	IF ~~ THEN BEGIN WACU11
		SAY ~In der Tat, auf der Innenseite der Halskette ist M.D. eingraviert! Also ist alles wahr, was dieser Mann behauptet! Ich hätte nie gedacht, dass ein Mann Eures Standes so tief sinken kann, Graf!~
		IF ~~ THEN EXTERN WCUST01 WACU12
	END
	
	IF ~~ THEN BEGIN WACU13
		SAY ~Ah, so ist das also! NUR DAS ALLERSCHÖNSTE IST GUT FÜR MICH, JA? Mit Euch bin ich fertig, Graf! Niemals werde ich mich mit etwas schmücken, das von einem ... Hehler kommt! Lebt wohl und dass sich unsere Wege niemals wieder kreuzen werden!~
		IF ~~ THEN DO ~DropItem("WAMOIRK",[-1.-1])
		EscapeArea()~ EXTERN WCUST01 WACU14
	END

END

APPEND WCUST01

	IF ~~ THEN BEGIN WACU02
		SAY ~Gewiss, holde Alicia. Für eine Frau Eurer Schönheit ist nur das Allerschönste gut genug, selbst wenn es bei weitem nicht so strahlend ist wie Ihr!~
		IF ~~ THEN EXTERN WCUST02 WACU03
	END

	IF WEIGHT #-1 ~InParty("Anomen")
	Global("WAMoirQ","Global",5)~ THEN BEGIN WACU04
		SAY ~Seht Ihr nicht, dass Ihr stört, Kerl?~
		IF ~~ THEN EXTERN ANOMENJ WACU05
	END
	
	IF ~~ THEN BEGIN WACU07
		SAY ~Das ... wie bei den Höllen könnt Ihr es wagen, mich zu bezichtigen, den Schmuck irgendwelcher verblichenen Schwestern zu verschenken?~
		IF ~~ THEN EXTERN ANOMENJ WACU08
	END
	
	IF ~~ THEN BEGIN WACU09
		SAY ~Dreiste Lüge! Diese Halskette habe ich bei einem ehrlichen Händler erstanden! Und nun verschwindet, ehe ich die Wache rufe!~
		IF ~~ THEN EXTERN ANOMENJ WACU10
	END
	
	IF ~~ THEN BEGIN WACU12
		SAY ~Mitnichten, holde Alicia! Ich wusste nicht, dass die kette von einem Mordopfer gestohlen war. Ich dachte nur – im Untergrund gibt es viele erstklassige Schmuckstücke zu guten Preisen ...~
		IF ~~ THEN EXTERN WCUST02 WACU13
	END
	
	IF ~~ THEN BEGIN WACU14
		SAY ~Alicia, meine Liebe! Bitte lasst es mich Euch erklären!~
		IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",6)
		EscapeArea()~ EXIT
	END
	
END

APPEND ANOMENJ

	IF ~~ THEN BEGIN WACU05
		SAY ~Nicht so sehr, wie es MICH stört, dass Ihr Eurer ... Bekanntschaft ... hier die Halskette meiner ermordeten Schwester schenken wollt!~
		IF ~~ THEN EXTERN WCUST02 WACU06
	END

	IF ~~ THEN BEGIN WACU08
		SAY ~Ich habe jedes Recht dazu, Graf Claylan! Ich habe mit dem Hehler gesprochen, bei dem Ihr es gekauft habt!~
		IF ~~ THEN EXTERN WCUST01 WACU09
	END
	
	IF ~~ THEN BEGIN WACU10
		SAY ~Dann tut es, verdammt! Vielleicht könnt Ihr den Wachen auch gleich erklären, wieso Ihr ein Schmuckstück besitzt, auf dem M.D. in das Familienwappen der Delryns eingraviert ist – M. D. wie Moira Delryn!~
		IF ~~ THEN EXTERN WCUST02 WACU11
	END
	
END
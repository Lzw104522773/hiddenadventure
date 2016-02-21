EXTEND_BOTTOM SEVPAT01 1
  IF ~Global("WAMoirQ","Global",12)
	InParty("Anomen")~ THEN REPLY ~Wie schnell Ihr uns loswerdet hängt davon ab, Wie viel Ihr uns über Euren mysteriösen Meister erzählt, der Euch diesen Brief geschrieben hat!~ GOTO WASEVPAT01
END

EXTEND_BOTTOM SEVPAT01 4
IF ~Global("WAMoirQ","Global",12)
	InParty("Anomen")~ THEN REPLY ~Wie schnell Ihr uns loswerdet hängt davon ab, Wie viel Ihr uns über Euren mysteriösen Meister erzählt, der Euch diesen Brief geschrieben hat!~ GOTO WASEVPAT01
END

EXTEND_BOTTOM SEVPAT01 10
IF ~Global("WAMoirQ","Global",12)
	InParty("Anomen")~ THEN REPLY ~Wie schnell Ihr uns loswerdet hängt davon ab, Wie viel Ihr uns über Euren mysteriösen Meister erzählt, der Euch diesen Brief geschrieben hat!~ GOTO WASEVPAT01
END


APPEND SEVPAT01

	IF ~~ THEN BEGIN WASEVPAT01
		SAY ~Ihr steckt da Eure Nase in Angelegenheiten, von denen Ihr Euch besser ferngehalten hättet. Wie es aussieht, werden die Fische heute Nacht ein üppiges Festmahl bekommen, Hehehe! Los Männer, erledigt sie!~
		IF ~~ THEN DO ~SetGlobal("RiatavinFight","GLOBAL",1)
		Enemy()~ EXIT
	END

END
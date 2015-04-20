fonts
standardPaintBoxButtonFont
	"Answer the font to be used in the eToys environment"
	^ Parameters
		at: #paintBoxButtonFont
		ifAbsent: [Parameters at: #paintBoxButtonFont put: self standardButtonFont]
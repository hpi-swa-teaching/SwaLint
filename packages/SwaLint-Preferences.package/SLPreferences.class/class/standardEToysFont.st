fonts
standardEToysFont
	"Answer the font to be used in the eToys environment"
	^ Parameters
		at: #eToysFont
		ifAbsent: [Parameters at: #eToysFont put: self standardButtonFont]
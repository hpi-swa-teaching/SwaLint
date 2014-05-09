fonts
standardEToysTitleFont
	"Answer the font to be used in the eToys environment"
	^ Parameters
		at: #eToysTitleFont
		ifAbsent: [Parameters at: #eToysTitleFont put: self standardEToysFont]
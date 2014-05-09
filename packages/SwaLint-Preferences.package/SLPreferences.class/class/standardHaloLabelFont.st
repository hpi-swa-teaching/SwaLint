fonts
standardHaloLabelFont
	"Answer the font to be used in the eToys environment"
	^ Parameters
		at: #haloLabelFont
		ifAbsent: [Parameters at: #haloLabelFont put: TextStyle defaultFont]
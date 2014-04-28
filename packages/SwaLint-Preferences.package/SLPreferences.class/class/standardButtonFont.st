fonts
standardButtonFont
	"Answer an attractive font to use for buttons"
	"Answer the font to be used for textual flap tab labels"
	^ Parameters at: #standardButtonFont ifAbsent:
		[Parameters at: #standardButtonFont put: (StrikeFont familyName: #ComicBold size: 16)]
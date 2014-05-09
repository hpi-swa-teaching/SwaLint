themes - small-land
smallLandBigFonts
	"private - change the fonts to small-land's choices"

	"
	Preferences smallLandBigFonts.
	"

	#(
		(setButtonFontTo:			#BitstreamVeraSansMono	15)

		(setListFontTo:				#BitstreamVeraSans		15)
		(setMenuFontTo:			#BitstreamVeraSans		15)
		(setSystemFontTo:			#BitstreamVeraSans		15)

		(setWindowTitleFontTo:	#BitstreamVeraSans		15)

		(setCodeFontTo:				#BitstreamVeraSerif		15)

		(setFlapsFontTo:				#KomikaText					24)
		(setEToysFontTo:			#KomikaText					24)
		(setHaloLabelFontTo:		#KomikaText					24)
		(setEToysTitleFontTo:		#KomikaText					36)
 	)
		do: [:triplet |
			Preferences
				perform: triplet first
				with: (StrikeFont familyName: triplet second pointSize: triplet third)
		].

	BalloonMorph setBalloonFontTo: (StrikeFont familyName: #BitstreamVeraSans pointSize: 15).

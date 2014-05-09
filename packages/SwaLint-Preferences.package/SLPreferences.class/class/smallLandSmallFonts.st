themes - small-land
smallLandSmallFonts
	"private - change the fonts to small-land's choices"

	"
	Preferences smallLandFonts.
	"

	#(
		(setButtonFontTo:			#BitstreamVeraSansMono	12)

		(setListFontTo:				#BitstreamVeraSans		12)
		(setMenuFontTo:			#BitstreamVeraSans		12)
		(setSystemFontTo:			#BitstreamVeraSans		12)

		(setWindowTitleFontTo:	#BitstreamVeraSans		15)

		(setCodeFontTo:				#BitstreamVeraSerif		12)

		(setFlapsFontTo:				#KomikaText					15)
		(setEToysFontTo:			#KomikaText					15)
		(setHaloLabelFontTo:		#KomikaText					15)
		(setEToysTitleFontTo:		#KomikaText					24)
 	)
		do: [:triplet |
			Preferences
				perform: triplet first
				with: (StrikeFont familyName: triplet second pointSize: triplet third)
		].

	BalloonMorph setBalloonFontTo: (StrikeFont familyName: #BitstreamVeraSans pointSize: 12).

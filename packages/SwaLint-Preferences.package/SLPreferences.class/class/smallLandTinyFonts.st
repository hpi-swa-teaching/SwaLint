themes - small-land
smallLandTinyFonts
	"private - change the fonts to small-land's choices"

	"
	Preferences smallLandTinyFonts.
	"

	#(
		(setButtonFontTo:			#AccujenMono	9)

		(setListFontTo:				#Accujen		9)
		(setMenuFontTo:			#Accujen		9)
		(setSystemFontTo:			#Accujen		9)

		(setWindowTitleFontTo:	#Accujen		10)

		(setCodeFontTo:				#Accuny		9)

		(setFlapsFontTo:				#Atlanta		11)
		(setEToysFontTo:			#Atlanta		11)
		(setHaloLabelFontTo:		#Atlanta		11)
		(setEToysTitleFontTo:		#Atlanta		11)
 	)
		do: [:triplet |
			Preferences
				perform: triplet first
				with: (StrikeFont familyName: triplet second pointSize: triplet third)
		].

	BalloonMorph setBalloonFontTo: (StrikeFont familyName: #Accujen pointSize: 9).

fonts
attemptToRestoreClassicFonts
	"If certain fonts formerly used in early versions of Squeak happen to be present in the image, restore them to their corresponding roles.  Not called by any other method -- intended to be invoked via do-it, possibly in a postscript"
	"Preferences attemptToRestoreClassicFonts"

	
	#(	(setButtonFontTo:		NewYork		12)
		(setCodeFontTo:			NewYork		12)
		(setFlapsFontTo:			ComicBold		16)
		(setEToysFontTo:			ComicBold		16)
		(setListFontTo:			NewYork		12)
		(setMenuFontTo:			NewYork		12)
		(setWindowTitleFontTo:	NewYork		15)
		(setSystemFontTo:		NewYork		12)) do:
			[:triplet | | aTextStyle |
				(aTextStyle := TextStyle named: triplet second) ifNotNil:
					[self perform: triplet first with: (aTextStyle fontOfSize: triplet third).
					Transcript cr; show: triplet second, ' installed as ', (triplet first copyFrom: 4 to: triplet first size - 3)]]
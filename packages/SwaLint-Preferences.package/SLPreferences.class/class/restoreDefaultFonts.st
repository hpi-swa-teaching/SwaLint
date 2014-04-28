fonts
restoreDefaultFonts
	"Since this is called from menus, we can take the opportunity to prompt for missing font styles."
	"
	Preferences restoreDefaultFonts
	"

	self setDefaultFonts: #(
		(setSystemFontTo:		Accuny				10)
		(setListFontTo:			Accuny				10)
		(setFlapsFontTo:			Accushi				12)
		(setEToysFontTo:			BitstreamVeraSansBold	9)
		(setPaintBoxButtonFontTo:			BitstreamVeraSansBold	9)
		(setMenuFontTo:			Accuny				10)
		(setWindowTitleFontTo:	BitstreamVeraSansBold	12)
		(setBalloonHelpFontTo:	Accujen				9)
		(setCodeFontTo:			Accuny				10)
		(setButtonFontTo:		BitstreamVeraSansMono				9)
	)

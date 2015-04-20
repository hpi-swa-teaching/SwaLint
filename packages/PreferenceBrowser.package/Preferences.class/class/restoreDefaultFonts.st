fonts
restoreDefaultFonts
	"Since this is called from menus, we can take the opportunity to prompt for missing font styles."
	"
	Preferences restoreDefaultFonts
	"

	self setDefaultFonts: #(
		(setSystemFontTo:			'Bitmap DejaVu Sans'		9)
		(setListFontTo:				'Bitmap DejaVu Sans'		9)
		(setFlapsFontTo:			Accushi						12)
		(setEToysFontTo:			BitstreamVeraSansBold		9)
		(setPaintBoxButtonFontTo:	BitstreamVeraSansBold		9)
		(setMenuFontTo:			'Bitmap DejaVu Sans'		9)
		(setWindowTitleFontTo:		'Bitmap DejaVu Sans Bold'	9)
		(setBalloonHelpFontTo:		'Bitmap DejaVu Sans'		7)
		(setCodeFontTo:			'Bitmap DejaVu Sans'		9)
		(setButtonFontTo:			'Bitmap DejaVu Sans'	7)
	)
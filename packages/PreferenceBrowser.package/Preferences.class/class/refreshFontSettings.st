fonts
refreshFontSettings
	"Try to update all the current font settings to make things consistent."

	self setFlapsFontTo: (self standardFlapFont);
		setEToysFontTo: (self standardEToysFont);
		setWindowTitleFontTo: (self windowTitleFont);
		setListFontTo: (self standardListFont);
		setMenuFontTo: (self standardMenuFont);
		setSystemFontTo: (TextStyle defaultFont);
		setCodeFontTo: (self standardCodeFont);
		setBalloonHelpFontTo: (BalloonMorph balloonFont).

	SystemWindow allSubInstancesDo: [ :s | | rawLabel |
		rawLabel := s getRawLabel.
		rawLabel owner vResizing: #spaceFill.
		rawLabel font: rawLabel font.
		s setLabel: s label.
		s replaceBoxes ].
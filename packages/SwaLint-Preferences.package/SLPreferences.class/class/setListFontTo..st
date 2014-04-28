fonts
setListFontTo: aFont
	"Set the list font as indicated"

	Parameters at: #standardListFont put: aFont.
	ListParagraph initialize.
	Flaps replaceToolsFlap
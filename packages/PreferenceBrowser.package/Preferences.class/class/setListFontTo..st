fonts
setListFontTo: aFont
	"Set the list font as indicated"

	Parameters at: #standardListFont put: aFont.
	Smalltalk at: #ListParagraph ifPresent: [:lp | lp initialize].
	Smalltalk at: #Flaps ifPresent: [:flaps | flaps replaceToolsFlap]
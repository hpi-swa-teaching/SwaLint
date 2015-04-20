fonts
chooseHaloLabelFont
	"present a menu with the possible fonts for label in halo"
	self
		chooseFontWithPrompt: 'Halo Label font...'
		andSendTo: self
		withSelector: #setHaloLabelFontTo:
		highlightSelector: #standardHaloLabelFont
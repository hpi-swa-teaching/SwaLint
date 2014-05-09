fonts
chooseHaloLabelFont
	"present a menu with the possible fonts for label in halo"
	self
		chooseFontWithPrompt: 'halo label font'
		andSendTo: self
		withSelector: #setHaloLabelFontTo:
		highlight: self standardHaloLabelFont
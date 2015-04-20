fonts
chooseEToysTitleFont
	"present a menu with the possible fonts for the eToys"
	self
		chooseFontWithPrompt: 'eToys Title font...' translated
		andSendTo: self
		withSelector: #setEToysTitleFontTo:
		highlightSelector: #standardEToysTitleFont
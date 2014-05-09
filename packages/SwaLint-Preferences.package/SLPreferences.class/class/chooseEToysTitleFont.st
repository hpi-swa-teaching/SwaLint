fonts
chooseEToysTitleFont
	"present a menu with the possible fonts for the eToys"
	self
		chooseFontWithPrompt: 'Choose the eToys title font' translated
		andSendTo: self
		withSelector: #setEToysTitleFontTo:
		highlight: self standardEToysTitleFont
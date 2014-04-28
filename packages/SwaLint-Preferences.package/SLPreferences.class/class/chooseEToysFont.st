fonts
chooseEToysFont
	"present a menu with the possible fonts for the eToys"
	self
		chooseFontWithPrompt: 'Choose the eToys font' translated
		andSendTo: self
		withSelector: #setEToysFontTo:
		highlight: self standardEToysFont
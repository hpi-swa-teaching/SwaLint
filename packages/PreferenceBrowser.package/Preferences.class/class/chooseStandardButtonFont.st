fonts
chooseStandardButtonFont
	self 
		chooseFontWithPrompt: 'Button font...' translated
		andSendTo: self 
		withSelector: #setButtonFontTo: 
		highlightSelector: #standardButtonFont


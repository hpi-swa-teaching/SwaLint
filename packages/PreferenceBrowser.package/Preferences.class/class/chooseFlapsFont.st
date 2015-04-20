fonts
chooseFlapsFont
	self 
		chooseFontWithPrompt: 'Flaps font...' translated
		andSendTo: self 
		withSelector: #setFlapsFontTo: 
		highlightSelector: #standardFlapFont
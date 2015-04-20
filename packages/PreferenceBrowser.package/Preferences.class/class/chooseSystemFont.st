fonts
chooseSystemFont
	self 
		chooseFontWithPrompt: 'Default font...' translated
		andSendTo: self 
		withSelector: #setSystemFontTo: 
		highlightSelector: #standardSystemFont
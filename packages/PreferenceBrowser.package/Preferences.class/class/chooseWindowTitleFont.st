fonts
chooseWindowTitleFont
	self 
		chooseFontWithPrompt: 'Window Title font...' translated
		andSendTo: self 
		withSelector: #setWindowTitleFontTo: 
		highlightSelector: #windowTitleFont
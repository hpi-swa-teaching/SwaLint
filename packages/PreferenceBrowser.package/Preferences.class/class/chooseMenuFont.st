fonts
chooseMenuFont
	self 
		chooseFontWithPrompt: 'Menu font...' translated
		andSendTo: self 
		withSelector: #setMenuFontTo: 
		highlightSelector: #standardMenuFont
fonts
chooseListFont
	self 
		chooseFontWithPrompt: 'List font...' translated
		andSendTo: self 
		withSelector: #setListFontTo: 
		highlightSelector: #standardListFont
fonts
chooseSystemFont
	self chooseFontWithPrompt: 'Choose the default text font' translated andSendTo: self withSelector: #setSystemFontTo: highlight: (TextConstants at: #DefaultTextStyle) defaultFont
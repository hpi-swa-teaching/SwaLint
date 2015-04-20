fonts
chooseCodeFont
	"Not currently sent, but once protocols are sorted out so that we can disriminate on whether a text object being launched is for code or not, will be reincorporated"

	self 
		chooseFontWithPrompt: 'Code font...' translated 
		andSendTo: self 
		withSelector: #setCodeFontTo: 
		highlightSelector: #standardCodeFont.
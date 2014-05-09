fonts
chooseCodeFont
	"Not currently sent, but once protocols are sorted out so that we can disriminate on whether a text object being launched is for code or not, will be reincorporated"

	self chooseFontWithPrompt: 'Choose the font to be used for displaying code' translated andSendTo: self withSelector: #setCodeFontTo: highlight: self standardCodeFont.
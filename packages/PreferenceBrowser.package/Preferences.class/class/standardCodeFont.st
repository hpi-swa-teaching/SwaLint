fonts
standardCodeFont
	"Answer the font to be used in code"

	 ^ Parameters at: #standardCodeFont ifAbsent:
		[Parameters at: #standardCodeFont put: TextStyle defaultFont]
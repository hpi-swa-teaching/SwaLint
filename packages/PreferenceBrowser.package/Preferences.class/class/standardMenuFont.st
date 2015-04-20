fonts
standardMenuFont
	"Answer the font to be used in menus"

	 ^ Parameters at: #standardMenuFont ifAbsent:
		[Parameters at: #standardMenuFont put: TextStyle defaultFont]
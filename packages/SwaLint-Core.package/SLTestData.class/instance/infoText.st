accessing
infoText

	| caption len |
	caption := 'Name: ', self name, String cr.
	len := caption size max: 30.
	^ caption,
		'ID: #', self symbol, String cr, String cr,
		(self description withNoLineLongerThan: len)
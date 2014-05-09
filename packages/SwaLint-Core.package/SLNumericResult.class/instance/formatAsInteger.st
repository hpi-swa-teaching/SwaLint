displaying
formatAsInteger

	self valueFormatRule: [ :v :t | 
		v rounded asString,
		(self formatTreshold: t)].
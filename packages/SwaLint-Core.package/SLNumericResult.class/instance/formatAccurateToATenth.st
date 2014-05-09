displaying
formatAccurateToATenth

	self valueFormatRule: [ :v :t | 
		(v roundTo: 0.1) asString,
		(self formatTreshold: t)].
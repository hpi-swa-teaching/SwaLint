displaying
formatAsPercentage

	self valueFormatRule: [ :v :t | 
		(v * 100) rounded asString, '%',
		(self formatTreshold: t)].
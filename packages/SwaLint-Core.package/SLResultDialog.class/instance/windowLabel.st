accessing
windowLabel

	^ 'SwaLint TestSuite: Results',
		(self environment ifNil: ['']
			ifNotNil: [' (', self environment timeString, ')'])
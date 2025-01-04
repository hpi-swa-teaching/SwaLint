accessing
uniqueTitle

	^ self title ifNil: [self key capitalized]
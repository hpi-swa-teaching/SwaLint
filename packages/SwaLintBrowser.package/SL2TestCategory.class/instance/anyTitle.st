accessing
anyTitle

	^ self title ifNil: [self key capitalized]
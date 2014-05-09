signaling
signal: aString

	^ self messageText 
		ifNil: [super signal: aString]
		ifNotNil: [super signal: aString, self messageText]
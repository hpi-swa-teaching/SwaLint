accessing
printOn: aStream

	aStream nextPutAll: 'a SLTestData(',(self method 
		ifNil: [self symbol
			ifNil: ['(no method)']]),')'
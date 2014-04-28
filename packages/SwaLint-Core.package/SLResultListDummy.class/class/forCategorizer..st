instance creation
forCategorizer: anObject

	^ (anObject class = SLTestData)
		ifTrue: [self forTest: anObject]
		ifFalse: [self forObject: anObject]
initializing
addAll: aSLTestObject to: aCollection

	aCollection add: aSLTestObject.
	aSLTestObject children do: [ :each |
		self addAll: each to: aCollection].
	^ aCollection
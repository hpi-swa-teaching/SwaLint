private
looksLikeBrainClass: aSLClassTestObject

	^ 
		(((aSLClassTestObject methods select: 
				[:method | (method resultOf: #brainMethod) isPositive]) size > 1) and:
		((aSLClassTestObject resultOf: #classLOC) >= #veryHigh))
		or:
		(((aSLClassTestObject methods select: 
				[:method | (method resultOf: #brainMethod) isPositive]) size = 1)and:
		((aSLClassTestObject resultOf: #classLOC) >= (self preference: #LargeClassLOC)) and:
		((aSLClassTestObject resultOf: #weightedMethodCount) >= (self preference: #LargeWeightedMethodCount)))
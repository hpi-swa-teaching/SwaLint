private
looksLikeBrainClass: aSLClassTestObject

	^ 	(((aSLClassTestObject methods count: [ :method | (method resultOf: #brainMethod:) isPositive]) > 1) and:
		[(aSLClassTestObject resultOf: #classLOC:) >= #veryHigh])
	or:
		[((aSLClassTestObject methods count: [ :method | (method resultOf: #brainMethod:) isPositive]) = 1) and:
		[(aSLClassTestObject resultOf: #classLOC:) >= self class LargeClassLOC] and:
		[(aSLClassTestObject resultOf: #weightedMethodCount:) >= self class LargeWeightedMethodCount]]
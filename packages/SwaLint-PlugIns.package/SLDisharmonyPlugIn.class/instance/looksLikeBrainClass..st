private
looksLikeBrainClass: aSLClassTestObject

	^ 	(((aSLClassTestObject methods select: 
				[ :method | (method resultOf: #brainMethod) isPositive ]) size > 1) and:
		[ (aSLClassTestObject resultOf: #classLOC) >= #veryHigh ])
		or:
		(((aSLClassTestObject methods select: 
				[ :method | (method resultOf: #brainMethod) isPositive ]) size = 1)and:
		[ (aSLClassTestObject resultOf: #classLOC) >= 
			(SLPreferences preferenceAt: #LargeClassLOC) preferenceValue ] and:
			[ (aSLClassTestObject resultOf: #weightedMethodCount) >= 
				(SLPreferences preferenceAt: #LargeWeightedMethodCount) preferenceValue ])
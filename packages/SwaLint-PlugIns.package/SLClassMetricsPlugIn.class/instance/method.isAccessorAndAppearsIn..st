private
method: aSLMethodTestObject isAccessorAndAppearsIn: aSet

	^ (aSLMethodTestObject resultOf: #isAccessor:) isPositive
		and: [self method: aSLMethodTestObject appearsIn: aSet]

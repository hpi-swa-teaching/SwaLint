tests
featureEnvy: aSLMethodTestObject

	aSLMethodTestObject ifClassTestChildrenWith: #featureEnvy.
	aSLMethodTestObject shouldBeMethod.
	
	^ self successResult:
		(((aSLMethodTestObject resultOf: #methodATFD) > #few) and:
		[ (aSLMethodTestObject resultOf: #methodLAA) < (1/3) ] and:
		[ (aSLMethodTestObject resultOf: #methodFDP) <= #few ])
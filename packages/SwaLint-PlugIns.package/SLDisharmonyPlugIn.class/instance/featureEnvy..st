tests
featureEnvy: aSLMethodTestObject

	<slTestName: 'Feature Envy' 
	description: 'The detection of Feature Envy means that the detected method accesses a lot of data of other classes. This might be a sign that the method was misplaced and that it should be moved to another class.'>

	aSLMethodTestObject ifClassTestChildrenWith: #featureEnvy:.
	aSLMethodTestObject shouldBeMethod.
	
	^ self successResult:
		(((aSLMethodTestObject resultOf: #methodATFD:) > #few) and:
		[ (aSLMethodTestObject resultOf: #methodLAA:) < (1/3) ] and:
		[ (aSLMethodTestObject resultOf: #methodFDP:) <= #few ])
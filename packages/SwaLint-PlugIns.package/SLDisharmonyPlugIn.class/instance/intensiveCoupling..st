tests
intensiveCoupling: aSLMethodTestObject

	<slTestName: 'Intensive Coupling' 
	description: 'The detection of Intensive Coupling means that the detected method is tied to many other operations, whereby these provider operations are dispersed only into one or a few classes.'>

	aSLMethodTestObject ifClassTestChildrenWith: #intensiveCoupling:.
	aSLMethodTestObject shouldBeMethod.	
	^ self successResult: 
		((self looksLikeIntensiveCoupling: aSLMethodTestObject) and:
		[ (aSLMethodTestObject resultOf: #maxNesting:) > #one ])
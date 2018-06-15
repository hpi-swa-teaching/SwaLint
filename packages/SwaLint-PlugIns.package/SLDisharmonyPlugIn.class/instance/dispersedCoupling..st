tests
dispersedCoupling: aSLMethodTestObject

	<slTestName: 'Dispersed Coupling' 
	description: 'The detection of Dispersed Coupling means that the detected method is tied to many other operations, whereby these provider operations are dispersed among many classes.'>

	aSLMethodTestObject ifClassTestChildrenWith: #dispersedCoupling:.
	aSLMethodTestObject shouldBeMethod.	
	^ self successResult: 
		((self looksLikeDispersedCoupling: aSLMethodTestObject) and:
		[ (aSLMethodTestObject resultOf: #maxNesting:) > #one ])